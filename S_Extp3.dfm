object Frm_Extp3: TFrm_Extp3
  Left = 60
  Top = 154
  Width = 955
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 947
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
        Width = 939
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
        object Label18: TLabel
          Left = 72
          Top = 28
          Width = 51
          Height = 13
          Caption = 'Estoque:'
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
          TabOrder = 2
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
        object RG_TIPO: TRadioGroup
          Left = 388
          Top = 47
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
          TabOrder = 5
          Visible = False
        end
        object cb_estoque: TComboBox
          Left = 136
          Top = 24
          Width = 433
          Height = 21
          ItemHeight = 13
          TabOrder = 1
          Text = 'cb_estoque'
        end
        object rg_serie: TRadioGroup
          Left = 572
          Top = 75
          Width = 273
          Height = 29
          Caption = 'Serie das NFS:'
          Columns = 3
          ItemIndex = 0
          Items.Strings = (
            'S'#233'rie 1'
            'S'#233'rie 2'
            'Todos')
          TabOrder = 6
          Visible = False
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 112
        Width = 939
        Height = 209
        Align = alClient
        DataSource = Src_ExtProd
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
            FieldName = 'EXT_DATHOR'
            Width = 136
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EXT_SALDO_ANT'
            Width = 117
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MOVIMENTO'
            Width = 148
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EXT_QTD'
            Width = 90
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SALDO_ATU'
            Width = 182
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EXT_CODEMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EXT_CHAVE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EXT_CHAVE_ANO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EXT_CODPRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EXT_NOME_COMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EXT_CODUSR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EXT_ORIGEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EXT_TIPOMOV'
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
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 321
        Width = 939
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
        Width = 939
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
        object bbImprimir: TBitBtn
          Left = 136
          Top = 2
          Width = 130
          Height = 36
          Cursor = crHandPoint
          Caption = '&Imprimir'
          TabOrder = 0
          Visible = False
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
    object tsDivergencias: TTabSheet
      Caption = 'Divergencias(MASTER)'
      ImageIndex = 1
      object lbl_qtdreg: TLabel
        Left = 0
        Top = 395
        Width = 939
        Height = 13
        Align = alBottom
        Alignment = taCenter
        Caption = 'lbl_qtdreg'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clTeal
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 939
        Height = 107
        Align = alTop
        TabOrder = 0
        object Label15: TLabel
          Left = 111
          Top = 9
          Width = 49
          Height = 13
          Caption = 'Produto:'
        end
        object Label16: TLabel
          Left = 84
          Top = 51
          Width = 70
          Height = 13
          Caption = 'Data Inicial:'
          Color = clBtnFace
          ParentColor = False
        end
        object Label17: TLabel
          Left = 252
          Top = 51
          Width = 63
          Height = 13
          Caption = 'Data Final:'
        end
        object Label19: TLabel
          Left = 410
          Top = 52
          Width = 51
          Height = 13
          Caption = 'Estoque:'
        end
        object CODPRO: TEdit
          Left = 163
          Top = 6
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
          Left = 224
          Top = 6
          Width = 437
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
          Left = 164
          Top = 29
          Width = 60
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object edt_datini: TMaskEdit
          Left = 163
          Top = 49
          Width = 80
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 3
          Text = '  /  /    '
          OnExit = edt_datiniExit
        end
        object edt_datfin: TMaskEdit
          Left = 320
          Top = 49
          Width = 80
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 4
          Text = '  /  /    '
          OnExit = edt_datfinExit
        end
        object bbDivAtu: TBitBtn
          Left = 86
          Top = 71
          Width = 132
          Height = 32
          Cursor = crHandPoint
          Caption = '&Atualizar'
          TabOrder = 7
          OnClick = bbDivAtuClick
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
        object bbDivSair: TBitBtn
          Left = 700
          Top = 76
          Width = 132
          Height = 28
          Cursor = crHandPoint
          Caption = '&Sair'
          TabOrder = 8
          OnClick = bbDivSairClick
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
        object rg_tipoext: TRadioGroup
          Left = 668
          Top = 1
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
          TabOrder = 5
          Visible = False
        end
        object rg_divergencias: TRadioGroup
          Left = 788
          Top = 2
          Width = 116
          Height = 63
          Caption = 'Listar'
          Ctl3D = False
          ItemIndex = 0
          Items.Strings = (
            'Divergentes'
            'Corretos'
            'Todos')
          ParentCtl3D = False
          TabOrder = 6
        end
        object cb_estoque2: TComboBox
          Left = 465
          Top = 48
          Width = 199
          Height = 21
          ItemHeight = 0
          TabOrder = 9
          Text = 'cb_estoque'
        end
        object Button1: TButton
          Left = 376
          Top = 80
          Width = 75
          Height = 25
          Caption = '&Imprimir'
          TabOrder = 10
          OnClick = Button1Click
        end
      end
      object DBGrid_div: TDBGrid
        Left = 0
        Top = 107
        Width = 939
        Height = 288
        Align = alClient
        DataSource = src_div
        ReadOnly = True
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDblClick = DBGrid_divDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'EXT_CODPRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME'
            Width = 369
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDUND'
            Width = 38
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SALDO_INI'
            Width = 88
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_ENT'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTD_SAI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SALDO_FINAL'
            Width = 74
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SALDO_CALC'
            Visible = True
          end>
      end
    end
    object tsDetDivergencias: TTabSheet
      Caption = 'Detalhamento das Divergencias'
      ImageIndex = 2
      OnExit = tsDetDivergenciasExit
      object Panel5: TPanel
        Left = 0
        Top = 372
        Width = 931
        Height = 29
        Align = alBottom
        TabOrder = 0
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 931
        Height = 35
        Align = alTop
        TabOrder = 1
        object DBEdit1: TDBEdit
          Left = 7
          Top = 16
          Width = 88
          Height = 19
          Ctl3D = False
          DataField = 'EXT_CODPRO'
          DataSource = src_div
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object StaticText1: TStaticText
          Left = 7
          Top = 0
          Width = 88
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'C'#243'digo'
          TabOrder = 1
        end
        object StaticText2: TStaticText
          Left = 93
          Top = 0
          Width = 301
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Descri'#231#227'o'
          TabOrder = 2
        end
        object DBEdit2: TDBEdit
          Left = 93
          Top = 16
          Width = 301
          Height = 19
          Ctl3D = False
          DataField = 'PDNOME'
          DataSource = src_div
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object StaticText3: TStaticText
          Left = 393
          Top = 0
          Width = 35
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'UND'
          TabOrder = 4
        end
        object DBEdit3: TDBEdit
          Left = 393
          Top = 16
          Width = 35
          Height = 19
          Ctl3D = False
          DataField = 'PDUND'
          DataSource = src_div
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
        object StaticText4: TStaticText
          Left = 423
          Top = 0
          Width = 88
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Saldo Inicial'
          TabOrder = 6
        end
        object DBEdit4: TDBEdit
          Left = 423
          Top = 16
          Width = 88
          Height = 19
          Ctl3D = False
          DataField = 'SALDO_INI'
          DataSource = src_div
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
        end
        object StaticText5: TStaticText
          Left = 511
          Top = 0
          Width = 88
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Entradas'
          TabOrder = 8
        end
        object DBEdit5: TDBEdit
          Left = 511
          Top = 16
          Width = 88
          Height = 19
          Ctl3D = False
          DataField = 'QTD_ENT'
          DataSource = src_div
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 9
        end
        object StaticText6: TStaticText
          Left = 599
          Top = 0
          Width = 88
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Saidas'
          TabOrder = 10
        end
        object DBEdit6: TDBEdit
          Left = 599
          Top = 16
          Width = 88
          Height = 19
          Ctl3D = False
          DataField = 'QTD_SAI'
          DataSource = src_div
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 11
        end
        object StaticText7: TStaticText
          Left = 687
          Top = 0
          Width = 88
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Saldo Final'
          TabOrder = 12
        end
        object DBEdit7: TDBEdit
          Left = 687
          Top = 16
          Width = 88
          Height = 19
          Ctl3D = False
          DataField = 'SALDO_FINAL'
          DataSource = src_div
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 13
        end
        object StaticText8: TStaticText
          Left = 775
          Top = 0
          Width = 98
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Saldo Esperado'
          TabOrder = 14
        end
        object DBEdit8: TDBEdit
          Left = 775
          Top = 16
          Width = 98
          Height = 19
          Ctl3D = False
          DataField = 'SALDO_CALC'
          DataSource = src_div
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 15
        end
      end
      object gb_extratos: TGroupBox
        Left = 0
        Top = 35
        Width = 465
        Height = 337
        Align = alLeft
        Caption = 'Itens da Tabela de Extrato:'
        TabOrder = 2
        object DBText1: TDBText
          Left = 2
          Top = 318
          Width = 461
          Height = 17
          Align = alBottom
          Alignment = taCenter
          Color = 15269887
          DataField = 'EXT_ORIGEM'
          DataSource = src_cadest_ext
          ParentColor = False
        end
        object DBGrid_cadest_ext: TDBGrid
          Left = 2
          Top = 15
          Width = 461
          Height = 303
          Align = alClient
          DataSource = src_cadest_ext
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
              FieldName = 'EXT_DATHOR'
              Width = 131
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EXT_SALDO_ANT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTD_ENT'
              Width = 63
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTD_SAI'
              Width = 57
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SALDO_ATU'
              Width = 80
              Visible = True
            end>
        end
      end
      object GroupBox1: TGroupBox
        Left = 465
        Top = 35
        Width = 466
        Height = 337
        Align = alClient
        Caption = 'Itens triggers(registros automaticos sobre movimenta'#231#245'es):'
        TabOrder = 3
        object DBText2: TDBText
          Left = 2
          Top = 318
          Width = 462
          Height = 17
          Align = alBottom
          Alignment = taCenter
          Color = 15269887
          DataField = 'MCECOMPEVE'
          DataSource = src_cadest_mov
          ParentColor = False
        end
        object DBGrid_cadest_mov: TDBGrid
          Left = 2
          Top = 15
          Width = 462
          Height = 303
          Align = alClient
          DataSource = src_cadest_mov
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
              FieldName = 'MCEDATHOR'
              Width = 126
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MCESALDO_ANT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTD_ENT'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'QTD_SAI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'MCESALDO_ATU'
              Visible = True
            end>
        end
      end
    end
    object tsImpressao: TTabSheet
      Caption = 'tsImpressao'
      ImageIndex = 3
      TabVisible = False
      object RLReport1: TRLReport
        Left = 24
        Top = 24
        Width = 794
        Height = 1123
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        DataSource = src_div
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        ShowProgress = False
        object RLBand1: TRLBand
          Left = 39
          Top = 39
          Width = 716
          Height = 91
          BandType = btTitle
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLLabel1: TRLLabel
            Left = 264
            Top = 32
            Width = 150
            Height = 16
            Caption = 'Relatorio de Divergencias'
          end
          object rl_codigo: TRLAngleLabel
            Left = 1
            Top = 72
            Width = 85
            Height = 18
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = True
            Borders.DrawRight = True
            Borders.DrawBottom = False
            Caption = 'CODIGO'
          end
          object rl_nome: TRLAngleLabel
            Left = 86
            Top = 72
            Width = 383
            Height = 18
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'NOME'
          end
          object rl_EstPrev: TRLAngleLabel
            Left = 469
            Top = 72
            Width = 87
            Height = 18
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Estoque Prev.'
          end
          object rl_EstReal: TRLAngleLabel
            Left = 556
            Top = 72
            Width = 84
            Height = 18
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Estoque Real'
          end
          object rl_Div: TRLAngleLabel
            Left = 640
            Top = 72
            Width = 72
            Height = 18
            Borders.Sides = sdCustom
            Borders.DrawLeft = True
            Borders.DrawTop = True
            Borders.DrawRight = False
            Borders.DrawBottom = False
            Caption = 'Divergencia'
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 654
            Top = 1
            Width = 60
            Height = 16
            Alignment = taRightJustify
            Info = itFullDate
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 587
            Top = 19
            Width = 87
            Height = 16
            Alignment = taRightJustify
            Info = itPageNumber
          end
          object RLLabel2: TRLLabel
            Left = 674
            Top = 19
            Width = 8
            Height = 16
            Caption = '/'
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 682
            Top = 19
            Width = 112
            Height = 16
            Info = itLastPageNumber
          end
          object RLDBText6: TRLDBText
            Left = 2
            Top = 1
            Width = 81
            Height = 16
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
          end
        end
        object RLBand2: TRLBand
          Left = 39
          Top = 130
          Width = 716
          Height = 17
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = True
          object RLDBText1: TRLDBText
            Left = 1
            Top = 0
            Width = 85
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'EXT_CODPRO'
            DataSource = src_div
            Holder = rl_codigo
          end
          object RLDBText2: TRLDBText
            Left = 86
            Top = 0
            Width = 383
            Height = 16
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'PDNOME'
            DataSource = src_div
            Holder = rl_nome
          end
          object RLDBText3: TRLDBText
            Left = 469
            Top = 0
            Width = 87
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'SALDO_CALC'
            DataSource = src_div
            Holder = rl_EstPrev
          end
          object RLDBText4: TRLDBText
            Left = 556
            Top = 0
            Width = 84
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Borders.Sides = sdCustom
            Borders.DrawLeft = False
            Borders.DrawTop = False
            Borders.DrawRight = True
            Borders.DrawBottom = False
            DataField = 'SALDO_FINAL'
            DataSource = src_div
            Holder = rl_EstReal
          end
          object RLDBText5: TRLDBText
            Left = 640
            Top = 0
            Width = 72
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'DIF'
            DataSource = src_div
            Holder = rl_Div
          end
        end
      end
    end
  end
  object Src_ExtProd: TDataSource
    DataSet = Query_ExtProd
    Left = 580
    Top = 16
  end
  object Query_ExtProd: TADOQuery
    Connection = DM1_ADO.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'Select EXT_CODEMP,EXT_CHAVE,EXT_CHAVE_ANO,EXT_CODPRO'
      
        '                     ,EXT_DATHOR,EXT_NOME_COMP,EXT_CODUSR,EXT_OR' +
        'IGEM'
      '                     ,EXT_TIPOMOV,PDNOME,PDUND'
      ',EXT_SALDO_ANT,EXT_QTD,                     '
      'EXT_SALDO_ANT +                     '
      
        'DECODE(SUBSTR(EXT_TIPOMOV,1,1),'#39'E'#39',EXT_QTD,EXT_QTD*-1) AS SALDO_' +
        'ATU,                     '
      'case when EXT_TIPOMOV='#39'EN'#39' then '#39'Entrada Normal '#39
      '     when EXT_TIPOMOV='#39'EC'#39' then '#39'Entrada Consignado '#39'   '
      '     when EXT_TIPOMOV='#39'ET'#39' then '#39'Entrada Terceiros '#39'   '
      '     when EXT_TIPOMOV='#39'ER'#39' then '#39'Entrada Revenda '#39' '
      '     when EXT_TIPOMOV='#39'SN'#39' then '#39'Saida Normal '#39
      '     when EXT_TIPOMOV='#39'SC'#39' then '#39'Saida Consignado '#39'   '
      '     when EXT_TIPOMOV='#39'ST'#39' then '#39'Saida Terceiros '#39'   '
      '     when EXT_TIPOMOV='#39'SR'#39' then '#39'Saida Revenda '#39' '
      'else '#39'desconhecido'#39' end as movimento'
      '                     '
      '                      from CADEST_EXT,CADPRO'
      '                     where PDCODPRO=EXT_CODPRO')
    Left = 628
    Top = 24
    object Query_ExtProdEXT_DATHOR: TDateTimeField
      DisplayLabel = 'Data / Hora '
      FieldName = 'EXT_DATHOR'
    end
    object Query_ExtProdEXT_SALDO_ANT: TFloatField
      DisplayLabel = 'Estoque Anterior'
      FieldName = 'EXT_SALDO_ANT'
    end
    object Query_ExtProdMOVIMENTO: TStringField
      DisplayLabel = 'Movimento'
      FieldName = 'MOVIMENTO'
      ReadOnly = True
      Size = 19
    end
    object Query_ExtProdEXT_QTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'EXT_QTD'
    end
    object Query_ExtProdSALDO_ATU: TBCDField
      DisplayLabel = 'Estoque Atual'
      FieldName = 'SALDO_ATU'
      ReadOnly = True
      Precision = 32
      Size = 0
    end
    object Query_ExtProdEXT_CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'EXT_CODEMP'
    end
    object Query_ExtProdEXT_CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'EXT_CHAVE'
    end
    object Query_ExtProdEXT_CHAVE_ANO: TFloatField
      DisplayLabel = 'Chave Ano'
      FieldName = 'EXT_CHAVE_ANO'
    end
    object Query_ExtProdEXT_CODPRO: TFloatField
      DisplayLabel = 'c'#243'digo Prod'
      FieldName = 'EXT_CODPRO'
    end
    object Query_ExtProdEXT_NOME_COMP: TStringField
      DisplayLabel = 'Nome Computador'
      FieldName = 'EXT_NOME_COMP'
      Size = 150
    end
    object Query_ExtProdEXT_CODUSR: TFloatField
      DisplayLabel = 'C'#243'd.Usu'#225'rio'
      FieldName = 'EXT_CODUSR'
    end
    object Query_ExtProdEXT_ORIGEM: TStringField
      DisplayLabel = 'Origem'
      FieldName = 'EXT_ORIGEM'
      Size = 200
    end
    object Query_ExtProdEXT_TIPOMOV: TStringField
      DisplayLabel = 'Tipo Movimento'
      FieldName = 'EXT_TIPOMOV'
      Size = 2
    end
    object Query_ExtProdPDNOME: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldName = 'PDNOME'
      Size = 120
    end
    object Query_ExtProdPDUND: TStringField
      DisplayLabel = 'UND'
      FieldName = 'PDUND'
      Size = 3
    end
  end
  object Query_div: TQuery
    OnCalcFields = Query_divCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT SUM(SALDO_INI) AS SALDO_INI'
      ',SUM(SALDO_FINAL) AS SALDO_FINAL'
      ',SUM(SALDO_INI+EXT_QTD) AS SALDO_CALC'
      ',SUM(EXT_QTD) AS EXT_QTD'
      ',SUM(EXT_QTD) AS QTD_ENT'
      ',SUM(EXT_QTD) AS QTD_SAI'
      ',EXT_CODPRO'
      ',PDNOME,PDUND'
      'FROM'
      '('
      'SELECT decode (lag(EXT_CODPRO,1) '
      
        'over (ORDER BY EXT_CODPRO,ext_dathor,ext_chave),EXT_CODPRO,0,EXT' +
        '_SALDO_ANT) SALDO_INI,'
      ''
      'decode (lead(EXT_CODPRO,1) '
      
        'over (ORDER BY EXT_CODPRO,ext_dathor,ext_chave),EXT_CODPRO,0,EXT' +
        '_SALDO_ANT+EXT_QTD) SALDO_FINAL,'
      ''
      ''
      'EXT_CODPRO,EXT_QTD,EXT_SALDO_ANT,PDNOME,PDUND from '
      '('
      'SELECT EXT_CODPRO,EXT_SALDO_ANT,EXT_DATHOR,EXT_CHAVE,'
      'DECODE(EXT_TIPOMOV,'#39'SN'#39',EXT_QTD*-1,EXT_QTD) AS '
      'EXT_QTD,PDNOME,PDUND FROM CADEST_EXT,CADPRO'
      'WHERE PDCODPRO=EXT_CODPRO'
      'AND EXT_DATHOR<'#39'18/04/2012'#39
      'ORDER BY EXT_CODPRO,EXT_DATHOR,EXT_CHAVE'
      ') tab01'
      ') TAB02'
      'HAVING'
      ''
      '(SUM(SALDO_FINAL)<>SUM(SALDO_INI+EXT_QTD))'
      'GROUP BY EXT_CODPRO,PDNOME,PDUND'
      '')
    Left = 628
    Top = 208
    object Query_divSALDO_INI: TFloatField
      DisplayLabel = 'Saldo Inicial'
      FieldName = 'SALDO_INI'
    end
    object Query_divSALDO_FINAL: TFloatField
      DisplayLabel = 'Saldo Final'
      FieldName = 'SALDO_FINAL'
    end
    object Query_divSALDO_CALC: TFloatField
      DisplayLabel = 'Saldo Esperado'
      FieldName = 'SALDO_CALC'
    end
    object Query_divEXT_QTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'EXT_QTD'
    end
    object Query_divEXT_CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'EXT_CODPRO'
    end
    object Query_divPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Size = 120
    end
    object Query_divPDUND: TStringField
      DisplayLabel = 'UND'
      FieldName = 'PDUND'
      Size = 3
    end
    object Query_divQTD_ENT: TFloatField
      DisplayLabel = 'Entradas'
      FieldName = 'QTD_ENT'
    end
    object Query_divQTD_SAI: TFloatField
      DisplayLabel = 'Saidas'
      FieldName = 'QTD_SAI'
    end
    object Query_divDIF: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DIF'
      Calculated = True
    end
  end
  object src_div: TDataSource
    DataSet = Query_div
    Left = 660
    Top = 208
  end
  object qr_cadest_ext: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select ext_codpro,decode(EXT_TIPOMOV,'#39'SN'#39',EXT_QTD,0) as QTD_SAI'
      ',decode(EXT_TIPOMOV,'#39'SN'#39',0,EXT_QTD) as QTD_ENT'
      ',EXT_DATHOR,EXT_CODUSR,EXT_ORIGEM,NOMUSR'
      
        ',EXT_SALDO_ANT,EXT_SALDO_ANT+decode(EXT_TIPOMOV,'#39'SN'#39',EXT_QTD*-1,' +
        'EXT_QTD) as SALDO_ATU'
      'from CADEST_EXT,CADUSR'
      'where CODUSR(+)=EXT_CODUSR')
    Left = 628
    Top = 248
    object qr_cadest_extEXT_CODPRO: TFloatField
      FieldName = 'EXT_CODPRO'
    end
    object qr_cadest_extQTD_SAI: TFloatField
      DisplayLabel = 'Saidas'
      FieldName = 'QTD_SAI'
    end
    object qr_cadest_extQTD_ENT: TFloatField
      DisplayLabel = 'Entradas'
      FieldName = 'QTD_ENT'
    end
    object qr_cadest_extEXT_DATHOR: TDateTimeField
      DisplayLabel = 'Data/Hora'
      FieldName = 'EXT_DATHOR'
    end
    object qr_cadest_extEXT_CODUSR: TFloatField
      DisplayLabel = 'C'#243'd.Usuario'
      FieldName = 'EXT_CODUSR'
    end
    object qr_cadest_extEXT_ORIGEM: TStringField
      DisplayLabel = 'Origem'
      FieldName = 'EXT_ORIGEM'
      Size = 200
    end
    object qr_cadest_extNOMUSR: TStringField
      DisplayLabel = 'Nome Usuario'
      FieldName = 'NOMUSR'
      Size = 40
    end
    object qr_cadest_extEXT_SALDO_ANT: TFloatField
      DisplayLabel = 'Saldo Anterior'
      FieldName = 'EXT_SALDO_ANT'
    end
    object qr_cadest_extSALDO_ATU: TFloatField
      DisplayLabel = 'Saldo Atual'
      FieldName = 'SALDO_ATU'
    end
  end
  object src_cadest_ext: TDataSource
    DataSet = qr_cadest_ext
    Left = 660
    Top = 248
  end
  object qr_cadest_mov: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select MCEcodpro'
      
        ',case when mcesaldo_ant>MCESALDO_ATU THEN (MCESALDO_ANT-MCESALDO' +
        '_ATU) ELSE 0 END as QTD_SAI'
      
        ',case when mcesaldo_ant>MCESALDO_ATU THEN 0 ELSE (MCESALDO_ATU-M' +
        'CESALDO_ANT) END as QTD_ENT'
      ',MCEDATHOR,MCECOMPEVE'
      ',MCESALDO_ANT,MCESALDO_ATU'
      'from CADEST_MOV')
    Left = 628
    Top = 304
    object qr_cadest_movMCECODPRO: TFloatField
      DisplayLabel = 'c'#243'digo'
      FieldName = 'MCECODPRO'
    end
    object qr_cadest_movQTD_SAI: TFloatField
      DisplayLabel = 'Saidas'
      FieldName = 'QTD_SAI'
    end
    object qr_cadest_movQTD_ENT: TFloatField
      DisplayLabel = 'entradas'
      FieldName = 'QTD_ENT'
    end
    object qr_cadest_movMCEDATHOR: TDateTimeField
      DisplayLabel = 'Data/Hora'
      FieldName = 'MCEDATHOR'
    end
    object qr_cadest_movMCECOMPEVE: TStringField
      DisplayLabel = 'historico'
      FieldName = 'MCECOMPEVE'
      Size = 150
    end
    object qr_cadest_movMCESALDO_ANT: TFloatField
      DisplayLabel = 'Saldo Anterior'
      FieldName = 'MCESALDO_ANT'
    end
    object qr_cadest_movMCESALDO_ATU: TFloatField
      DisplayLabel = 'Saldo Atual'
      FieldName = 'MCESALDO_ATU'
    end
  end
  object src_cadest_mov: TDataSource
    DataSet = qr_cadest_mov
    Left = 660
    Top = 304
  end
end
