object Frm_Compras_Orc_Precos: TFrm_Compras_Orc_Precos
  Left = 71
  Top = 124
  Width = 1130
  Height = 548
  Caption = 'Pre'#231'os do Pedido de Compra'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1122
    Height = 517
    ActivePage = tsConfiguracao
    Align = alClient
    TabOrder = 0
    object tsGeral: TTabSheet
      Caption = 'Geral'
      object lbl_pcopedcpr: TLabel
        Left = 0
        Top = 0
        Width = 1114
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'Pre'#231'os do Pedido de Compra '
        Color = 16768991
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Panel3: TPanel
        Left = 0
        Top = 16
        Width = 1114
        Height = 221
        Align = alClient
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 1
          Top = 1
          Width = 803
          Height = 219
          Align = alClient
          Caption = 'Itens do Pedido:'
          TabOrder = 0
          object DBGrid_itens: TDBGrid
            Left = 2
            Top = 15
            Width = 799
            Height = 202
            Align = alClient
            DataSource = src_cadpro
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnColExit = DBGrid_itensColExit
            OnDrawColumnCell = DBGrid_itensDrawColumnCell
            OnKeyPress = DBGrid_itensKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'ALTERAR'
                Width = 54
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'CODPRO'
                Width = 59
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ITEM'
                Width = 37
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'NOMPRO'
                Width = 226
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'UND'
                Width = 28
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PCOPED'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRECO_ORIGEM'
                Width = 132
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRECO_ATU'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRECO_NOV'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PCOCUS_ATU'
                Width = 107
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PCOCUS_NOV'
                Width = 72
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PCOCPR_ATU'
                Width = 111
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PCOCPR_NOV'
                Width = 81
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DTULTALT'
                Width = 90
                Visible = True
              end>
          end
          object DBCheckBox1: TDBCheckBox
            Left = 592
            Top = 96
            Width = 97
            Height = 17
            Caption = 'DBCheckBox1'
            DataField = 'ALTERAR'
            DataSource = src_cadpro
            TabOrder = 0
            ValueChecked = '0'
            ValueUnchecked = '1'
            Visible = False
            OnClick = DBCheckBox1Click
            OnExit = DBCheckBox1Exit
          end
        end
        object GroupBox4: TGroupBox
          Left = 804
          Top = 1
          Width = 309
          Height = 219
          Align = alRight
          Caption = 'Resumo:'
          TabOrder = 1
          object StaticText1: TStaticText
            Left = 5
            Top = 16
            Width = 108
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Tipo'
            Color = 16760767
            ParentColor = False
            TabOrder = 0
          end
          object StaticText2: TStaticText
            Left = 112
            Top = 16
            Width = 76
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Calculado'
            Color = 16760767
            ParentColor = False
            TabOrder = 1
          end
          object StaticText4: TStaticText
            Left = 187
            Top = 16
            Width = 76
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Digitado'
            Color = 16760767
            ParentColor = False
            TabOrder = 2
          end
          object StaticText9: TStaticText
            Left = 262
            Top = 16
            Width = 30
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Atu'
            Color = 16760767
            ParentColor = False
            TabOrder = 3
          end
          object StaticText10: TStaticText
            Left = 5
            Top = 32
            Width = 108
            Height = 19
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Pre'#231'o de Compra:'
            Color = 16760767
            ParentColor = False
            TabOrder = 4
          end
          object DBE_PCOCPR_NOV: TDBEdit
            Left = 112
            Top = 32
            Width = 76
            Height = 19
            Ctl3D = False
            DataField = 'PCOCPR_NOV'
            DataSource = src_cadpro
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 5
          end
          object DBE_PCOCPR_DIG: TDBEdit
            Left = 187
            Top = 32
            Width = 76
            Height = 19
            Ctl3D = False
            DataField = 'PCOCPR_DIG'
            DataSource = src_cadpro
            ParentCtl3D = False
            TabOrder = 6
            OnKeyPress = DBE_PCOCPR_DIGKeyPress
          end
          object DBCB_PCOCPR_DIG_USA: TDBCheckBox
            Left = 268
            Top = 34
            Width = 19
            Height = 17
            Caption = 'DBCB_PCOCPR_DIG_USA'
            DataField = 'PCOCPR_DIG_USA'
            DataSource = src_cadpro
            TabOrder = 7
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object StaticText11: TStaticText
            Left = 5
            Top = 50
            Width = 108
            Height = 19
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Pre'#231'o de Custo:'
            Color = 16760767
            ParentColor = False
            TabOrder = 8
          end
          object DBE_PCOCUS_NOV: TDBEdit
            Left = 112
            Top = 50
            Width = 76
            Height = 19
            Ctl3D = False
            DataField = 'PCOCUS_NOV'
            DataSource = src_cadpro
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 9
          end
          object DBE_PCOCUS_DIG: TDBEdit
            Left = 187
            Top = 50
            Width = 76
            Height = 19
            Ctl3D = False
            DataField = 'PCOCUS_DIG'
            DataSource = src_cadpro
            ParentCtl3D = False
            TabOrder = 10
            OnKeyPress = DBE_PCOCPR_DIGKeyPress
          end
          object DBCB_PCOCUS_DIG_USA: TDBCheckBox
            Left = 268
            Top = 52
            Width = 19
            Height = 17
            Caption = 'DBCB_PRECO01_DIG_USA'
            DataField = 'PCOCUS_DIG_USA'
            DataSource = src_cadpro
            TabOrder = 11
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object StaticText12: TStaticText
            Left = 5
            Top = 68
            Width = 108
            Height = 19
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSingle
            Caption = 'Pre'#231'o de Venda:'
            Color = 16760767
            ParentColor = False
            TabOrder = 12
          end
          object DBE_PRECO_NOV: TDBEdit
            Left = 112
            Top = 68
            Width = 76
            Height = 19
            Ctl3D = False
            DataField = 'PRECO_NOV'
            DataSource = src_cadpro
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 13
          end
          object DBE_PRECO01_DIG: TDBEdit
            Left = 187
            Top = 68
            Width = 76
            Height = 19
            Ctl3D = False
            DataField = 'PRECO01_DIG'
            DataSource = src_cadpro
            ParentCtl3D = False
            TabOrder = 14
            OnExit = DBE_PRECO01_DIGExit
            OnKeyPress = DBE_PCOCPR_DIGKeyPress
          end
          object DBCB_PRECO01_DIG_USA: TDBCheckBox
            Left = 268
            Top = 70
            Width = 19
            Height = 17
            Caption = 'DBCB_PRECO01_DIG_USA'
            DataField = 'PRECO01_DIG_USA'
            DataSource = src_cadpro
            TabOrder = 15
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object cb_todos: TCheckBox
            Left = 226
            Top = 92
            Width = 54
            Height = 17
            Alignment = taLeftJustify
            Caption = 'Todos'
            TabOrder = 16
            OnClick = cb_todosClick
          end
        end
      end
      object Panel_precos: TPanel
        Left = 0
        Top = 237
        Width = 1114
        Height = 167
        Align = alBottom
        TabOrder = 1
        object gb_preco_compra: TGroupBox
          Left = 1
          Top = 1
          Width = 385
          Height = 165
          Align = alLeft
          Caption = 'Composi'#231#227'o do Pre'#231'o de Compra:'
          Color = 15132415
          ParentColor = False
          TabOrder = 0
          object DBE_COMPRA: TDBText
            Left = 2
            Top = 146
            Width = 381
            Height = 17
            Align = alBottom
            Alignment = taCenter
            Color = 16744576
            DataField = 'PCOCPR_NOV'
            DataSource = src_cadpro
            ParentColor = False
          end
          object Label6: TLabel
            Left = 168
            Top = 120
            Width = 126
            Height = 13
            Caption = 'Pre'#231'o Origem(compra)'
          end
          object DBGrid_compra: TDBGrid
            Left = 2
            Top = 15
            Width = 381
            Height = 131
            Align = alClient
            DataSource = src_compra
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = True
            ParentFont = False
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
                FieldName = 'CODIGO'
                Title.Alignment = taCenter
                Width = 32
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Alignment = taCenter
                Width = 80
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERC'
                Title.Alignment = taCenter
                Width = 58
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Alignment = taCenter
                Width = 74
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ACUM'
                Title.Alignment = taCenter
                Visible = True
              end>
          end
        end
        object gb_preco_custo: TGroupBox
          Left = 386
          Top = 1
          Width = 386
          Height = 165
          Align = alClient
          Caption = 'Composi'#231#227'o do Pre'#231'o de Custo:'
          Color = 14548957
          ParentColor = False
          TabOrder = 1
          object dbe_custo: TDBText
            Left = 2
            Top = 146
            Width = 382
            Height = 17
            Align = alBottom
            Alignment = taCenter
            Color = 16744576
            DataField = 'PCOCUS_NOV'
            DataSource = src_cadpro
            ParentColor = False
          end
          object DBGrid_custo: TDBGrid
            Left = 2
            Top = 15
            Width = 382
            Height = 131
            Align = alClient
            DataSource = src_custo
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = True
            ParentFont = False
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
                FieldName = 'CODIGO'
                Title.Alignment = taCenter
                Width = 32
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Alignment = taCenter
                Width = 81
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERC'
                Title.Alignment = taCenter
                Width = 63
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Alignment = taCenter
                Width = 73
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ACUM'
                Title.Alignment = taCenter
                Visible = True
              end>
          end
        end
        object GroupBox2: TGroupBox
          Left = 772
          Top = 1
          Width = 341
          Height = 165
          Align = alRight
          Caption = 'Composi'#231#227'o do Pre'#231'o de Venda 01:'
          Color = 16766421
          ParentColor = False
          TabOrder = 2
          object DBE_VENDA: TDBText
            Left = 2
            Top = 146
            Width = 337
            Height = 17
            Align = alBottom
            Alignment = taCenter
            Color = 16744576
            DataField = 'PRECO_NOV'
            DataSource = src_cadpro
            ParentColor = False
          end
          object DBGrid_venda: TDBGrid
            Left = 2
            Top = 15
            Width = 337
            Height = 131
            Align = alClient
            DataSource = src_venda
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentColor = True
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            Columns = <
              item
                Expanded = False
                FieldName = 'CODIGO'
                Title.Alignment = taCenter
                Width = 32
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DESCRICAO'
                Title.Alignment = taCenter
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PERC'
                Title.Alignment = taCenter
                Width = 58
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'VALOR'
                Title.Alignment = taCenter
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ACUM'
                Title.Alignment = taCenter
                Visible = True
              end>
          end
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 404
        Width = 1114
        Height = 44
        Align = alBottom
        TabOrder = 2
        object GroupBox3: TGroupBox
          Left = 1
          Top = 1
          Width = 264
          Height = 42
          Align = alLeft
          Caption = 'Atualizar os Seguintes Pre'#231'os:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object DBCheckBox2: TDBCheckBox
            Left = 7
            Top = 18
            Width = 66
            Height = 17
            Caption = 'Pre'#231'o 0&1'
            DataField = 'ATU_PCO01'
            DataSource = src_cadpro
            TabOrder = 0
            ValueChecked = '0'
            ValueUnchecked = '1'
          end
          object DBCheckBox3: TDBCheckBox
            Left = 79
            Top = 19
            Width = 66
            Height = 17
            Caption = 'Pre'#231'o 0&2'
            DataField = 'ATU_PCO02'
            DataSource = src_cadpro
            TabOrder = 1
            ValueChecked = '0'
            ValueUnchecked = '1'
          end
          object DBCheckBox4: TDBCheckBox
            Left = 147
            Top = 18
            Width = 66
            Height = 17
            Caption = 'Pre'#231'o 0&3'
            DataField = 'ATU_PCO03'
            DataSource = src_cadpro
            TabOrder = 2
            ValueChecked = '0'
            ValueUnchecked = '1'
          end
        end
        object StaticText5: TStaticText
          Left = 271
          Top = 3
          Width = 150
          Height = 17
          BorderStyle = sbsSunken
          Caption = 'Pre'#231'o de Venda 01 Atual:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
        end
        object StaticText7: TStaticText
          Left = 651
          Top = 4
          Width = 11
          Height = 17
          BorderStyle = sbsSunken
          Caption = '+'
          TabOrder = 2
        end
        object StaticText6: TStaticText
          Left = 725
          Top = 6
          Width = 70
          Height = 17
          BorderStyle = sbsSunken
          Caption = '= Preco 02:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
        end
        object StaticText8: TStaticText
          Left = 651
          Top = 24
          Width = 11
          Height = 17
          BorderStyle = sbsSunken
          Caption = '+'
          TabOrder = 4
        end
        object StaticText3: TStaticText
          Left = 725
          Top = 26
          Width = 70
          Height = 17
          BorderStyle = sbsSunken
          Caption = '= Preco 03:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
        end
        object DBE_PCOVDA01: TDBEdit
          Left = 427
          Top = 3
          Width = 121
          Height = 19
          Ctl3D = False
          DataField = 'PRECO_ATU'
          DataSource = src_cadpro
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
        end
        object DBE_PCOVDA02_NOV: TDBEdit
          Left = 797
          Top = 5
          Width = 121
          Height = 19
          Ctl3D = False
          DataField = 'PCOVDA02_NOV'
          DataSource = src_cadpro
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
        end
        object DBE_PCOVDA03_NOV: TDBEdit
          Left = 797
          Top = 23
          Width = 121
          Height = 19
          Ctl3D = False
          DataField = 'PCOVDA03_NOV'
          DataSource = src_cadpro
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit3: TDBEdit
          Left = 661
          Top = 4
          Width = 41
          Height = 19
          Ctl3D = False
          DataField = 'CUACPCO2'
          DataSource = src_cadpro
          ParentCtl3D = False
          TabOrder = 9
        end
        object DBEdit4: TDBEdit
          Left = 663
          Top = 22
          Width = 41
          Height = 19
          Ctl3D = False
          DataField = 'CUACPCO3'
          DataSource = src_cadpro
          ParentCtl3D = False
          TabOrder = 10
        end
        object StaticText13: TStaticText
          Left = 271
          Top = 21
          Width = 151
          Height = 17
          BorderStyle = sbsSunken
          Caption = 'Pre'#231'o de Venda 01 Novo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 11
        end
        object DBE_PCOVDA01_NOV: TDBEdit
          Left = 427
          Top = 21
          Width = 121
          Height = 19
          Ctl3D = False
          DataField = 'PCOVDA01_NOV'
          DataSource = src_cadpro
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 12
        end
      end
      object Panel1: TPanel
        Left = 0
        Top = 448
        Width = 1114
        Height = 41
        Align = alBottom
        TabOrder = 3
        object bbAtualizar: TBitBtn
          Left = 14
          Top = 4
          Width = 155
          Height = 37
          Hint = 'Click aqui para atualizar os Pre'#231'os'
          Caption = 'Atualizar Pre'#231'os'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = bbAtualizarClick
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
        object bbSair: TBitBtn
          Left = 824
          Top = 4
          Width = 155
          Height = 36
          Hint = 'Fecha Esta Janela'
          Caption = '&Sair'
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
          Layout = blGlyphTop
          NumGlyphs = 2
        end
        object BitBtn1: TBitBtn
          Left = 400
          Top = 16
          Width = 75
          Height = 25
          Caption = 'BitBtn1'
          TabOrder = 2
          Visible = False
          OnClick = BitBtn1Click
        end
      end
    end
    object tsConfiguracao: TTabSheet
      Caption = 'Configuracao'
      ImageIndex = 1
      object gb_compos_preco: TGroupBox
        Left = 40
        Top = 20
        Width = 169
        Height = 185
        Caption = 'Aplicar campos para precos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnExit = gb_compos_precoExit
        object cb_ipi: TCheckBox
          Left = 16
          Top = 16
          Width = 97
          Height = 17
          Caption = 'IPI'
          TabOrder = 0
        end
        object CB_VII: TCheckBox
          Left = 16
          Top = 34
          Width = 97
          Height = 17
          Caption = 'Imposto Importacao'
          TabOrder = 1
        end
        object CB_VIOF: TCheckBox
          Left = 16
          Top = 48
          Width = 97
          Height = 17
          Caption = 'Valor IOF'
          TabOrder = 2
        end
        object CB_TARBAN: TCheckBox
          Left = 16
          Top = 65
          Width = 97
          Height = 17
          Caption = 'Tarifa Bancaria'
          TabOrder = 3
        end
        object CB_OUTDESP: TCheckBox
          Left = 16
          Top = 85
          Width = 97
          Height = 17
          Caption = 'Outras Despesas'
          TabOrder = 4
        end
        object CB_VALFRE: TCheckBox
          Left = 16
          Top = 105
          Width = 97
          Height = 17
          Caption = 'Valor do Frete'
          TabOrder = 5
        end
        object CB_VALSEG: TCheckBox
          Left = 16
          Top = 123
          Width = 97
          Height = 17
          Caption = 'Valor do seguro'
          TabOrder = 6
        end
        object CB_VALDES: TCheckBox
          Left = 16
          Top = 143
          Width = 113
          Height = 17
          Caption = 'Valor do Desconto'
          TabOrder = 7
        end
        object CB_ICMSR: TCheckBox
          Left = 16
          Top = 162
          Width = 113
          Height = 17
          Caption = 'Icms Retido'
          TabOrder = 8
        end
      end
      object gb_difal: TGroupBox
        Left = 232
        Top = 24
        Width = 337
        Height = 105
        Caption = '% a aplicar Difal:'
        TabOrder = 1
        object Label1: TLabel
          Left = 8
          Top = 24
          Width = 170
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Origem Nacional(0,3,4,5):'
        end
        object Label2: TLabel
          Left = 9
          Top = 42
          Width = 170
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Origem Estrangeira(0,3,4,5):'
        end
        object Label3: TLabel
          Left = 256
          Top = 8
          Width = 54
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Sugest'#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16384
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 256
          Top = 25
          Width = 54
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = '4,49% '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16384
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label5: TLabel
          Left = 256
          Top = 43
          Width = 54
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = '7,87%. '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16384
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edt_percdial_nacional: TEdit
          Left = 182
          Top = 21
          Width = 67
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnExit = edt_percdial_nacionalExit
        end
        object edt_percdial_estrangeira: TEdit
          Left = 182
          Top = 39
          Width = 67
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = edt_percdial_estrangeiraExit
        end
      end
      object CB_ICMS_CREDITO: TCheckBox
        Left = 256
        Top = 154
        Width = 233
        Height = 17
        Caption = 'Aplicar Icms Credito'
        TabOrder = 2
        OnClick = CB_ICMS_CREDITOClick
      end
    end
  end
  object mem_cadpro: TRxMemoryData
    FieldDefs = <>
    BeforePost = mem_cadproBeforePost
    OnCalcFields = mem_cadproCalcFields
    Left = 288
    object mem_cadproCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODPRO'
    end
    object mem_cadproITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'ITEM'
    end
    object mem_cadproNOMPRO: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'NOMPRO'
      Size = 60
    end
    object mem_cadproUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'UND'
      Size = 3
    end
    object mem_cadproPRECO_ATU: TFloatField
      DisplayLabel = 'Pre'#231'o Atual'
      FieldName = 'PRECO_ATU'
    end
    object mem_cadproPCOCUS_ATU: TFloatField
      DisplayLabel = 'P'#231'o. Custo Atual'
      FieldName = 'PCOCUS_ATU'
    end
    object mem_cadproPCOCPR_ATU: TFloatField
      DisplayLabel = 'P'#231'o. Compra Atual'
      FieldName = 'PCOCPR_ATU'
    end
    object mem_cadproPRECO_NOV: TFloatField
      DisplayLabel = 'Pre'#231'o Novo'
      FieldName = 'PRECO_NOV'
    end
    object mem_cadproPCOCUS_NOV: TFloatField
      DisplayLabel = 'Custo Novo'
      FieldName = 'PCOCUS_NOV'
    end
    object mem_cadproPCOCPR_NOV: TFloatField
      DisplayLabel = 'Compra Novo'
      FieldName = 'PCOCPR_NOV'
    end
    object mem_cadproDTULTALT: TDateTimeField
      DisplayLabel = 'Data Ult Alter'
      FieldName = 'DTULTALT'
    end
    object mem_cadproPCOPED: TFloatField
      DisplayLabel = 'P'#231'o Pedido'
      FieldName = 'PCOPED'
    end
    object mem_cadproALTERAR: TIntegerField
      FieldName = 'ALTERAR'
    end
    object mem_cadproPRECO_ORIGEM: TFloatField
      DisplayLabel = 'Pre'#231'o Origem(compra)'
      FieldName = 'PRECO_ORIGEM'
    end
    object mem_cadproATU_PCO01: TIntegerField
      FieldName = 'ATU_PCO01'
    end
    object mem_cadproATU_PCO02: TIntegerField
      FieldName = 'ATU_PCO02'
    end
    object mem_cadproATU_PCO03: TIntegerField
      FieldName = 'ATU_PCO03'
    end
    object mem_cadproCUACPCO2: TIntegerField
      FieldName = 'CUACPCO2'
    end
    object mem_cadproCUACPCO3: TIntegerField
      FieldName = 'CUACPCO3'
    end
    object mem_cadproalterar_calc: TStringField
      FieldKind = fkCalculated
      FieldName = 'alterar_calc'
      Size = 1
      Calculated = True
    end
    object mem_cadproPRECO01_DIG: TFloatField
      FieldName = 'PRECO01_DIG'
    end
    object mem_cadproPCOCUS_DIG: TFloatField
      FieldName = 'PCOCUS_DIG'
    end
    object mem_cadproPCOCPR_DIG: TFloatField
      FieldName = 'PCOCPR_DIG'
    end
    object mem_cadproPRECO01_DIG_USA: TStringField
      FieldName = 'PRECO01_DIG_USA'
      Size = 1
    end
    object mem_cadproPCOCUS_DIG_USA: TStringField
      FieldName = 'PCOCUS_DIG_USA'
      Size = 1
    end
    object mem_cadproPCOCPR_DIG_USA: TStringField
      FieldName = 'PCOCPR_DIG_USA'
      Size = 1
    end
    object mem_cadproPCOVDA01_NOV: TFloatField
      FieldName = 'PCOVDA01_NOV'
    end
    object mem_cadproPCOVDA02_NOV: TFloatField
      FieldName = 'PCOVDA02_NOV'
    end
    object mem_cadproPCOVDA03_NOV: TFloatField
      FieldName = 'PCOVDA03_NOV'
    end
    object mem_cadproQTD: TFloatField
      FieldName = 'QTD'
    end
  end
  object src_cadpro: TDataSource
    DataSet = mem_cadpro
    OnDataChange = src_cadproDataChange
    Left = 160
  end
  object mem_custo: TRxMemoryData
    FieldDefs = <>
    BeforeInsert = mem_custoBeforeInsert
    AfterPost = mem_custoAfterPost
    OnFilterRecord = mem_custoFilterRecord
    Left = 496
    object mem_custoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'CODIGO'
    end
    object mem_custoDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object mem_custoPERC: TFloatField
      DisplayLabel = '%'
      FieldName = 'PERC'
    end
    object mem_custoVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
    end
    object mem_custoACUM: TFloatField
      DisplayLabel = 'Acumulado'
      FieldName = 'ACUM'
    end
    object mem_custoCODPRO: TFloatField
      FieldName = 'CODPRO'
    end
    object mem_custoAPLICAR_SOB: TIntegerField
      FieldName = 'APLICAR_SOB'
    end
    object mem_custoTIPOFORMULA: TIntegerField
      FieldName = 'TIPOFORMULA'
    end
    object mem_custoTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object mem_custoVALORREAL: TFloatField
      FieldName = 'VALORREAL'
    end
    object mem_custoFATOR: TFloatField
      FieldName = 'FATOR'
    end
    object mem_custoITEM: TIntegerField
      FieldName = 'ITEM'
    end
  end
  object src_custo: TDataSource
    DataSet = mem_custo
    Left = 528
  end
  object mem_compra: TRxMemoryData
    FieldDefs = <>
    BeforeInsert = mem_compraBeforeInsert
    AfterPost = mem_compraAfterPost
    OnFilterRecord = mem_compraFilterRecord
    Left = 424
    object mem_compraCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'CODIGO'
    end
    object mem_compraDESCRICAO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object mem_compraPERC: TFloatField
      DisplayLabel = '%'
      FieldName = 'PERC'
    end
    object mem_compraVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
    end
    object mem_compraACUM: TFloatField
      DisplayLabel = 'Acumulado'
      FieldName = 'ACUM'
    end
    object mem_compraCODPRO: TFloatField
      FieldName = 'CODPRO'
    end
    object mem_compraAPLICAR_SOB: TIntegerField
      FieldName = 'APLICAR_SOB'
    end
    object mem_compraTIPOFORMULA: TIntegerField
      FieldName = 'TIPOFORMULA'
    end
    object mem_compraTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object mem_compraFATOR: TFloatField
      FieldName = 'FATOR'
    end
    object mem_compraVALORREAL: TFloatField
      FieldName = 'VALORREAL'
    end
    object mem_compraITEM: TIntegerField
      FieldName = 'ITEM'
    end
  end
  object src_compra: TDataSource
    DataSet = mem_compra
    Left = 456
  end
  object mem_venda: TRxMemoryData
    FieldDefs = <>
    BeforeInsert = mem_vendaBeforeInsert
    AfterPost = mem_vendaAfterPost
    OnFilterRecord = mem_vendaFilterRecord
    Left = 568
    object mem_vendaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'CODIGO'
    end
    object mem_vendaDESCRICAO: TStringField
      DisplayLabel = 'descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object mem_vendaPERC: TFloatField
      DisplayLabel = '%'
      FieldName = 'PERC'
    end
    object mem_vendaVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
    end
    object mem_vendaACUM: TFloatField
      DisplayLabel = 'Acumulado'
      FieldName = 'ACUM'
    end
    object mem_vendaCODPRO: TFloatField
      FieldName = 'CODPRO'
    end
    object mem_vendaAPLICAR_SOB: TIntegerField
      FieldName = 'APLICAR_SOB'
    end
    object mem_vendaTIPOFORMULA: TIntegerField
      FieldName = 'TIPOFORMULA'
    end
    object mem_vendaTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object mem_vendaVALORREAL: TFloatField
      FieldName = 'VALORREAL'
    end
    object mem_vendaFATOR: TFloatField
      FieldName = 'FATOR'
    end
    object mem_vendaITEM: TIntegerField
      FieldName = 'ITEM'
    end
  end
  object src_venda: TDataSource
    DataSet = mem_venda
    Left = 600
  end
end
