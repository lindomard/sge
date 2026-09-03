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
          Width = 687
          Height = 147
          Align = alClient
          Caption = 'Dados das Colunas:'
          TabOrder = 1
          object DBGrid_dadoscol: TDBGrid
            Left = 1
            Top = 14
            Width = 607
            Height = 132
            Align = alClient
            DataSource = src_dword02
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnDrawColumnCell = DBGrid_dadoscolDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'DW02_POSICAO'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DW02_TIPOCAMPO'
                Width = 90
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DW02_CAMPOOUTEXTO'
                Width = 121
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DW02_TAMANHO'
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DW02_ALINHAMENTO'
                Width = 81
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DW02_FORMATO'
                Width = 102
                Visible = True
              end>
          end
          object Panel1: TPanel
            Left = 608
            Top = 14
            Width = 78
            Height = 132
            Align = alRight
            TabOrder = 1
            object SpeedButton1: TSpeedButton
              Left = 1
              Top = 2
              Width = 75
              Height = 49
              Caption = 'Cor Fonte'
              OnClick = SpeedButton1Click
            end
            object SpeedButton2: TSpeedButton
              Left = 0
              Top = 54
              Width = 75
              Height = 49
              Caption = 'Cor Fundo'
              OnClick = SpeedButton2Click
            end
          end
        end
        object GroupBox4: TGroupBox
          Left = 792
          Top = 1
          Width = 119
          Height = 147
          Align = alRight
          Caption = 'Mesclar'
          TabOrder = 2
          object DBGrid2: TDBGrid
            Left = 1
            Top = 14
            Width = 117
            Height = 132
            Align = alClient
            DataSource = src_dword02_mesclar
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
                FieldName = 'DW02M_COLINI'
                Width = 25
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DW02M_COLFIN'
                Width = 36
                Visible = True
              end>
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
          Width = 200
          Height = 148
          Align = alLeft
          Caption = 'Grades Existentes:'
          TabOrder = 0
          object DBGrid_grades: TDBGrid
            Left = 2
            Top = 15
            Width = 196
            Height = 131
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
        end
        object Panel3: TPanel
          Left = 201
          Top = 1
          Width = 710
          Height = 148
          Align = alClient
          TabOrder = 1
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
            Width = 390
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
            Caption = 'p/Cabecalho'
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
          end
          object DBMemo_OBS: TDBMemo
            Left = 316
            Top = 38
            Width = 390
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
            Width = 708
            Height = 39
            Align = alBottom
            TabOrder = 13
            object bbgrade_incluir: TBitBtn
              Left = 4
              Top = 1
              Width = 64
              Height = 37
              Hint = 'Inclus'#227'o de novos registros'
              Caption = '&Novo'
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
              Left = 67
              Top = 1
              Width = 64
              Height = 37
              Hint = 'Permite alterar o registro atual'
              Caption = '&Alterar'
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
              Left = 130
              Top = 1
              Width = 64
              Height = 37
              Hint = 'Exclus'#227'o do registro atual'
              Caption = '&Excluir'
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
              Left = 193
              Top = 1
              Width = 64
              Height = 37
              Hint = 'Grava o registro atual'
              Caption = '&Gravar'
              Enabled = False
              ParentShowHint = False
              ShowHint = True
              TabOrder = 3
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
              Left = 256
              Top = 1
              Width = 64
              Height = 37
              Hint = 'Cancela a opera'#231#227'o atual'
              Caption = 'Cance&lar'
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
              Left = 319
              Top = 2
              Width = 248
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
            object bbgrade_sair: TBitBtn
              Left = 566
              Top = 2
              Width = 64
              Height = 36
              Hint = 'Fecha Esta Janela'
              Caption = '&Sair'
              ParentShowHint = False
              ShowHint = True
              TabOrder = 6
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
              Layout = blGlyphTop
              NumGlyphs = 2
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
      end
    end
    object tsLegenda: TTabSheet
      Caption = 'Legenda'
      ImageIndex = 1
    end
    object tsPreview: TTabSheet
      Caption = 'Preview da Grade'
      ImageIndex = 2
    end
  end
  object panel_rodape: TPanel
    Left = 0
    Top = 504
    Width = 920
    Height = 41
    Align = alBottom
    TabOrder = 2
  end
  object tb_dword01: TRxMemoryData
    FieldDefs = <>
    AfterInsert = tb_dword01AfterInsert
    BeforeEdit = tb_dword01BeforeEdit
    AfterEdit = tb_dword01AfterEdit
    BeforeCancel = tb_dword01BeforeCancel
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
  end
  object src_dword01: TDataSource
    DataSet = tb_dword01
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
    Left = 696
    Top = 16
  end
  object tb_dword02: TRxMemoryData
    FieldDefs = <>
    OnFilterRecord = tb_dword02FilterRecord
    Left = 752
    Top = 24
    object tb_dword02DW02_POSICAO: TIntegerField
      DisplayLabel = 'Posi'#231#227'o'
      FieldName = 'DW02_POSICAO'
    end
    object tb_dword02DW02_TIPOCAMPO: TIntegerField
      DisplayLabel = 'Tipo Campo'
      FieldName = 'DW02_TIPOCAMPO'
    end
    object tb_dword02DW02_CAMPOOUTEXTO: TIntegerField
      DisplayLabel = 'Campo ou Texto'
      FieldName = 'DW02_CAMPOOUTEXTO'
    end
    object tb_dword02DW02_TAMANHO: TIntegerField
      DisplayLabel = 'Tam'
      FieldName = 'DW02_TAMANHO'
    end
    object tb_dword02DW02_ALINHAMENTO: TIntegerField
      DisplayLabel = 'Alinha'
      FieldName = 'DW02_ALINHAMENTO'
    end
    object tb_dword02DW02_FORMATO: TStringField
      DisplayLabel = 'Formato'
      FieldName = 'DW02_FORMATO'
      Size = 50
    end
    object tb_dword02DW02_DATATYPE: TIntegerField
      DisplayLabel = 'Datatype'
      FieldName = 'DW02_DATATYPE '
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
  end
  object src_dword02: TDataSource
    DataSet = tb_dword02
    Left = 776
    Top = 24
  end
  object tb_dword02_Mesclar: TRxMemoryData
    FieldDefs = <>
    OnFilterRecord = tb_dword02_MesclarFilterRecord
    Left = 824
    Top = 24
    object tb_dword02_MesclarDW02M_COLINI: TIntegerField
      DisplayLabel = 'Ini'
      FieldName = 'DW02M_COLINI'
    end
    object tb_dword02_MesclarDW02M_COLFIN: TIntegerField
      DisplayLabel = 'Final'
      FieldName = 'DW02M_COLFIN'
    end
    object tb_dword02_MesclarDW02M_NOMGRADE: TStringField
      FieldName = 'DW02M_NOMGRADE'
      Size = 50
    end
  end
  object src_dword02_mesclar: TDataSource
    DataSet = tb_dword02_Mesclar
    Left = 848
    Top = 24
  end
  object ColorDialog1: TColorDialog
    Left = 716
    Top = 97
  end
  object tb_dword01_grades: TRxMemoryData
    FieldDefs = <>
    Left = 512
    Top = 24
    object tb_dword01_gradesDW01G_NOMGRADE: TStringField
      DisplayLabel = 'Nome da Grade'
      FieldName = 'DW01G_NOMGRADE'
      Size = 50
    end
  end
  object src_dword01_grades: TDataSource
    DataSet = tb_dword01_grades
    Left = 536
    Top = 24
  end
end
