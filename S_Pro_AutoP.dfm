inherited Frm_Pro_AutoP: TFrm_Pro_AutoP
  Left = 19
  Top = 0
  Width = 781
  Height = 570
  Caption = 'Manuten'#231#227'o no Cadastro de Produtos'
  FormStyle = fsNormal
  KeyPreview = True
  OldCreateOrder = True
  Visible = False
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Width = 765
    inherited lbl_emp: TLabel
      Left = 720
    end
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
  end
  inherited PC1: TPageControl
    Width = 765
    Height = 397
    OnChange = PC1Change
    inherited tsCad: TTabSheet
      object Panel2: TPanel
        Left = 0
        Top = 194
        Width = 757
        Height = 175
        Align = alClient
        TabOrder = 1
        object GroupBox1: TGroupBox
          Left = 1
          Top = 1
          Width = 485
          Height = 173
          Align = alClient
          Caption = 'Grupos do Produto(Aplica'#231#227'o/Compatibilidade):'
          TabOrder = 0
          object Panel4: TPanel
            Left = 2
            Top = 127
            Width = 481
            Height = 44
            Align = alBottom
            TabOrder = 0
            object bbGPIncluir: TBitBtn
              Left = 2
              Top = 2
              Width = 94
              Height = 39
              Caption = '&Incluir'
              TabOrder = 0
              OnClick = bbGPIncluirClick
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
            object bbGPAlterar: TBitBtn
              Left = 96
              Top = 2
              Width = 95
              Height = 39
              Caption = '&Alterar'
              TabOrder = 1
              OnClick = bbGPAlterarClick
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
            object bbGPExcluir: TBitBtn
              Left = 381
              Top = 2
              Width = 95
              Height = 39
              Caption = '&Excluir'
              TabOrder = 2
              OnClick = bbGPExcluirClick
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
            object bbGPGravar: TBitBtn
              Left = 191
              Top = 2
              Width = 95
              Height = 39
              Caption = 'Gravar'
              TabOrder = 3
              OnClick = bbGPGravarClick
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
            object bbgpCancelar: TBitBtn
              Left = 286
              Top = 2
              Width = 95
              Height = 39
              Hint = 'Cancela a opera'#231#227'o atual'
              Caption = 'Cance&lar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 4
              OnClick = bbgpCancelarClick
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
          end
          object dbGrid_SGPro: TDBGrid
            Left = 2
            Top = 15
            Width = 481
            Height = 112
            Align = alClient
            Color = clInactiveCaptionText
            DataSource = Src_SGPro
            FixedColor = clTeal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindow
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnColExit = dbGrid_SGProColExit
            OnExit = dbGrid_SGProExit
            OnKeyPress = dbGrid_SGProKeyPress
            Columns = <
              item
                Expanded = False
                FieldName = 'SGPCODGRU'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TNOME'
                ReadOnly = True
                Width = 347
                Visible = True
              end>
          end
        end
        object GroupBox3: TGroupBox
          Left = 486
          Top = 1
          Width = 270
          Height = 173
          Align = alRight
          Caption = 'Ano(&s):'
          TabOrder = 1
          object Panel5: TPanel
            Left = 2
            Top = 127
            Width = 266
            Height = 44
            Align = alBottom
            TabOrder = 1
            object bbAnoIncluir: TBitBtn
              Left = 2
              Top = 4
              Width = 53
              Height = 39
              Caption = '&Incluir'
              TabOrder = 0
              OnClick = bbAnoIncluirClick
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
            object bbAnoAlterar: TBitBtn
              Left = 54
              Top = 4
              Width = 53
              Height = 39
              Caption = '&Alterar'
              TabOrder = 1
              OnClick = bbAnoAlterarClick
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
            object bbAnoGravar: TBitBtn
              Left = 106
              Top = 4
              Width = 53
              Height = 39
              Caption = 'Gravar'
              TabOrder = 2
              OnClick = bbAnoGravarClick
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
            object bbAnoCancelar: TBitBtn
              Left = 158
              Top = 4
              Width = 53
              Height = 39
              Hint = 'Cancela a opera'#231#227'o atual'
              Caption = 'Cance&lar'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
              OnClick = bbAnoCancelarClick
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
            object bbAnoExcluir: TBitBtn
              Left = 210
              Top = 3
              Width = 53
              Height = 39
              Caption = '&Excluir'
              TabOrder = 4
              OnClick = bbAnoExcluirClick
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
          end
          object dbGrid_SGPro_Ano: TDBGrid
            Left = 2
            Top = 15
            Width = 266
            Height = 112
            Align = alClient
            Color = clInactiveCaptionText
            DataSource = Src_SGPro_Ano
            FixedColor = clTeal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindow
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnExit = dbGrid_SGPro_AnoExit
            Columns = <
              item
                Expanded = False
                FieldName = 'SGPAANO'
                Visible = True
              end>
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 757
        Height = 194
        Align = alTop
        TabOrder = 0
        object Label1: TLabel
          Left = 7
          Top = 10
          Width = 106
          Height = 13
          Caption = 'C'#243'digo do Produto'
        end
        object Label3: TLabel
          Left = 129
          Top = 10
          Width = 58
          Height = 13
          Caption = 'Descri'#231#227'o'
        end
        object Label5: TLabel
          Left = 524
          Top = 11
          Width = 48
          Height = 13
          Caption = 'Unidade'
        end
        object Label9: TLabel
          Left = 5
          Top = 63
          Width = 108
          Height = 13
          Caption = 'Marca/Referencia:'
        end
        object Label4: TLabel
          Left = 590
          Top = 9
          Width = 109
          Height = 13
          Caption = 'Situa'#231#227'o Tribut'#225'ria'
        end
        object Label6: TLabel
          Left = 375
          Top = 120
          Width = 85
          Height = 13
          Caption = 'Fornec/Fabric.'
        end
        object Label7: TLabel
          Left = 465
          Top = 120
          Width = 76
          Height = 13
          Caption = 'Raz'#227'o Social'
        end
        object Label8: TLabel
          Left = 559
          Top = 80
          Width = 35
          Height = 13
          Caption = 'Grupo'
          Visible = False
        end
        object Label10: TLabel
          Left = 648
          Top = 80
          Width = 62
          Height = 13
          Caption = 'Descri'#231#227'o:'
          Visible = False
        end
        object Label2: TLabel
          Left = 8
          Top = 168
          Width = 61
          Height = 13
          Caption = 'Aplica'#231#227'o:'
        end
        object DBEdit18: TDBEdit
          Left = 75
          Top = 165
          Width = 685
          Height = 21
          Color = 16764647
          Ctl3D = True
          DataField = 'PDAPLIC'
          DataSource = DM1.Src_Pro
          Enabled = False
          ParentCtl3D = False
          TabOrder = 23
        end
        object DBEdit12: TDBEdit
          Left = 374
          Top = 136
          Width = 89
          Height = 21
          Color = clInactiveCaptionText
          Ctl3D = True
          DataField = 'PDCODFOR'
          DataSource = DM1.Src_Pro
          ParentCtl3D = False
          TabOrder = 14
          OnExit = DBEdit12Exit
          OnKeyPress = DBEdit12KeyPress
        end
        object StaticText10: TStaticText
          Left = 374
          Top = 68
          Width = 58
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Caption = 'Prateleira'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 20
        end
        object StaticText11: TStaticText
          Left = 435
          Top = 68
          Width = 34
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Caption = 'Lado'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 19
        end
        object StaticText12: TStaticText
          Left = 472
          Top = 68
          Width = 35
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Caption = 'Rua'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 21
        end
        object StaticText13: TStaticText
          Left = 511
          Top = 68
          Width = 41
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Caption = 'Se'#231#227'o'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 18
        end
        object DBE_secao: TDBEdit
          Left = 511
          Top = 85
          Width = 42
          Height = 21
          Color = clInactiveCaptionText
          Ctl3D = True
          DataField = 'PDSECAO'
          DataSource = DM1.Src_Pro
          ParentCtl3D = False
          TabOrder = 8
        end
        object DBE_Rua: TDBEdit
          Left = 473
          Top = 85
          Width = 34
          Height = 21
          Color = clInactiveCaptionText
          Ctl3D = True
          DataField = 'PDRUA'
          DataSource = DM1.Src_Pro
          ParentCtl3D = False
          TabOrder = 7
        end
        object DBE_Lado: TDBEdit
          Left = 435
          Top = 85
          Width = 35
          Height = 21
          Color = clInactiveCaptionText
          Ctl3D = True
          DataField = 'PDLADO'
          DataSource = DM1.Src_Pro
          ParentCtl3D = False
          TabOrder = 6
        end
        object DBE_Prateteira: TDBEdit
          Left = 374
          Top = 86
          Width = 59
          Height = 21
          Color = clInactiveCaptionText
          Ctl3D = True
          DataField = 'PDPRAT'
          DataSource = DM1.Src_Pro
          ParentCtl3D = False
          TabOrder = 5
        end
        object StaticText14: TStaticText
          Left = 375
          Top = 49
          Width = 178
          Height = 17
          Alignment = taCenter
          AutoSize = False
          Caption = 'Endere'#231'o do Produto'
          Color = clTeal
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindow
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 22
        end
        object DBEdit15: TDBEdit
          Left = 556
          Top = 95
          Width = 89
          Height = 21
          Color = clInactiveCaptionText
          Ctl3D = True
          DataField = 'PDCODGRU'
          DataSource = DM1.Src_Pro
          ParentCtl3D = False
          TabOrder = 16
          Visible = False
          OnExit = DBEdit15Exit
          OnKeyPress = DBEdit15KeyPress
        end
        object DBEdit16: TDBEdit
          Left = 645
          Top = 95
          Width = 280
          Height = 21
          Color = 16764647
          Ctl3D = True
          DataField = 'PDNOMGRU'
          DataSource = DM1.Src_Pro
          Enabled = False
          ParentCtl3D = False
          TabOrder = 17
          Visible = False
        end
        object DBEdit13: TDBEdit
          Left = 463
          Top = 136
          Width = 301
          Height = 21
          Color = 16764647
          Ctl3D = True
          DataField = 'PDNOMFOR'
          DataSource = DM1.Src_Pro
          Enabled = False
          ParentCtl3D = False
          TabOrder = 15
        end
        object db_codpro: TDBEdit
          Left = 4
          Top = 25
          Width = 121
          Height = 21
          Color = clInactiveCaptionText
          Ctl3D = True
          DataField = 'PDCODPRO'
          DataSource = DM1.Src_Pro
          Enabled = False
          ParentCtl3D = False
          TabOrder = 0
          OnExit = db_codproExit
        end
        object DBEdit3_20: TDBEdit
          Left = 127
          Top = 25
          Width = 380
          Height = 21
          Color = clInactiveCaptionText
          Ctl3D = True
          DataField = 'PDNOME'
          DataSource = DM1.Src_Pro
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 526
          Top = 25
          Width = 41
          Height = 21
          Color = clInactiveCaptionText
          Ctl3D = True
          DataField = 'PDUND'
          DataSource = DM1.Src_Pro
          ParentCtl3D = False
          TabOrder = 2
        end
        object DBEdit6: TDBEdit
          Left = 4
          Top = 85
          Width = 297
          Height = 21
          Color = clInactiveCaptionText
          Ctl3D = True
          DataField = 'PDMARCA'
          DataSource = DM1.Src_Pro
          ParentCtl3D = False
          TabOrder = 4
        end
        object GB_PRECO1: TGroupBox
          Left = 111
          Top = 108
          Width = 255
          Height = 52
          Caption = 'Pre'#231'os de Venda:'
          TabOrder = 10
          object DBEdit11: TDBEdit
            Left = 2
            Top = 29
            Width = 80
            Height = 21
            Color = clInactiveCaptionText
            Ctl3D = True
            DataField = 'PDPRECO1'
            DataSource = DM1.Src_Pro
            ParentCtl3D = False
            TabOrder = 0
          end
          object DBEdit14: TDBEdit
            Left = 81
            Top = 29
            Width = 80
            Height = 21
            Color = clInactiveCaptionText
            Ctl3D = True
            DataField = 'PDPRECOA1'
            DataSource = DM1.Src_Pro
            ParentCtl3D = False
            TabOrder = 1
          end
          object DBEdit17: TDBEdit
            Left = 161
            Top = 29
            Width = 91
            Height = 21
            Color = 16764647
            Ctl3D = True
            DataField = 'dtaltpco1'
            DataSource = DM1.Src_Pro
            Enabled = False
            ParentCtl3D = False
            TabOrder = 2
          end
          object StaticText1: TStaticText
            Left = 81
            Top = 12
            Width = 80
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = 'Anterior'
            Color = clTeal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 3
          end
          object StaticText2: TStaticText
            Left = 2
            Top = 12
            Width = 80
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = 'Pre'#231'o Atual'
            Color = clTeal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 4
          end
          object StaticText3: TStaticText
            Left = 161
            Top = 12
            Width = 91
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = 'Data Altera'#231#227'o'
            Color = clTeal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 5
          end
        end
        object GB_PRECO2: TGroupBox
          Left = 562
          Top = 77
          Width = 255
          Height = 53
          Caption = 'Pre'#231'os Tabela 2:'
          TabOrder = 11
          Visible = False
          object DBEdit1: TDBEdit
            Left = 1
            Top = 29
            Width = 80
            Height = 21
            Color = clInactiveCaptionText
            Ctl3D = True
            DataField = 'PDPRECO2'
            DataSource = DM1.Src_Pro
            ParentCtl3D = False
            TabOrder = 0
          end
          object DBEdit2: TDBEdit
            Left = 81
            Top = 29
            Width = 80
            Height = 21
            Color = clInactiveCaptionText
            Ctl3D = True
            DataField = 'PDPRECOA2'
            DataSource = DM1.Src_Pro
            ParentCtl3D = False
            TabOrder = 1
          end
          object DBEdit3: TDBEdit
            Left = 161
            Top = 29
            Width = 91
            Height = 21
            Color = 16764647
            Ctl3D = True
            DataField = 'dtaltpco2'
            DataSource = DM1.Src_Pro
            Enabled = False
            ParentCtl3D = False
            TabOrder = 2
          end
          object StaticText4: TStaticText
            Left = 81
            Top = 12
            Width = 80
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = 'Anterior'
            Color = clTeal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 3
          end
          object StaticText5: TStaticText
            Left = 1
            Top = 12
            Width = 80
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = 'Pre'#231'o Atual'
            Color = clTeal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 4
          end
          object StaticText6: TStaticText
            Left = 161
            Top = 12
            Width = 91
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = 'Data Altera'#231#227'o'
            Color = clTeal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 5
          end
        end
        object GB_PRECO3: TGroupBox
          Left = 559
          Top = 69
          Width = 256
          Height = 53
          Caption = 'Pre'#231'os Tabela 3:'
          TabOrder = 12
          Visible = False
          object DBEdit4: TDBEdit
            Left = 1
            Top = 29
            Width = 80
            Height = 21
            Color = clInactiveCaptionText
            Ctl3D = True
            DataField = 'PDPRECO3'
            DataSource = DM1.Src_Pro
            ParentCtl3D = False
            TabOrder = 0
          end
          object DBEdit7: TDBEdit
            Left = 81
            Top = 29
            Width = 80
            Height = 21
            Color = clInactiveCaptionText
            Ctl3D = True
            DataField = 'PDPRECOA3'
            DataSource = DM1.Src_Pro
            ParentCtl3D = False
            TabOrder = 1
          end
          object DBEdit8: TDBEdit
            Left = 161
            Top = 29
            Width = 91
            Height = 21
            Color = 16764647
            Ctl3D = True
            DataField = 'dtaltpco3'
            DataSource = DM1.Src_Pro
            Enabled = False
            ParentCtl3D = False
            TabOrder = 2
          end
          object StaticText7: TStaticText
            Left = 81
            Top = 12
            Width = 80
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = 'Anterior'
            Color = clTeal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 3
          end
          object StaticText8: TStaticText
            Left = 1
            Top = 12
            Width = 80
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = 'Pre'#231'o Atual'
            Color = clTeal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 4
          end
          object StaticText9: TStaticText
            Left = 161
            Top = 12
            Width = 91
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = 'Data Altera'#231#227'o'
            Color = clTeal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 5
          end
        end
        object DBEdit10: TDBEdit
          Left = 626
          Top = 23
          Width = 41
          Height = 21
          Color = clInactiveCaptionText
          Ctl3D = True
          DataField = 'PDSIT'
          DataSource = DM1.Src_Pro
          ParentCtl3D = False
          TabOrder = 3
          OnEnter = DBEdit10Enter
          OnExit = DBEdit10Exit
        end
        object Panel6: TPanel
          Left = 223
          Top = 28
          Width = 539
          Height = 168
          BevelOuter = bvNone
          Ctl3D = True
          Enabled = False
          ParentCtl3D = False
          TabOrder = 13
          Visible = False
          object Panel8: TPanel
            Left = 0
            Top = 0
            Width = 169
            Height = 168
            Align = alLeft
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label33: TLabel
              Left = 12
              Top = 6
              Width = 139
              Height = 13
              Caption = 'Origem Merc. (1'#186' D'#237'gito)'
            end
            object ListBox1: TListBox
              Left = 1
              Top = 23
              Width = 167
              Height = 144
              Align = alBottom
              Color = clInactiveCaptionText
              Ctl3D = False
              ExtendedSelect = False
              ItemHeight = 13
              Items.Strings = (
                '0 - Nacional'
                '1 - Estrang. - Imp. direta'
                '2 - Estrang. - Merc. Interno')
              ParentCtl3D = False
              TabOrder = 0
            end
          end
          object Panel7: TPanel
            Left = 169
            Top = 0
            Width = 369
            Height = 168
            Align = alLeft
            Ctl3D = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            object Label32: TLabel
              Left = 102
              Top = 4
              Width = 214
              Height = 13
              Caption = 'Tributa'#231#227'o pelo ICMS (2'#186' e 3'#186' D'#237'gito)'
            end
            object ListBox2: TListBox
              Left = 1
              Top = 22
              Width = 367
              Height = 145
              Align = alBottom
              Color = clInactiveCaptionText
              Ctl3D = False
              ExtendedSelect = False
              ItemHeight = 13
              Items.Strings = (
                '00 - Tributado integralmente'
                '10 - Tributado e com cobr.  do ICMS por subs. trib.'
                '20 - Com redu'#231#227'o de base de c'#225'lculo'
                '30 - Isenta ou n'#227'o trib. e com cobr. do ICMS por subs. trib.'
                '40 - Isenta ou n'#227'o tributada'
                '41 - N'#227'o tributada'
                '50 - Com suspens'#227'o ou deferimento'
                '51 - Diferimento'
                '60 - ICMS cobrado anteriormente por substitui'#231#227'o tribut'#225'ria'
                '70 - Com red. de base de c'#225'lc. e cobr. do ICMS por subs. trib.'
                '90 - Outras')
              ParentCtl3D = False
              TabOrder = 0
              OnExit = ALTERARClick
            end
          end
        end
        object GB_CUSTO: TGroupBox
          Left = 5
          Top = 108
          Width = 103
          Height = 53
          Caption = 'Pre'#231'o de Custo:'
          TabOrder = 9
          object DBEdit9: TDBEdit
            Left = 11
            Top = 29
            Width = 80
            Height = 21
            Color = clInactiveCaptionText
            Ctl3D = True
            DataField = 'PDPRECOC'
            DataSource = DM1.Src_Pro
            ParentCtl3D = False
            TabOrder = 0
          end
          object StaticText16: TStaticText
            Left = 11
            Top = 12
            Width = 80
            Height = 17
            Alignment = taCenter
            AutoSize = False
            BorderStyle = sbsSunken
            Caption = 'Pre'#231'o Custo'
            Color = clTeal
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindow
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            TabOrder = 1
          end
        end
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 765
        Height = 300
        Color = clInactiveCaptionText
        DataSource = DM1.Src_Pro
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'PDCODPRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'estoque'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDMARCA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDPRECO1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDPRECO2'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDPRECO3'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDUND'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDSECAO'
            Visible = True
          end>
      end
      object GroupBox4: TGroupBox
        Left = 0
        Top = 300
        Width = 765
        Height = 73
        Align = alBottom
        Caption = 'Observa'#231#245'es:'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 1
        object lbl_Acab: TStaticText
          Left = 16
          Top = 13
          Width = 139
          Height = 17
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Produtos Acabados'
          Color = clInactiveCaptionText
          ParentColor = False
          TabOrder = 0
        end
        object lbl_Serv: TStaticText
          Left = 16
          Top = 30
          Width = 139
          Height = 17
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Servi'#231'o'
          Color = clInactiveCaptionText
          ParentColor = False
          TabOrder = 1
        end
        object lbl_MPR: TStaticText
          Left = 16
          Top = 47
          Width = 139
          Height = 17
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Mat'#233'ria Prima Revenda'
          Color = clInactiveCaptionText
          ParentColor = False
          TabOrder = 2
        end
        object lbl_PP: TStaticText
          Left = 156
          Top = 13
          Width = 139
          Height = 17
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Produto em Produ'#231#227'o'
          Color = clInactiveCaptionText
          ParentColor = False
          TabOrder = 3
        end
        object lbl_MP: TStaticText
          Left = 156
          Top = 30
          Width = 139
          Height = 17
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Mat'#233'ria Prima'
          Color = clInactiveCaptionText
          ParentColor = False
          TabOrder = 4
        end
        object lbl_Isum: TStaticText
          Left = 156
          Top = 47
          Width = 139
          Height = 17
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Insumos'
          Color = clInactiveCaptionText
          ParentColor = False
          TabOrder = 5
        end
        object lbl_outros: TStaticText
          Left = 296
          Top = 12
          Width = 139
          Height = 17
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Outros Produtos'
          Color = clInactiveCaptionText
          ParentColor = False
          TabOrder = 6
        end
        object lbl_ProBloq: TStaticText
          Left = 296
          Top = 30
          Width = 139
          Height = 17
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Produto Bloqueado'
          Color = clInactiveCaptionText
          ParentColor = False
          TabOrder = 7
        end
        object lbl_ProVenc: TStaticText
          Left = 296
          Top = 48
          Width = 305
          Height = 17
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Produtos com Vencimentos Inferior a: '
          Color = clInactiveCaptionText
          ParentColor = False
          TabOrder = 8
        end
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 426
    Width = 765
    inherited INCLUIR: TBitBtn
      Width = 120
    end
    inherited ALTERAR: TBitBtn
      Left = 124
      Width = 120
    end
    inherited EXCLUIR: TBitBtn
      Left = 243
      Width = 120
    end
    inherited GRAVAR: TBitBtn
      Left = 362
      Width = 120
      OnClick = GRAVARClick
    end
    inherited CANCELAR: TBitBtn
      Left = 482
      Width = 120
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 479
    Width = 765
    inherited DBNavigator1: TDBNavigator
      Left = 3
      Top = 14
      Width = 480
      DataSource = DM1.Src_Pro
    end
    inherited SAIR: TBitBtn
      Left = 482
      Top = 14
      Width = 120
    end
  end
  object Tb_SGPro: TQuery
    CachedUpdates = True
    AfterInsert = Tb_SGProAfterInsert
    AfterEdit = Tb_SGProAfterEdit
    BeforePost = Tb_SGProBeforePost
    AfterPost = Tb_SGProAfterDelete
    AfterCancel = Tb_SGProAfterCancel
    AfterDelete = Tb_SGProAfterDelete
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select SGPCODEMP,SGPCODPRO,SGPCODGRU,TNOME'
      'from CADSGPRO,CADTP'
      'where SGPCODEMP=1 '
      'and     TCODEMP=SGPCODEMP'
      'and     TCODTIP=SGPCODGRU')
    UpdateObject = U_SGPro
    Left = 256
    Top = 56
    object Tb_SGProSGPCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'SGPCODEMP'
      Origin = 'SG_ASSOC.CADSGPRO.SGPCODEMP'
    end
    object Tb_SGProSGPCODPRO: TFloatField
      DisplayLabel = 'C'#243'digo Produto'
      FieldName = 'SGPCODPRO'
      Origin = 'SG_ASSOC.CADSGPRO.SGPCODPRO'
    end
    object Tb_SGProSGPCODGRU: TFloatField
      DisplayLabel = 'C'#243'digo Produto'
      FieldName = 'SGPCODGRU'
      Origin = 'SG_ASSOC.CADSGPRO.SGPCODGRU'
    end
    object Tb_SGProTNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TNOME'
      Origin = 'SG_ASSOC.CADTP.TNOME'
      Size = 30
    end
  end
  object U_SGPro: TUpdateSQL
    ModifySQL.Strings = (
      'update CADSGPRO'
      'set'
      '  SGPCODEMP = :SGPCODEMP,'
      '  SGPCODPRO = :SGPCODPRO,'
      '  SGPCODGRU = :SGPCODGRU'
      'where'
      '  SGPCODEMP = :OLD_SGPCODEMP and'
      '  SGPCODPRO = :OLD_SGPCODPRO and'
      '  SGPCODGRU = :OLD_SGPCODGRU')
    InsertSQL.Strings = (
      'insert into CADSGPRO'
      '  (SGPCODEMP, SGPCODPRO, SGPCODGRU)'
      'values'
      '  (:SGPCODEMP, :SGPCODPRO, :SGPCODGRU)')
    DeleteSQL.Strings = (
      'delete from CADSGPRO'
      'where'
      '  SGPCODEMP = :OLD_SGPCODEMP and'
      '  SGPCODPRO = :OLD_SGPCODPRO and'
      '  SGPCODGRU = :OLD_SGPCODGRU')
    Left = 284
    Top = 56
  end
  object Src_SGPro: TDataSource
    DataSet = Tb_SGPro
    OnDataChange = Src_SGProDataChange
    Left = 312
    Top = 55
  end
  object Tb_SGPro_Ano: TQuery
    CachedUpdates = True
    AfterInsert = Tb_SGPro_AnoAfterInsert
    AfterEdit = Tb_SGPro_AnoAfterEdit
    BeforePost = Tb_SGPro_AnoBeforePost
    AfterPost = Tb_SGPro_AnoAfterDelete
    AfterCancel = Tb_SGPro_AnoAfterCancel
    AfterDelete = Tb_SGPro_AnoAfterDelete
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CADSGPRO_ANO')
    UpdateObject = U_SGPro_Ano
    Left = 256
    Top = 84
    object Tb_SGPro_AnoSGPACODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'SGPACODEMP'
      Origin = 'SG_ASSOC.CADSGPRO_ANO.SGPACODEMP'
    end
    object Tb_SGPro_AnoSGPACODPRO: TFloatField
      DisplayLabel = 'C'#243'digo Produto'
      FieldName = 'SGPACODPRO'
      Origin = 'SG_ASSOC.CADSGPRO_ANO.SGPACODPRO'
    end
    object Tb_SGPro_AnoSGPACODGRU: TFloatField
      DisplayLabel = 'C'#243'digo Grupo'
      FieldName = 'SGPACODGRU'
      Origin = 'SG_ASSOC.CADSGPRO_ANO.SGPACODGRU'
    end
    object Tb_SGPro_AnoSGPAANO: TFloatField
      DisplayLabel = 'Ano'
      FieldName = 'SGPAANO'
      Origin = 'SG_ASSOC.CADSGPRO_ANO.SGPAANO'
    end
  end
  object U_SGPro_Ano: TUpdateSQL
    ModifySQL.Strings = (
      'update CADSGPRO_ANO'
      'set'
      '  SGPACODEMP = :SGPACODEMP,'
      '  SGPACODPRO = :SGPACODPRO,'
      '  SGPACODGRU = :SGPACODGRU,'
      '  SGPAANO = :SGPAANO'
      'where'
      '  SGPACODEMP = :OLD_SGPACODEMP and'
      '  SGPACODPRO = :OLD_SGPACODPRO and'
      '  SGPACODGRU = :OLD_SGPACODGRU and'
      '  SGPAANO = :OLD_SGPAANO')
    InsertSQL.Strings = (
      'insert into CADSGPRO_ANO'
      '  (SGPACODEMP, SGPACODPRO, SGPACODGRU, SGPAANO)'
      'values'
      '  (:SGPACODEMP, :SGPACODPRO, :SGPACODGRU, :SGPAANO)')
    DeleteSQL.Strings = (
      'delete from CADSGPRO_ANO'
      'where'
      '  SGPACODEMP = :OLD_SGPACODEMP and'
      '  SGPACODPRO = :OLD_SGPACODPRO and'
      '  SGPACODGRU = :OLD_SGPACODGRU and'
      '  SGPAANO = :OLD_SGPAANO')
    Left = 284
    Top = 84
  end
  object Src_SGPro_Ano: TDataSource
    DataSet = Tb_SGPro_Ano
    Left = 312
    Top = 84
  end
  object Src_Pro: TDataSource
    DataSet = DM1.Tb_Pro
    OnDataChange = Src_ProDataChange
    Left = 688
    Top = 56
  end
end
