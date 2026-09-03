object Frm_Farma_FP_Validar: TFrm_Farma_FP_Validar
  Left = 174
  Top = 91
  Width = 1113
  Height = 508
  Caption = 'Farmacia Popular'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 0
    Top = 0
    Width = 1097
    Height = 29
    Align = alTop
    Alignment = taCenter
    Caption = 'Solicita'#231#245'es'
    Color = 16768959
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -25
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 64
    Width = 1097
    Height = 406
    ActivePage = tsPendentes
    Align = alClient
    TabOrder = 0
    object tsPendentes: TTabSheet
      Caption = 'Pendentes-0'
      object GroupBox4: TGroupBox
        Left = 0
        Top = 24
        Width = 1089
        Height = 161
        Align = alClient
        Caption = 'Solicita'#231#245'es Pendentes:'
        TabOrder = 0
        object DBGrid_sol_res: TDBGrid
          Left = 2
          Top = 15
          Width = 1085
          Height = 144
          Align = alClient
          DataSource = src_Sol_Pend_res
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnColExit = DBGrid_sol_resColExit
          OnExit = DBGrid_sol_resExit
          OnKeyPress = DBGrid_sol_resKeyPress
          Columns = <
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_ID'
              ReadOnly = True
              Title.Color = 8454143
              Width = 46
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_ID_ANO'
              ReadOnly = True
              Title.Color = 8454143
              Width = 32
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CODVEN'
              Title.Color = 16765650
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'NOMVEN'
              ReadOnly = True
              Title.Color = 8454143
              Width = 162
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CRM_MEDICO'
              Title.Color = 16765650
              Width = 80
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CRM_MEDICO_UF'
              Title.Color = 16765650
              Width = 28
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'DATARECEITA'
              Title.Color = 16765650
              Width = 87
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CLIENTE_CPF'
              Title.Color = 16765650
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CLIENTE_NOME'
              Title.Color = 16765650
              Width = 142
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'QTDPRESC'
              ReadOnly = True
              Title.Color = 8454143
              Width = 84
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'QTDSOL'
              ReadOnly = True
              Title.Color = 8454143
              Width = 84
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'TOTAL_SOL'
              ReadOnly = True
              Title.Color = 8454143
              Width = 83
              Visible = True
            end>
        end
      end
      object gb_itens: TGroupBox
        Left = 0
        Top = 185
        Width = 1089
        Height = 193
        Align = alBottom
        Caption = 'Itens da Receita:'
        TabOrder = 1
        object DBGrid_sol_itens: TDBGrid
          Left = 2
          Top = 15
          Width = 1085
          Height = 123
          Align = alClient
          DataSource = Src_Qr_Sol_Pend
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnColExit = DBGrid_sol_itensColExit
          OnExit = DBGrid_sol_itensExit
          OnKeyPress = DBGrid_sol_itensKeyPress
          Columns = <
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_ITEM'
              ReadOnly = True
              Title.Color = 8454143
              Width = 34
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'SFP_CODPRO'
              Title.Color = 16765650
              Width = 84
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_CODBAR'
              ReadOnly = True
              Title.Color = 8454143
              Width = 115
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'NOMPRO'
              ReadOnly = True
              Title.Color = 8454143
              Width = 289
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'SFP_QTDPRESC'
              Title.Color = 16765650
              Width = 86
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'SFP_QTD_CPR_ML_DIA'
              Title.Color = 16765650
              Width = 124
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'SFP_QTDSOL'
              Title.Color = 16765650
              Width = 63
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_PCO_UNI_VENDA'
              Title.Color = 8454143
              Width = 95
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'VALORTOT_SOL'
              Title.Color = 8454143
              Width = 101
              Visible = True
            end>
        end
        object Panel3: TPanel
          Left = 2
          Top = 138
          Width = 1085
          Height = 25
          Align = alBottom
          TabOrder = 1
          object DBT_INCLUSO: TDBText
            Left = 1
            Top = 1
            Width = 792
            Height = 23
            Align = alLeft
            Alignment = taCenter
            DataField = 'INCLUSO'
            DataSource = Src_Qr_Sol_Pend
          end
          object bbExcluirItem: TBitBtn
            Left = 798
            Top = 3
            Width = 281
            Height = 21
            Caption = 'Excluir Item'
            TabOrder = 0
            OnClick = bbExcluirItemClick
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
        end
        object Panel5: TPanel
          Left = 2
          Top = 163
          Width = 1085
          Height = 28
          Align = alBottom
          TabOrder = 2
          object bbCotacao: TBitBtn
            Left = 336
            Top = 3
            Width = 356
            Height = 25
            Caption = 'Validar Cota'#231#227'o'
            TabOrder = 0
            OnClick = bbCotacaoClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
              003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
              03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
              FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
              FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
              3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
              33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
              33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
              33333337FFFFFFF7F33333300000000033333337777777773333}
            NumGlyphs = 2
          end
        end
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1089
        Height = 24
        Align = alTop
        TabOrder = 2
        object bbres_incluir: TBitBtn
          Left = 4
          Top = 2
          Width = 150
          Height = 20
          Hint = 'Inclus'#227'o de novos registros'
          Caption = '&Nova'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnClick = bbres_incluirClick
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
        object bbres_alterar: TBitBtn
          Left = 153
          Top = 2
          Width = 150
          Height = 20
          Hint = 'Permite alterar o registro atual'
          Caption = '&Alterar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = bbres_alterarClick
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
        object bbres_excluir: TBitBtn
          Left = 302
          Top = 2
          Width = 150
          Height = 20
          Hint = 'Exclus'#227'o do registro atual'
          Caption = '&Excluir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = bbres_excluirClick
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
        object bbres_gravar: TBitBtn
          Left = 599
          Top = 2
          Width = 150
          Height = 20
          Hint = 'Grava o registro atual'
          Caption = '&Gravar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = bbres_gravarClick
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
          Left = 451
          Top = 2
          Width = 150
          Height = 20
          Hint = 'Cancela a Edicao do registro'
          Caption = 'Cancelar'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnClick = bbCancelarClick
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
      end
    end
    object tsAguardandoConclusao: TTabSheet
      Caption = ' Aprovadas Aguardando Conclus'#227'o-1'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 0
        Top = 185
        Width = 1089
        Height = 193
        Align = alBottom
        Caption = 'Itens da Receita:'
        TabOrder = 0
        object DBGrid_pendentes: TDBGrid
          Left = 2
          Top = 15
          Width = 1085
          Height = 123
          Align = alClient
          DataSource = Src_Sol_Envidadas
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_ITEM'
              Title.Color = 8454143
              Width = 34
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'SFP_CODPRO'
              Title.Color = 16765650
              Width = 84
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_CODBAR'
              Title.Color = 8454143
              Width = 121
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'NOMPRO'
              Title.Color = 8454143
              Width = 288
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'SFP_QTDPRESC'
              Title.Color = 16765650
              Width = 86
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'SFP_QTD_CPR_ML_DIA'
              Title.Color = 16765650
              Width = 124
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'SFP_QTDSOL'
              Title.Color = 16765650
              Width = 63
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_PCO_UNI_VENDA'
              Title.Color = 8454143
              Width = 95
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'VALORTOT_SOL'
              Title.Color = 8454143
              Width = 101
              Visible = True
            end>
        end
        object Panel1: TPanel
          Left = 2
          Top = 138
          Width = 1085
          Height = 25
          Align = alBottom
          TabOrder = 1
          object DBText1: TDBText
            Left = 1
            Top = 1
            Width = 792
            Height = 23
            Align = alLeft
            Alignment = taCenter
            DataField = 'INCLUSO'
            DataSource = Src_Sol_Envidadas
          end
          object BitBtn1: TBitBtn
            Left = 798
            Top = 3
            Width = 281
            Height = 21
            Caption = 'Excluir Item'
            TabOrder = 0
            OnClick = bbExcluirItemClick
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
        end
        object Panel6: TPanel
          Left = 2
          Top = 163
          Width = 1085
          Height = 28
          Align = alBottom
          TabOrder = 2
          object BitBtn2: TBitBtn
            Left = 336
            Top = 3
            Width = 356
            Height = 25
            Caption = 'Validar Cota'#231#227'o'
            TabOrder = 0
            OnClick = bbCotacaoClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
              003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
              03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
              FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
              FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
              3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
              33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
              33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
              33333337FFFFFFF7F33333300000000033333337777777773333}
            NumGlyphs = 2
          end
        end
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 1089
        Height = 185
        Align = alClient
        Caption = 'Solicita'#231#245'es Pendentes:'
        TabOrder = 1
        object DBGrid_pendentes_res: TDBGrid
          Left = 2
          Top = 15
          Width = 1085
          Height = 168
          Align = alClient
          DataSource = src_Sol_Envidadas_Res
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_ID'
              Title.Color = 8454143
              Width = 46
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_ID_ANO'
              Title.Color = 8454143
              Width = 32
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CODVEN'
              Title.Color = 16765650
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'NOMVEN'
              Title.Color = 8454143
              Width = 167
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CRM_MEDICO'
              Title.Color = 16765650
              Width = 80
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CRM_MEDICO_UF'
              Title.Color = 16765650
              Width = 28
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'DATARECEITA'
              Title.Color = 16765650
              Width = 87
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CLIENTE_CPF'
              Title.Color = 16765650
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CLIENTE_NOME'
              Title.Color = 16765650
              Width = 142
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'QTDPRESC'
              Title.Color = 8454143
              Width = 84
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'QTDSOL'
              Title.Color = 8454143
              Width = 84
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'TOTAL_SOL'
              Title.Color = 8454143
              Width = 83
              Visible = True
            end>
        end
      end
    end
    object tsConcluidas: TTabSheet
      Caption = 'Concluidas-2'
      ImageIndex = 2
      object GroupBox3: TGroupBox
        Left = 0
        Top = 185
        Width = 1089
        Height = 193
        Align = alBottom
        Caption = 'Itens da Receita:'
        TabOrder = 0
        object DBGrid_concluidas: TDBGrid
          Left = 2
          Top = 15
          Width = 1085
          Height = 123
          Align = alClient
          DataSource = src_Sol_Concluidas
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_ITEM'
              Title.Color = 8454143
              Width = 34
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'SFP_CODPRO'
              Title.Color = 16765650
              Width = 84
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_CODBAR'
              Title.Color = 8454143
              Width = 119
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'NOMPRO'
              Title.Color = 8454143
              Width = 289
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'SFP_QTDPRESC'
              Title.Color = 16765650
              Width = 86
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'SFP_QTD_CPR_ML_DIA'
              Title.Color = 16765650
              Width = 124
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'SFP_QTDSOL'
              Title.Color = 16765650
              Width = 63
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_PCO_UNI_VENDA'
              Title.Color = 8454143
              Width = 95
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'VALORTOT_SOL'
              Title.Color = 8454143
              Width = 101
              Visible = True
            end>
        end
        object Panel7: TPanel
          Left = 2
          Top = 138
          Width = 1085
          Height = 25
          Align = alBottom
          TabOrder = 1
          object DBText2: TDBText
            Left = 1
            Top = 1
            Width = 792
            Height = 23
            Align = alLeft
            Alignment = taCenter
            DataField = 'INCLUSO'
            DataSource = src_Sol_Concluidas
          end
          object BitBtn3: TBitBtn
            Left = 798
            Top = 3
            Width = 281
            Height = 21
            Caption = 'Excluir Item'
            TabOrder = 0
            OnClick = bbExcluirItemClick
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
        end
        object Panel8: TPanel
          Left = 2
          Top = 163
          Width = 1085
          Height = 28
          Align = alBottom
          TabOrder = 2
          object BitBtn4: TBitBtn
            Left = 336
            Top = 3
            Width = 356
            Height = 25
            Caption = 'Validar Cota'#231#227'o'
            TabOrder = 0
            OnClick = bbCotacaoClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
              003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
              03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
              FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
              FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
              3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
              33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
              33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
              33333337FFFFFFF7F33333300000000033333337777777773333}
            NumGlyphs = 2
          end
        end
      end
      object GroupBox5: TGroupBox
        Left = 0
        Top = 0
        Width = 1089
        Height = 185
        Align = alClient
        Caption = 'Solicita'#231#245'es Pendentes:'
        TabOrder = 1
        object DBGrid_concluidas_res: TDBGrid
          Left = 2
          Top = 15
          Width = 1085
          Height = 168
          Align = alClient
          DataSource = Src_Sol_Concluidas_Res
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_ID'
              Title.Color = 8454143
              Width = 46
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_ID_ANO'
              Title.Color = 8454143
              Width = 32
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CODVEN'
              Title.Color = 16765650
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'NOMVEN'
              Title.Color = 8454143
              Width = 148
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CRM_MEDICO'
              Title.Color = 16765650
              Width = 88
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CRM_MEDICO_UF'
              Title.Color = 16765650
              Width = 28
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'DATARECEITA'
              Title.Color = 16765650
              Width = 94
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CLIENTE_CPF'
              Title.Color = 16765650
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CLIENTE_NOME'
              Title.Color = 16765650
              Width = 142
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'QTDPRESC'
              Title.Color = 8454143
              Width = 84
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'QTDSOL'
              Title.Color = 8454143
              Width = 84
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'TOTAL_SOL'
              Title.Color = 8454143
              Width = 83
              Visible = True
            end>
        end
      end
    end
    object tsExtornada: TTabSheet
      Caption = 'Extornadas-7'
      ImageIndex = 3
      object GroupBox6: TGroupBox
        Left = 0
        Top = 185
        Width = 1089
        Height = 193
        Align = alBottom
        Caption = 'Itens da Receita:'
        TabOrder = 0
        object DBGrid_extornadas: TDBGrid
          Left = 2
          Top = 15
          Width = 1085
          Height = 123
          Align = alClient
          DataSource = src_Sol_Extornadas
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_ITEM'
              Title.Color = 8454143
              Width = 34
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'SFP_CODPRO'
              Title.Color = 16765650
              Width = 84
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_CODBAR'
              Title.Color = 8454143
              Width = 115
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'NOMPRO'
              Title.Color = 8454143
              Width = 289
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'SFP_QTDPRESC'
              Title.Color = 16765650
              Width = 86
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'SFP_QTD_CPR_ML_DIA'
              Title.Color = 16765650
              Width = 124
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'SFP_QTDSOL'
              Title.Color = 16765650
              Width = 75
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_PCO_UNI_VENDA'
              Title.Color = 8454143
              Width = 95
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'VALORTOT_SOL'
              Title.Color = 8454143
              Width = 101
              Visible = True
            end>
        end
        object Panel9: TPanel
          Left = 2
          Top = 138
          Width = 1085
          Height = 25
          Align = alBottom
          TabOrder = 1
          object DBText3: TDBText
            Left = 1
            Top = 1
            Width = 792
            Height = 23
            Align = alLeft
            Alignment = taCenter
            DataField = 'INCLUSO'
            DataSource = src_Sol_Extornadas
          end
          object BitBtn5: TBitBtn
            Left = 798
            Top = 3
            Width = 281
            Height = 21
            Caption = 'Excluir Item'
            TabOrder = 0
            OnClick = bbExcluirItemClick
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
        end
        object Panel10: TPanel
          Left = 2
          Top = 163
          Width = 1085
          Height = 28
          Align = alBottom
          TabOrder = 2
          object BitBtn6: TBitBtn
            Left = 336
            Top = 3
            Width = 356
            Height = 25
            Caption = 'Validar Cota'#231#227'o'
            TabOrder = 0
            OnClick = bbCotacaoClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
              003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
              03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
              FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
              FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
              3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
              33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
              33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
              33333337FFFFFFF7F33333300000000033333337777777773333}
            NumGlyphs = 2
          end
        end
      end
      object GroupBox9: TGroupBox
        Left = 0
        Top = 0
        Width = 1089
        Height = 185
        Align = alClient
        Caption = 'Solicita'#231#245'es Pendentes:'
        TabOrder = 1
        object DBGrid_extornadas_res: TDBGrid
          Left = 2
          Top = 15
          Width = 1085
          Height = 168
          Align = alClient
          DataSource = src_Sol_Extornadas_Res
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_ID'
              Title.Color = 8454143
              Width = 46
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_ID_ANO'
              Title.Color = 8454143
              Width = 32
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CODVEN'
              Title.Color = 16765650
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'NOMVEN'
              Title.Color = 8454143
              Width = 162
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CRM_MEDICO'
              Title.Color = 16765650
              Width = 80
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CRM_MEDICO_UF'
              Title.Color = 16765650
              Width = 28
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'DATARECEITA'
              Title.Color = 16765650
              Width = 93
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CLIENTE_CPF'
              Title.Color = 16765650
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CLIENTE_NOME'
              Title.Color = 16765650
              Width = 142
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'QTDPRESC'
              Title.Color = 8454143
              Width = 84
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'QTDSOL'
              Title.Color = 8454143
              Width = 84
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'TOTAL_SOL'
              Title.Color = 8454143
              Width = 83
              Visible = True
            end>
        end
      end
    end
    object tsCanceladas: TTabSheet
      Caption = 'Canceladas-8'
      ImageIndex = 4
      object GroupBox7: TGroupBox
        Left = 0
        Top = 185
        Width = 1089
        Height = 193
        Align = alBottom
        Caption = 'Itens da Receita:'
        TabOrder = 0
        object DBGrid_sol_canceladas: TDBGrid
          Left = 2
          Top = 15
          Width = 1085
          Height = 123
          Align = alClient
          DataSource = src_Sol_Cenceladas
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_ITEM'
              Title.Color = 8454143
              Width = 34
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'SFP_CODPRO'
              Title.Color = 16765650
              Width = 84
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_CODBAR'
              Title.Color = 8454143
              Width = 115
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'NOMPRO'
              Title.Color = 8454143
              Width = 294
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'SFP_QTDPRESC'
              Title.Color = 16765650
              Width = 86
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'SFP_QTD_CPR_ML_DIA'
              Title.Color = 16765650
              Width = 124
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'SFP_QTDSOL'
              Title.Color = 16765650
              Width = 63
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_PCO_UNI_VENDA'
              Title.Color = 8454143
              Width = 95
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'VALORTOT_SOL'
              Title.Color = 8454143
              Width = 101
              Visible = True
            end>
        end
        object Panel11: TPanel
          Left = 2
          Top = 138
          Width = 1085
          Height = 25
          Align = alBottom
          TabOrder = 1
          object DBText4: TDBText
            Left = 1
            Top = 1
            Width = 792
            Height = 23
            Align = alLeft
            Alignment = taCenter
            DataField = 'INCLUSO'
            DataSource = src_Sol_Cenceladas
          end
          object BitBtn7: TBitBtn
            Left = 798
            Top = 3
            Width = 281
            Height = 21
            Caption = 'Excluir Item'
            TabOrder = 0
            OnClick = bbExcluirItemClick
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
        end
        object Panel12: TPanel
          Left = 2
          Top = 163
          Width = 1085
          Height = 28
          Align = alBottom
          TabOrder = 2
          object BitBtn8: TBitBtn
            Left = 336
            Top = 3
            Width = 356
            Height = 25
            Caption = 'Validar Cota'#231#227'o'
            TabOrder = 0
            OnClick = bbCotacaoClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
              003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
              03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
              FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
              FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
              3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
              33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
              33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
              33333337FFFFFFF7F33333300000000033333337777777773333}
            NumGlyphs = 2
          end
        end
      end
      object GroupBox10: TGroupBox
        Left = 0
        Top = 0
        Width = 1089
        Height = 185
        Align = alClient
        Caption = 'Solicita'#231#245'es Pendentes:'
        TabOrder = 1
        object DBGrid_sol_canceladas_res: TDBGrid
          Left = 2
          Top = 15
          Width = 1085
          Height = 168
          Align = alClient
          DataSource = Src_Sol_Canceladas_Res
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_ID'
              Title.Color = 8454143
              Width = 46
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_ID_ANO'
              Title.Color = 8454143
              Width = 32
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CODVEN'
              Title.Color = 16765650
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'NOMVEN'
              Title.Color = 8454143
              Width = 162
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CRM_MEDICO'
              Title.Color = 16765650
              Width = 80
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CRM_MEDICO_UF'
              Title.Color = 16765650
              Width = 28
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'DATARECEITA'
              Title.Color = 16765650
              Width = 87
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CLIENTE_CPF'
              Title.Color = 16765650
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CLIENTE_NOME'
              Title.Color = 16765650
              Width = 148
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'QTDPRESC'
              Title.Color = 8454143
              Width = 84
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'QTDSOL'
              Title.Color = 8454143
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'TOTAL_SOL'
              Title.Color = 8454143
              Width = 83
              Visible = True
            end>
        end
      end
    end
    object tsExcluidas: TTabSheet
      Caption = 'Excluidas-9'
      ImageIndex = 5
      object GroupBox8: TGroupBox
        Left = 0
        Top = 185
        Width = 1089
        Height = 193
        Align = alBottom
        Caption = 'Itens da Receita:'
        TabOrder = 0
        object DBGrid7: TDBGrid
          Left = 2
          Top = 15
          Width = 1085
          Height = 123
          Align = alClient
          DataSource = src_Sol_Excluidas
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_ITEM'
              Title.Color = 8454143
              Width = 34
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'SFP_CODPRO'
              Title.Color = 16765650
              Width = 84
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_CODBAR'
              Title.Color = 8454143
              Width = 115
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'NOMPRO'
              Title.Color = 8454143
              Width = 294
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'SFP_QTDPRESC'
              Title.Color = 16765650
              Width = 86
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'SFP_QTD_CPR_ML_DIA'
              Title.Color = 16765650
              Width = 124
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'SFP_QTDSOL'
              Title.Color = 16765650
              Width = 63
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_PCO_UNI_VENDA'
              Title.Color = 8454143
              Width = 95
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'VALORTOT_SOL'
              Title.Color = 8454143
              Width = 101
              Visible = True
            end>
        end
        object Panel13: TPanel
          Left = 2
          Top = 138
          Width = 1085
          Height = 25
          Align = alBottom
          TabOrder = 1
          object DBText5: TDBText
            Left = 1
            Top = 1
            Width = 792
            Height = 23
            Align = alLeft
            Alignment = taCenter
            DataField = 'INCLUSO'
            DataSource = src_Sol_Excluidas
          end
          object BitBtn9: TBitBtn
            Left = 798
            Top = 3
            Width = 281
            Height = 21
            Caption = 'Excluir Item'
            TabOrder = 0
            OnClick = bbExcluirItemClick
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
        end
        object Panel14: TPanel
          Left = 2
          Top = 163
          Width = 1085
          Height = 28
          Align = alBottom
          TabOrder = 2
          object BitBtn10: TBitBtn
            Left = 336
            Top = 3
            Width = 356
            Height = 25
            Caption = 'Validar Cota'#231#227'o'
            TabOrder = 0
            OnClick = bbCotacaoClick
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
              003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
              03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
              FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
              FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
              3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
              33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
              33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
              33333337FFFFFFF7F33333300000000033333337777777773333}
            NumGlyphs = 2
          end
        end
      end
      object GroupBox11: TGroupBox
        Left = 0
        Top = 0
        Width = 1089
        Height = 185
        Align = alClient
        Caption = 'Solicita'#231#245'es Pendentes:'
        TabOrder = 1
        object DBGrid_sol_excluidas: TDBGrid
          Left = 2
          Top = 15
          Width = 1085
          Height = 168
          Align = alClient
          DataSource = Src_Sol_Excluidas_Res
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_ID'
              Title.Color = 8454143
              Width = 46
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'SFP_ID_ANO'
              Title.Color = 8454143
              Width = 32
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CODVEN'
              Title.Color = 16765650
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'NOMVEN'
              Title.Color = 8454143
              Width = 162
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CRM_MEDICO'
              Title.Color = 16765650
              Width = 80
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CRM_MEDICO_UF'
              Title.Color = 16765650
              Width = 28
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'DATARECEITA'
              Title.Color = 16765650
              Width = 87
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CLIENTE_CPF'
              Title.Color = 16765650
              Visible = True
            end
            item
              Color = 16765650
              Expanded = False
              FieldName = 'CLIENTE_NOME'
              Title.Color = 16765650
              Width = 142
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'QTDPRESC'
              Title.Color = 8454143
              Width = 84
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'QTDSOL'
              Title.Color = 8454143
              Width = 84
              Visible = True
            end
            item
              Color = 15532031
              Expanded = False
              FieldName = 'TOTAL_SOL'
              Title.Color = 8454143
              Width = 83
              Visible = True
            end>
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 29
    Width = 1097
    Height = 35
    Align = alTop
    TabOrder = 1
    object lbl_ambiente: TLabel
      Left = 1
      Top = 1
      Width = 253
      Height = 33
      Align = alLeft
      Caption = 'Ambiente Homologa'#231#227'o'
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -25
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object SAIR: TBitBtn
      Left = 983
      Top = 3
      Width = 105
      Height = 20
      Hint = 'Fecha Esta Janela'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = SAIRClick
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
    object Edit2: TEdit
      Left = 318
      Top = 3
      Width = 90
      Height = 19
      TabStop = False
      Color = 16768959
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
      Text = 'Pesquisar por:'
    end
    object cb_tppesq: TComboBox
      Left = 412
      Top = 3
      Width = 159
      Height = 21
      ItemHeight = 13
      Sorted = True
      TabOrder = 2
      Text = 'CPF Comprador'
      Items.Strings = (
        'Codigo do Vendedor'
        'CPF Comprador'
        'CRM do Medico'
        'Data Receita'
        'Id Regisro'
        'Nome do Comprador'
        'Nome do Vendedor'
        'UF  CRM do Medico')
    end
    object edt_conteudo: TMaskEdit
      Left = 579
      Top = 3
      Width = 196
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      Text = 'edt_conteudo'
    end
    object bbPesquisar: TBitBtn
      Left = 783
      Top = 2
      Width = 98
      Height = 20
      Hint = 'Click aqui para efetuar a pesquisa'
      Caption = 'Pesquisar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = bbPesquisarClick
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
    object Edit1: TEdit
      Left = 891
      Top = 2
      Width = 50
      Height = 19
      TabStop = False
      Color = 8454143
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
      Text = #218'ltimas:'
    end
    object edt_qtd_pendentes: TEdit
      Left = 940
      Top = 3
      Width = 36
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      Text = '20'
    end
  end
  object src_Sol_Pend_res: TDataSource
    DataSet = Qr_Sol_Pend_Res
    OnDataChange = src_Sol_Pend_resDataChange
    Left = 706
    Top = 138
  end
  object HTTPRIO1: THTTPRIO
    HTTPWebNode.Agent = 'Borland SOAP 1.2'
    HTTPWebNode.UseUTF8InHeader = False
    HTTPWebNode.InvokeOptions = [soIgnoreInvalidCerts, soAutoCheckAccessPointViaUDDI]
    Converter.Options = [soSendMultiRefObj, soTryAllSchema, soRootRefNodesToBody, soCacheMimeResponse, soUTF8EncodeXML]
    Left = 618
    Top = 34
  end
  object opd1: TOpenDialog
    Left = 768
    Top = 195
  end
  object Qr_Sol_Pend_Res: TQuery
    CachedUpdates = True
    AfterInsert = Qr_Sol_Pend_ResAfterInsert
    AfterEdit = Qr_Sol_Pend_ResAfterEdit
    BeforePost = Qr_Sol_Pend_ResBeforePost
    AfterPost = Qr_Sol_Pend_ResAfterPost
    AfterCancel = Qr_Sol_Pend_ResAfterCancel
    AfterDelete = Qr_Sol_Pend_ResAfterDelete
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT SFP_CODEMP,SFP_ID_ANO,SFP_ID'
      ',max(SFP_CRM_MEDICO) as CRM_MEDICO'
      ',max(SFP_CRM_MEDICO_UF) as CRM_MEDICO_UF'
      ',max(SFP_DATARECEITA) as DATARECEITA'
      ',max(SFP_CODVEN) as CODVEN'
      ',max(VNOME) as nomven'
      ',max(SFP_CLIENTE_CPF) as CLIENTE_CPF'
      ',max(SFP_CLIENTE_NOME) as CLIENTE_NOME'
      ',sum(SFP_QTDPRESC) as QTDPRESC'
      ',sum(SFP_QTDSOL) as QTDSOL'
      ',sum(SFP_QTDAUT) as QTDAUT'
      ',round( sum(SFP_PCO_UNI_VENDA*SFP_QTDSOL) ,2) as TOTAL_SOL'
      ',sum(SFP_PAGO_MS) as TOTPAGO_MS'
      ',sum(SFP_PAGO_CLIENTE) as TOTPAGO_CLIENTE'
      ' from'
      'CADSOL_FP,CADPRO,CADVEN'
      'where VCODVEN=SFP_CODVEN'
      'and PDCODPRO=SFP_CODPRO'
      'GROUP BY SFP_CODEMP,SFP_ID_ANO,SFP_ID')
    UpdateObject = U_Sol_Pend_Res
    Left = 672
    Top = 136
    object Qr_Sol_Pend_ResSFP_CODEMP: TFloatField
      FieldName = 'SFP_CODEMP'
    end
    object Qr_Sol_Pend_ResSFP_ID_ANO: TFloatField
      DisplayLabel = 'Ano'
      FieldName = 'SFP_ID_ANO'
    end
    object Qr_Sol_Pend_ResSFP_ID: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'SFP_ID'
    end
    object Qr_Sol_Pend_ResCRM_MEDICO: TStringField
      DisplayLabel = 'CRM Medico'
      FieldName = 'CRM_MEDICO'
    end
    object Qr_Sol_Pend_ResCRM_MEDICO_UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CRM_MEDICO_UF'
      Size = 2
    end
    object Qr_Sol_Pend_ResDATARECEITA: TDateTimeField
      DisplayLabel = 'Data Receita'
      FieldName = 'DATARECEITA'
    end
    object Qr_Sol_Pend_ResCODVEN: TFloatField
      DisplayLabel = 'C'#243'd. Vend'
      FieldName = 'CODVEN'
    end
    object Qr_Sol_Pend_ResNOMVEN: TStringField
      DisplayLabel = 'Nome do Vendedor'
      FieldName = 'NOMVEN'
      Size = 40
    end
    object Qr_Sol_Pend_ResCLIENTE_CPF: TStringField
      DisplayLabel = 'CPF do Comprador'
      FieldName = 'CLIENTE_CPF'
      Size = 15
    end
    object Qr_Sol_Pend_ResCLIENTE_NOME: TStringField
      DisplayLabel = 'Nome Comprador'
      FieldName = 'CLIENTE_NOME'
      Size = 100
    end
    object Qr_Sol_Pend_ResQTDPRESC: TFloatField
      DisplayLabel = 'Qtd.Tot.Presc'
      FieldName = 'QTDPRESC'
    end
    object Qr_Sol_Pend_ResQTDSOL: TFloatField
      DisplayLabel = 'Qtd.Tot.Solic'
      FieldName = 'QTDSOL'
    end
    object Qr_Sol_Pend_ResQTDAUT: TFloatField
      DisplayLabel = 'Qtd. Autorizada'
      FieldName = 'QTDAUT'
    end
    object Qr_Sol_Pend_ResTOTAL_SOL: TFloatField
      DisplayLabel = 'Vlr.Tot.Solic'
      FieldName = 'TOTAL_SOL'
    end
    object Qr_Sol_Pend_ResTOTPAGO_MS: TFloatField
      DisplayLabel = 'Total Pago MS'
      FieldName = 'TOTPAGO_MS'
    end
    object Qr_Sol_Pend_ResTOTPAGO_CLIENTE: TFloatField
      DisplayLabel = 'Total Pago Cliente'
      FieldName = 'TOTPAGO_CLIENTE'
    end
  end
  object Qr_Sol_Pend: TQuery
    CachedUpdates = True
    AfterInsert = Qr_Sol_PendAfterInsert
    AfterEdit = Qr_Sol_PendAfterEdit
    BeforePost = Qr_Sol_PendBeforePost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT CADSOL_FP.*'
      ',SFP_PCO_UNI_VENDA*SFP_QTDSOL AS valortot_sol'
      ',VNOME as nomven'
      ',PDNOME as nompro'
      
        ','#39'Incluido por '#39' || NVL(SFP_CODUSR_INC,0) || '#39'-'#39' || NVL(SFP_NOMU' +
        'SR_INC,'#39#39') || '#39' em '#39
      '||  TO_CHAR(NVL(SFP_DATHOR_INC,SYSDATE), '#39'dd/mm/yyyy hh:MM:ss'#39')'
      
        '|| case when NVL(SFP_CODUSR_ALT,0)=0 then '#39#39' else '#39' alterado por' +
        ' '#39' ||'
      
        'NVL(SFP_CODUSR_ALT,'#39#39') || '#39'-'#39' || NVL(SFP_NOMUSR_ALT,'#39#39') || '#39' em ' +
        #39' ||'
      'TO_CHAR(NVL(SFP_DATHOR_ALT,SYSDATE), '#39'dd/mm/yyyy hh:mm:ss'#39' ) end'
      ' as incluso'
      ' from'
      'CADSOL_FP,CADPRO,CADVEN'
      'where VCODVEN=SFP_CODVEN'
      'and PDCODPRO=SFP_CODPRO')
    UpdateObject = U_Sol_Pend
    Left = 680
    Top = 176
    object Qr_Sol_PendSFP_CODEMP: TFloatField
      FieldName = 'SFP_CODEMP'
    end
    object Qr_Sol_PendSFP_ID_ANO: TFloatField
      DisplayLabel = 'Ano'
      FieldName = 'SFP_ID_ANO'
    end
    object Qr_Sol_PendSFP_ID: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'SFP_ID'
    end
    object Qr_Sol_PendSFP_ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'SFP_ITEM'
    end
    object Qr_Sol_PendSFP_CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Prod'
      FieldName = 'SFP_CODPRO'
    end
    object Qr_Sol_PendSFP_CODBAR: TStringField
      DisplayLabel = 'C'#243'd.Barras'
      FieldName = 'SFP_CODBAR'
      Size = 14
    end
    object Qr_Sol_PendSFP_QTDPRESC: TFloatField
      DisplayLabel = 'Qtd.Prescrita'
      FieldName = 'SFP_QTDPRESC'
    end
    object Qr_Sol_PendSFP_QTDSOL: TFloatField
      DisplayLabel = 'Qtd.Solic'
      FieldName = 'SFP_QTDSOL'
    end
    object Qr_Sol_PendSFP_QTDAUT: TFloatField
      FieldName = 'SFP_QTDAUT'
    end
    object Qr_Sol_PendSFP_PCO_UNI_VENDA: TFloatField
      DisplayLabel = 'P'#231'o.Unit.Venda'
      FieldName = 'SFP_PCO_UNI_VENDA'
    end
    object Qr_Sol_PendSFP_QTD_CPR_ML_DIA: TFloatField
      DisplayLabel = 'Qtd.Comp/ML ao dia'
      FieldName = 'SFP_QTD_CPR_ML_DIA'
    end
    object Qr_Sol_PendSFP_MENS_RECEPCAO: TMemoField
      FieldName = 'SFP_MENS_RECEPCAO'
      BlobType = ftMemo
      Size = 2000
    end
    object Qr_Sol_PendSFP_NUMAUT: TStringField
      FieldName = 'SFP_NUMAUT'
      Size = 30
    end
    object Qr_Sol_PendSFP_PAGO_MS: TFloatField
      FieldName = 'SFP_PAGO_MS'
    end
    object Qr_Sol_PendSFP_PAGO_CLIENTE: TFloatField
      FieldName = 'SFP_PAGO_CLIENTE'
    end
    object Qr_Sol_PendSFP_CRM_MEDICO: TStringField
      FieldName = 'SFP_CRM_MEDICO'
    end
    object Qr_Sol_PendSFP_CRM_MEDICO_UF: TStringField
      FieldName = 'SFP_CRM_MEDICO_UF'
      Size = 2
    end
    object Qr_Sol_PendSFP_DATARECEITA: TDateTimeField
      FieldName = 'SFP_DATARECEITA'
    end
    object Qr_Sol_PendSFP_CODVEN: TFloatField
      FieldName = 'SFP_CODVEN'
    end
    object Qr_Sol_PendSFP_STATUS: TFloatField
      FieldName = 'SFP_STATUS'
    end
    object Qr_Sol_PendSFP_DATHOR_INC: TDateTimeField
      FieldName = 'SFP_DATHOR_INC'
    end
    object Qr_Sol_PendSFP_CODUSR_INC: TFloatField
      FieldName = 'SFP_CODUSR_INC'
    end
    object Qr_Sol_PendSFP_NOMUSR_INC: TStringField
      FieldName = 'SFP_NOMUSR_INC'
      Size = 40
    end
    object Qr_Sol_PendSFP_DATHOR_ALT: TDateTimeField
      FieldName = 'SFP_DATHOR_ALT'
    end
    object Qr_Sol_PendSFP_CODUSR_ALT: TFloatField
      FieldName = 'SFP_CODUSR_ALT'
    end
    object Qr_Sol_PendSFP_NOMUSR_ALT: TStringField
      FieldName = 'SFP_NOMUSR_ALT'
      Size = 40
    end
    object Qr_Sol_PendSFP_CLIENTE_CPF: TStringField
      FieldName = 'SFP_CLIENTE_CPF'
      Size = 15
    end
    object Qr_Sol_PendSFP_CLIENTE_NOME: TStringField
      FieldName = 'SFP_CLIENTE_NOME'
      Size = 100
    end
    object Qr_Sol_PendVALORTOT_SOL: TFloatField
      DisplayLabel = 'Total Solicitado'
      FieldName = 'VALORTOT_SOL'
    end
    object Qr_Sol_PendNOMVEN: TStringField
      FieldName = 'NOMVEN'
      Size = 40
    end
    object Qr_Sol_PendNOMPRO: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'NOMPRO'
      Size = 120
    end
    object Qr_Sol_PendINCLUSO: TStringField
      FieldName = 'INCLUSO'
      Size = 235
    end
    object Qr_Sol_PendSFP_QTDEMB: TFloatField
      FieldName = 'SFP_QTDEMB'
    end
    object Qr_Sol_PendSFP_STATUS_RECECAO: TStringField
      FieldName = 'SFP_STATUS_RECECAO'
      Size = 3
    end
  end
  object Src_Qr_Sol_Pend: TDataSource
    DataSet = Qr_Sol_Pend
    Left = 714
    Top = 178
  end
  object U_Sol_Pend: TUpdateSQL
    ModifySQL.Strings = (
      'update CADSOL_FP'
      'set'
      '  SFP_CODEMP = :SFP_CODEMP,'
      '  SFP_ID_ANO = :SFP_ID_ANO,'
      '  SFP_ID = :SFP_ID,'
      '  SFP_ITEM = :SFP_ITEM,'
      '  SFP_CODPRO = :SFP_CODPRO,'
      '  SFP_CODBAR = :SFP_CODBAR,'
      '  SFP_QTDPRESC = :SFP_QTDPRESC,'
      '  SFP_QTDSOL = :SFP_QTDSOL,'
      '  SFP_QTDAUT = :SFP_QTDAUT,'
      '  SFP_PCO_UNI_VENDA = :SFP_PCO_UNI_VENDA,'
      '  SFP_QTD_CPR_ML_DIA = :SFP_QTD_CPR_ML_DIA,'
      '  SFP_MENS_RECEPCAO = :SFP_MENS_RECEPCAO,'
      '  SFP_NUMAUT = :SFP_NUMAUT,'
      '  SFP_PAGO_MS = :SFP_PAGO_MS,'
      '  SFP_PAGO_CLIENTE = :SFP_PAGO_CLIENTE,'
      '  SFP_CRM_MEDICO = :SFP_CRM_MEDICO,'
      '  SFP_CRM_MEDICO_UF = :SFP_CRM_MEDICO_UF,'
      '  SFP_DATARECEITA = :SFP_DATARECEITA,'
      '  SFP_CODVEN = :SFP_CODVEN,'
      '  SFP_STATUS = :SFP_STATUS,'
      '  SFP_DATHOR_INC = :SFP_DATHOR_INC,'
      '  SFP_CODUSR_INC = :SFP_CODUSR_INC,'
      '  SFP_NOMUSR_INC = :SFP_NOMUSR_INC,'
      '  SFP_DATHOR_ALT = :SFP_DATHOR_ALT,'
      '  SFP_CODUSR_ALT = :SFP_CODUSR_ALT,'
      '  SFP_NOMUSR_ALT = :SFP_NOMUSR_ALT,'
      '  SFP_CLIENTE_CPF = :SFP_CLIENTE_CPF,'
      '  SFP_CLIENTE_NOME = :SFP_CLIENTE_NOME,'
      '  SFP_QTDEMB = :SFP_QTDEMB,'
      '  SFP_STATUS_RECECAO = :SFP_STATUS_RECECAO'
      'where'
      '  SFP_CODEMP = :OLD_SFP_CODEMP and'
      '  SFP_ID_ANO = :OLD_SFP_ID_ANO and'
      '  SFP_ID = :OLD_SFP_ID and'
      '  SFP_ITEM = :OLD_SFP_ITEM')
    InsertSQL.Strings = (
      'insert into CADSOL_FP'
      
        '  (SFP_CODEMP, SFP_ID_ANO, SFP_ID, SFP_ITEM, SFP_CODPRO, SFP_COD' +
        'BAR, SFP_QTDPRESC, '
      
        '   SFP_QTDSOL, SFP_QTDAUT, SFP_PCO_UNI_VENDA, SFP_QTD_CPR_ML_DIA' +
        ', SFP_MENS_RECEPCAO, '
      
        '   SFP_NUMAUT, SFP_PAGO_MS, SFP_PAGO_CLIENTE, SFP_CRM_MEDICO, SF' +
        'P_CRM_MEDICO_UF, '
      
        '   SFP_DATARECEITA, SFP_CODVEN, SFP_STATUS, SFP_DATHOR_INC, SFP_' +
        'CODUSR_INC, '
      
        '   SFP_NOMUSR_INC, SFP_DATHOR_ALT, SFP_CODUSR_ALT, SFP_NOMUSR_AL' +
        'T, SFP_CLIENTE_CPF, '
      '   SFP_CLIENTE_NOME, SFP_QTDEMB, SFP_STATUS_RECECAO)'
      'values'
      
        '  (:SFP_CODEMP, :SFP_ID_ANO, :SFP_ID, :SFP_ITEM, :SFP_CODPRO, :S' +
        'FP_CODBAR, '
      
        '   :SFP_QTDPRESC, :SFP_QTDSOL, :SFP_QTDAUT, :SFP_PCO_UNI_VENDA, ' +
        ':SFP_QTD_CPR_ML_DIA, '
      
        '   :SFP_MENS_RECEPCAO, :SFP_NUMAUT, :SFP_PAGO_MS, :SFP_PAGO_CLIE' +
        'NTE, :SFP_CRM_MEDICO, '
      
        '   :SFP_CRM_MEDICO_UF, :SFP_DATARECEITA, :SFP_CODVEN, :SFP_STATU' +
        'S, :SFP_DATHOR_INC, '
      
        '   :SFP_CODUSR_INC, :SFP_NOMUSR_INC, :SFP_DATHOR_ALT, :SFP_CODUS' +
        'R_ALT, '
      
        '   :SFP_NOMUSR_ALT, :SFP_CLIENTE_CPF, :SFP_CLIENTE_NOME, :SFP_QT' +
        'DEMB, :SFP_STATUS_RECECAO)')
    DeleteSQL.Strings = (
      'delete from CADSOL_FP'
      'where'
      '  SFP_CODEMP = :OLD_SFP_CODEMP and'
      '  SFP_ID_ANO = :OLD_SFP_ID_ANO and'
      '  SFP_ID = :OLD_SFP_ID and'
      '  SFP_ITEM = :OLD_SFP_ITEM')
    Left = 752
    Top = 176
  end
  object U_Sol_Pend_Res: TUpdateSQL
    ModifySQL.Strings = (
      'update CADSOL_FP'
      'set'
      '  SFP_CODEMP = :SFP_CODEMP,'
      '  SFP_ID_ANO = :SFP_ID_ANO,'
      '  SFP_ID = :SFP_ID,'
      '  CRM_MEDICO = :CRM_MEDICO,'
      '  CRM_MEDICO_UF = :CRM_MEDICO_UF,'
      '  DATARECEITA = :DATARECEITA,'
      '  CODVEN = :CODVEN,'
      '  NOMVEN = :NOMVEN,'
      '  CLIENTE_CPF = :CLIENTE_CPF,'
      '  CLIENTE_NOME = :CLIENTE_NOME,'
      '  QTDPRESC = :QTDPRESC,'
      '  QTDSOL = :QTDSOL,'
      '  QTDAUT = :QTDAUT,'
      '  TOTAL_SOL = :TOTAL_SOL,'
      '  TOTPAGO_MS = :TOTPAGO_MS,'
      '  TOTPAGO_CLIENTE = :TOTPAGO_CLIENTE'
      'where'
      '  SFP_CODEMP = :OLD_SFP_CODEMP and'
      '  SFP_ID_ANO = :OLD_SFP_ID_ANO and'
      '  SFP_ID = :OLD_SFP_ID')
    InsertSQL.Strings = (
      'insert into CADSOL_FP'
      
        '  (SFP_CODEMP, SFP_ID_ANO, SFP_ID, CRM_MEDICO, CRM_MEDICO_UF, DA' +
        'TARECEITA, '
      
        '   CODVEN, NOMVEN, CLIENTE_CPF, CLIENTE_NOME, QTDPRESC, QTDSOL, ' +
        'QTDAUT, '
      '   TOTAL_SOL, TOTPAGO_MS, TOTPAGO_CLIENTE)'
      'values'
      
        '  (:SFP_CODEMP, :SFP_ID_ANO, :SFP_ID, :CRM_MEDICO, :CRM_MEDICO_U' +
        'F, :DATARECEITA, '
      
        '   :CODVEN, :NOMVEN, :CLIENTE_CPF, :CLIENTE_NOME, :QTDPRESC, :QT' +
        'DSOL, :QTDAUT, '
      '   :TOTAL_SOL, :TOTPAGO_MS, :TOTPAGO_CLIENTE)')
    DeleteSQL.Strings = (
      'delete from CADSOL_FP'
      'where'
      '  SFP_CODEMP = :OLD_SFP_CODEMP and'
      '  SFP_ID_ANO = :OLD_SFP_ID_ANO and'
      '  SFP_ID = :OLD_SFP_ID')
    Left = 736
    Top = 136
  end
  object Qr_Sol_Envidadas_Res: TQuery
    CachedUpdates = True
    AfterInsert = Qr_Sol_Pend_ResAfterInsert
    AfterEdit = Qr_Sol_Pend_ResAfterEdit
    BeforePost = Qr_Sol_Pend_ResBeforePost
    AfterPost = Qr_Sol_Pend_ResAfterPost
    AfterCancel = Qr_Sol_Pend_ResAfterCancel
    AfterDelete = Qr_Sol_Pend_ResAfterDelete
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT SFP_CODEMP,SFP_ID_ANO,SFP_ID'
      ',max(SFP_CRM_MEDICO) as CRM_MEDICO'
      ',max(SFP_CRM_MEDICO_UF) as CRM_MEDICO_UF'
      ',max(SFP_DATARECEITA) as DATARECEITA'
      ',max(SFP_CODVEN) as CODVEN'
      ',max(VNOME) as nomven'
      ',max(SFP_CLIENTE_CPF) as CLIENTE_CPF'
      ',max(SFP_CLIENTE_NOME) as CLIENTE_NOME'
      ',sum(SFP_QTDPRESC) as QTDPRESC'
      ',sum(SFP_QTDSOL) as QTDSOL'
      ',sum(SFP_QTDAUT) as QTDAUT'
      ',round( sum(SFP_PCO_UNI_VENDA*SFP_QTDSOL) ,2) as TOTAL_SOL'
      ',sum(SFP_PAGO_MS) as TOTPAGO_MS'
      ',sum(SFP_PAGO_CLIENTE) as TOTPAGO_CLIENTE'
      ' from'
      'CADSOL_FP,CADPRO,CADVEN'
      'where VCODVEN=SFP_CODVEN'
      'and PDCODPRO=SFP_CODPRO'
      'GROUP BY SFP_CODEMP,SFP_ID_ANO,SFP_ID')
    UpdateObject = U_Sol_Envidadas_Res
    Left = 792
    Top = 136
    object Qr_Sol_Envidadas_ResSFP_ID_ANO: TFloatField
      DisplayLabel = 'Ano'
      FieldName = 'SFP_ID_ANO'
    end
    object Qr_Sol_Envidadas_ResSFP_CODEMP: TFloatField
      FieldName = 'SFP_CODEMP'
    end
    object Qr_Sol_Envidadas_ResSFP_ID: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'SFP_ID'
    end
    object Qr_Sol_Envidadas_ResCRM_MEDICO: TStringField
      DisplayLabel = 'CRM Medido'
      FieldName = 'CRM_MEDICO'
    end
    object Qr_Sol_Envidadas_ResCRM_MEDICO_UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CRM_MEDICO_UF'
      Size = 2
    end
    object Qr_Sol_Envidadas_ResDATARECEITA: TDateTimeField
      DisplayLabel = 'Data Receita'
      FieldName = 'DATARECEITA'
    end
    object Qr_Sol_Envidadas_ResCODVEN: TFloatField
      DisplayLabel = 'C'#243'd.Vend'
      FieldName = 'CODVEN'
    end
    object Qr_Sol_Envidadas_ResNOMVEN: TStringField
      DisplayLabel = 'Nome do Vendedor'
      FieldName = 'NOMVEN'
      Size = 40
    end
    object Qr_Sol_Envidadas_ResCLIENTE_CPF: TStringField
      DisplayLabel = 'CPF do Comprador'
      FieldName = 'CLIENTE_CPF'
      Size = 15
    end
    object Qr_Sol_Envidadas_ResCLIENTE_NOME: TStringField
      DisplayLabel = 'Nome do Comprador'
      FieldName = 'CLIENTE_NOME'
      Size = 100
    end
    object Qr_Sol_Envidadas_ResQTDPRESC: TFloatField
      DisplayLabel = 'Qtd.Tot.Presc'
      FieldName = 'QTDPRESC'
    end
    object Qr_Sol_Envidadas_ResQTDSOL: TFloatField
      DisplayLabel = 'Qtd.Tot.Sol'
      FieldName = 'QTDSOL'
    end
    object Qr_Sol_Envidadas_ResQTDAUT: TFloatField
      DisplayLabel = 'Qtd.Tot.Autor'
      FieldName = 'QTDAUT'
    end
    object Qr_Sol_Envidadas_ResTOTAL_SOL: TFloatField
      DisplayLabel = 'Vlr.Tot.Solic'
      FieldName = 'TOTAL_SOL'
    end
    object Qr_Sol_Envidadas_ResTOTPAGO_MS: TFloatField
      DisplayLabel = 'Total Pago MS'
      FieldName = 'TOTPAGO_MS'
    end
    object Qr_Sol_Envidadas_ResTOTPAGO_CLIENTE: TFloatField
      DisplayLabel = 'Total Pago Cliente'
      FieldName = 'TOTPAGO_CLIENTE'
    end
  end
  object src_Sol_Envidadas_Res: TDataSource
    DataSet = Qr_Sol_Envidadas_Res
    OnDataChange = src_Sol_Envidadas_ResDataChange
    Left = 826
    Top = 138
  end
  object U_Sol_Envidadas_Res: TUpdateSQL
    ModifySQL.Strings = (
      'update CADSOL_FP'
      'set'
      '  SFP_CODEMP = :SFP_CODEMP,'
      '  SFP_ID_ANO = :SFP_ID_ANO,'
      '  SFP_ID = :SFP_ID,'
      '  CRM_MEDICO = :CRM_MEDICO,'
      '  CRM_MEDICO_UF = :CRM_MEDICO_UF,'
      '  DATARECEITA = :DATARECEITA,'
      '  CODVEN = :CODVEN,'
      '  NOMVEN = :NOMVEN,'
      '  CLIENTE_CPF = :CLIENTE_CPF,'
      '  CLIENTE_NOME = :CLIENTE_NOME,'
      '  QTDPRESC = :QTDPRESC,'
      '  QTDSOL = :QTDSOL,'
      '  QTDAUT = :QTDAUT,'
      '  TOTAL_SOL = :TOTAL_SOL,'
      '  TOTPAGO_MS = :TOTPAGO_MS,'
      '  TOTPAGO_CLIENTE = :TOTPAGO_CLIENTE'
      'where'
      '  SFP_CODEMP = :OLD_SFP_CODEMP and'
      '  SFP_ID_ANO = :OLD_SFP_ID_ANO and'
      '  SFP_ID = :OLD_SFP_ID')
    InsertSQL.Strings = (
      'insert into CADSOL_FP'
      
        '  (SFP_CODEMP, SFP_ID_ANO, SFP_ID, CRM_MEDICO, CRM_MEDICO_UF, DA' +
        'TARECEITA, '
      
        '   CODVEN, NOMVEN, CLIENTE_CPF, CLIENTE_NOME, QTDPRESC, QTDSOL, ' +
        'QTDAUT, '
      '   TOTAL_SOL, TOTPAGO_MS, TOTPAGO_CLIENTE)'
      'values'
      
        '  (:SFP_CODEMP, :SFP_ID_ANO, :SFP_ID, :CRM_MEDICO, :CRM_MEDICO_U' +
        'F, :DATARECEITA, '
      
        '   :CODVEN, :NOMVEN, :CLIENTE_CPF, :CLIENTE_NOME, :QTDPRESC, :QT' +
        'DSOL, :QTDAUT, '
      '   :TOTAL_SOL, :TOTPAGO_MS, :TOTPAGO_CLIENTE)')
    DeleteSQL.Strings = (
      'delete from CADSOL_FP'
      'where'
      '  SFP_CODEMP = :OLD_SFP_CODEMP and'
      '  SFP_ID_ANO = :OLD_SFP_ID_ANO and'
      '  SFP_ID = :OLD_SFP_ID')
    Left = 856
    Top = 136
  end
  object Qr_Sol_Envidadas: TQuery
    CachedUpdates = True
    AfterInsert = Qr_Sol_PendAfterInsert
    AfterEdit = Qr_Sol_PendAfterEdit
    BeforePost = Qr_Sol_PendBeforePost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT CADSOL_FP.*'
      ',SFP_PCO_UNI_VENDA*SFP_QTDSOL AS valortot_sol'
      ',VNOME as nomven'
      ',PDNOME as nompro'
      
        ','#39'Incluido por '#39' || NVL(SFP_CODUSR_INC,0) || '#39'-'#39' || NVL(SFP_NOMU' +
        'SR_INC,'#39#39') || '#39' em '#39
      '||  TO_CHAR(NVL(SFP_DATHOR_INC,SYSDATE), '#39'dd/mm/yyyy hh:MM:ss'#39')'
      
        '|| case when NVL(SFP_CODUSR_ALT,0)=0 then '#39#39' else '#39' alterado por' +
        ' '#39' ||'
      
        'NVL(SFP_CODUSR_ALT,'#39#39') || '#39'-'#39' || NVL(SFP_NOMUSR_ALT,'#39#39') || '#39' em ' +
        #39' ||'
      'TO_CHAR(NVL(SFP_DATHOR_ALT,SYSDATE), '#39'dd/mm/yyyy hh:mm:ss'#39' ) end'
      ' as incluso'
      ' from'
      'CADSOL_FP,CADPRO,CADVEN'
      'where VCODVEN=SFP_CODVEN'
      'and PDCODPRO=SFP_CODPRO')
    UpdateObject = U_Sol_Envidadas
    Left = 800
    Top = 176
    object Qr_Sol_EnvidadasSFP_CODEMP: TFloatField
      FieldName = 'SFP_CODEMP'
    end
    object Qr_Sol_EnvidadasSFP_ID_ANO: TFloatField
      FieldName = 'SFP_ID_ANO'
    end
    object Qr_Sol_EnvidadasSFP_ID: TFloatField
      FieldName = 'SFP_ID'
    end
    object Qr_Sol_EnvidadasSFP_ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'SFP_ITEM'
    end
    object Qr_Sol_EnvidadasSFP_CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'SFP_CODPRO'
    end
    object Qr_Sol_EnvidadasSFP_CODBAR: TStringField
      DisplayLabel = 'C'#243'd. Barras'
      FieldName = 'SFP_CODBAR'
      Size = 14
    end
    object Qr_Sol_EnvidadasSFP_QTDPRESC: TFloatField
      DisplayLabel = 'Qtd. Prescrita'
      FieldName = 'SFP_QTDPRESC'
    end
    object Qr_Sol_EnvidadasSFP_QTDSOL: TFloatField
      DisplayLabel = 'Qtd.Solic'
      FieldName = 'SFP_QTDSOL'
    end
    object Qr_Sol_EnvidadasSFP_QTDAUT: TFloatField
      FieldName = 'SFP_QTDAUT'
    end
    object Qr_Sol_EnvidadasSFP_PCO_UNI_VENDA: TFloatField
      DisplayLabel = 'P'#231'o.Unit.Venda'
      FieldName = 'SFP_PCO_UNI_VENDA'
    end
    object Qr_Sol_EnvidadasSFP_QTD_CPR_ML_DIA: TFloatField
      DisplayLabel = 'Qtd.comp/ML ao dia'
      FieldName = 'SFP_QTD_CPR_ML_DIA'
    end
    object Qr_Sol_EnvidadasSFP_MENS_RECEPCAO: TMemoField
      FieldName = 'SFP_MENS_RECEPCAO'
      BlobType = ftMemo
      Size = 2000
    end
    object Qr_Sol_EnvidadasSFP_NUMAUT: TStringField
      FieldName = 'SFP_NUMAUT'
      Size = 30
    end
    object Qr_Sol_EnvidadasSFP_PAGO_MS: TFloatField
      DisplayLabel = 'Valor Pago MS'
      FieldName = 'SFP_PAGO_MS'
    end
    object Qr_Sol_EnvidadasSFP_PAGO_CLIENTE: TFloatField
      DisplayLabel = 'Valor Pago Cliente'
      FieldName = 'SFP_PAGO_CLIENTE'
    end
    object Qr_Sol_EnvidadasSFP_CRM_MEDICO: TStringField
      FieldName = 'SFP_CRM_MEDICO'
    end
    object Qr_Sol_EnvidadasSFP_CRM_MEDICO_UF: TStringField
      FieldName = 'SFP_CRM_MEDICO_UF'
      Size = 2
    end
    object Qr_Sol_EnvidadasSFP_DATARECEITA: TDateTimeField
      FieldName = 'SFP_DATARECEITA'
    end
    object Qr_Sol_EnvidadasSFP_CODVEN: TFloatField
      FieldName = 'SFP_CODVEN'
    end
    object Qr_Sol_EnvidadasSFP_STATUS: TFloatField
      FieldName = 'SFP_STATUS'
    end
    object Qr_Sol_EnvidadasSFP_DATHOR_INC: TDateTimeField
      FieldName = 'SFP_DATHOR_INC'
    end
    object Qr_Sol_EnvidadasSFP_CODUSR_INC: TFloatField
      FieldName = 'SFP_CODUSR_INC'
    end
    object Qr_Sol_EnvidadasSFP_NOMUSR_INC: TStringField
      FieldName = 'SFP_NOMUSR_INC'
      Size = 40
    end
    object Qr_Sol_EnvidadasSFP_DATHOR_ALT: TDateTimeField
      FieldName = 'SFP_DATHOR_ALT'
    end
    object Qr_Sol_EnvidadasSFP_CODUSR_ALT: TFloatField
      FieldName = 'SFP_CODUSR_ALT'
    end
    object Qr_Sol_EnvidadasSFP_NOMUSR_ALT: TStringField
      FieldName = 'SFP_NOMUSR_ALT'
      Size = 40
    end
    object Qr_Sol_EnvidadasSFP_CLIENTE_CPF: TStringField
      FieldName = 'SFP_CLIENTE_CPF'
      Size = 15
    end
    object Qr_Sol_EnvidadasSFP_CLIENTE_NOME: TStringField
      FieldName = 'SFP_CLIENTE_NOME'
      Size = 100
    end
    object Qr_Sol_EnvidadasSFP_QTDEMB: TFloatField
      FieldName = 'SFP_QTDEMB'
    end
    object Qr_Sol_EnvidadasSFP_STATUS_RECECAO: TStringField
      FieldName = 'SFP_STATUS_RECECAO'
      Size = 3
    end
    object Qr_Sol_EnvidadasVALORTOT_SOL: TFloatField
      DisplayLabel = 'Total Solicitado'
      FieldName = 'VALORTOT_SOL'
    end
    object Qr_Sol_EnvidadasNOMVEN: TStringField
      FieldName = 'NOMVEN'
      Size = 40
    end
    object Qr_Sol_EnvidadasNOMPRO: TStringField
      DisplayLabel = 'Descri'#231#227'o dos Produtos'
      FieldName = 'NOMPRO'
      Size = 120
    end
    object Qr_Sol_EnvidadasINCLUSO: TStringField
      FieldName = 'INCLUSO'
      Size = 235
    end
  end
  object Src_Sol_Envidadas: TDataSource
    DataSet = Qr_Sol_Envidadas
    Left = 834
    Top = 178
  end
  object U_Sol_Envidadas: TUpdateSQL
    ModifySQL.Strings = (
      'update CADSOL_FP'
      'set'
      '  SFP_CODEMP = :SFP_CODEMP,'
      '  SFP_ID_ANO = :SFP_ID_ANO,'
      '  SFP_ID = :SFP_ID,'
      '  SFP_ITEM = :SFP_ITEM,'
      '  SFP_CODPRO = :SFP_CODPRO,'
      '  SFP_CODBAR = :SFP_CODBAR,'
      '  SFP_QTDPRESC = :SFP_QTDPRESC,'
      '  SFP_QTDSOL = :SFP_QTDSOL,'
      '  SFP_QTDAUT = :SFP_QTDAUT,'
      '  SFP_PCO_UNI_VENDA = :SFP_PCO_UNI_VENDA,'
      '  SFP_QTD_CPR_ML_DIA = :SFP_QTD_CPR_ML_DIA,'
      '  SFP_MENS_RECEPCAO = :SFP_MENS_RECEPCAO,'
      '  SFP_NUMAUT = :SFP_NUMAUT,'
      '  SFP_PAGO_MS = :SFP_PAGO_MS,'
      '  SFP_PAGO_CLIENTE = :SFP_PAGO_CLIENTE,'
      '  SFP_CRM_MEDICO = :SFP_CRM_MEDICO,'
      '  SFP_CRM_MEDICO_UF = :SFP_CRM_MEDICO_UF,'
      '  SFP_DATARECEITA = :SFP_DATARECEITA,'
      '  SFP_CODVEN = :SFP_CODVEN,'
      '  SFP_STATUS = :SFP_STATUS,'
      '  SFP_DATHOR_INC = :SFP_DATHOR_INC,'
      '  SFP_CODUSR_INC = :SFP_CODUSR_INC,'
      '  SFP_NOMUSR_INC = :SFP_NOMUSR_INC,'
      '  SFP_DATHOR_ALT = :SFP_DATHOR_ALT,'
      '  SFP_CODUSR_ALT = :SFP_CODUSR_ALT,'
      '  SFP_NOMUSR_ALT = :SFP_NOMUSR_ALT,'
      '  SFP_CLIENTE_CPF = :SFP_CLIENTE_CPF,'
      '  SFP_CLIENTE_NOME = :SFP_CLIENTE_NOME,'
      '  SFP_QTDEMB = :SFP_QTDEMB,'
      '  SFP_STATUS_RECECAO = :SFP_STATUS_RECECAO'
      'where'
      '  SFP_CODEMP = :OLD_SFP_CODEMP and'
      '  SFP_ID_ANO = :OLD_SFP_ID_ANO and'
      '  SFP_ID = :OLD_SFP_ID and'
      '  SFP_ITEM = :OLD_SFP_ITEM')
    InsertSQL.Strings = (
      'insert into CADSOL_FP'
      '  (SFP_CODEMP, SFP_ID_ANO, SFP_ID, SFP_ITEM, SFP_CODPRO, '
      'SFP_CODBAR, SFP_QTDPRESC, '
      
        '   SFP_QTDSOL, SFP_QTDAUT, SFP_PCO_UNI_VENDA, SFP_QTD_CPR_ML_DIA' +
        ', '
      'SFP_MENS_RECEPCAO, '
      '   SFP_NUMAUT, SFP_PAGO_MS, SFP_PAGO_CLIENTE, SFP_CRM_MEDICO, '
      'SFP_CRM_MEDICO_UF, '
      '   SFP_DATARECEITA, SFP_CODVEN, SFP_STATUS, SFP_DATHOR_INC, '
      'SFP_CODUSR_INC, '
      '   SFP_NOMUSR_INC, SFP_DATHOR_ALT, SFP_CODUSR_ALT, '
      'SFP_NOMUSR_ALT, SFP_CLIENTE_CPF, '
      '   SFP_CLIENTE_NOME, SFP_QTDEMB, SFP_STATUS_RECECAO)'
      'values'
      '  (:SFP_CODEMP, :SFP_ID_ANO, :SFP_ID, :SFP_ITEM, :SFP_CODPRO, '
      ':SFP_CODBAR, '
      '   :SFP_QTDPRESC, :SFP_QTDSOL, :SFP_QTDAUT, :SFP_PCO_UNI_VENDA, '
      ':SFP_QTD_CPR_ML_DIA, '
      '   :SFP_MENS_RECEPCAO, :SFP_NUMAUT, :SFP_PAGO_MS, '
      ':SFP_PAGO_CLIENTE, :SFP_CRM_MEDICO, '
      
        '   :SFP_CRM_MEDICO_UF, :SFP_DATARECEITA, :SFP_CODVEN, :SFP_STATU' +
        'S, '
      ':SFP_DATHOR_INC, '
      '   :SFP_CODUSR_INC, :SFP_NOMUSR_INC, :SFP_DATHOR_ALT, '
      ':SFP_CODUSR_ALT, '
      '   :SFP_NOMUSR_ALT, :SFP_CLIENTE_CPF, :SFP_CLIENTE_NOME, '
      ':SFP_QTDEMB, :SFP_STATUS_RECECAO)')
    DeleteSQL.Strings = (
      'delete from CADSOL_FP'
      'where'
      '  SFP_CODEMP = :OLD_SFP_CODEMP and'
      '  SFP_ID_ANO = :OLD_SFP_ID_ANO and'
      '  SFP_ID = :OLD_SFP_ID and'
      '  SFP_ITEM = :OLD_SFP_ITEM')
    Left = 872
    Top = 176
  end
  object Qr_Sol_Concluidas_Res: TQuery
    CachedUpdates = True
    AfterInsert = Qr_Sol_Pend_ResAfterInsert
    AfterEdit = Qr_Sol_Pend_ResAfterEdit
    BeforePost = Qr_Sol_Pend_ResBeforePost
    AfterPost = Qr_Sol_Pend_ResAfterPost
    AfterCancel = Qr_Sol_Pend_ResAfterCancel
    AfterDelete = Qr_Sol_Pend_ResAfterDelete
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT SFP_CODEMP,SFP_ID_ANO,SFP_ID'
      ',max(SFP_CRM_MEDICO) as CRM_MEDICO'
      ',max(SFP_CRM_MEDICO_UF) as CRM_MEDICO_UF'
      ',max(SFP_DATARECEITA) as DATARECEITA'
      ',max(SFP_CODVEN) as CODVEN'
      ',max(VNOME) as nomven'
      ',max(SFP_CLIENTE_CPF) as CLIENTE_CPF'
      ',max(SFP_CLIENTE_NOME) as CLIENTE_NOME'
      ',sum(SFP_QTDPRESC) as QTDPRESC'
      ',sum(SFP_QTDSOL) as QTDSOL'
      ',sum(SFP_QTDAUT) as QTDAUT'
      ',round( sum(SFP_PCO_UNI_VENDA*SFP_QTDSOL) ,2) as TOTAL_SOL'
      ',sum(SFP_PAGO_MS) as TOTPAGO_MS'
      ',sum(SFP_PAGO_CLIENTE) as TOTPAGO_CLIENTE'
      ' from'
      'CADSOL_FP,CADPRO,CADVEN'
      'where VCODVEN=SFP_CODVEN'
      'and PDCODPRO=SFP_CODPRO'
      'GROUP BY SFP_CODEMP,SFP_ID_ANO,SFP_ID')
    UpdateObject = U_Sol_Concluidas_Res
    Left = 920
    Top = 136
    object Qr_Sol_Concluidas_ResSFP_CODEMP: TFloatField
      FieldName = 'SFP_CODEMP'
    end
    object Qr_Sol_Concluidas_ResSFP_ID_ANO: TFloatField
      DisplayLabel = 'Ano'
      FieldName = 'SFP_ID_ANO'
    end
    object Qr_Sol_Concluidas_ResSFP_ID: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'SFP_ID'
    end
    object Qr_Sol_Concluidas_ResCRM_MEDICO: TStringField
      DisplayLabel = 'CRM M'#233'dico'
      FieldName = 'CRM_MEDICO'
    end
    object Qr_Sol_Concluidas_ResCRM_MEDICO_UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CRM_MEDICO_UF'
      Size = 2
    end
    object Qr_Sol_Concluidas_ResDATARECEITA: TDateTimeField
      DisplayLabel = 'Data da Receita'
      FieldName = 'DATARECEITA'
    end
    object Qr_Sol_Concluidas_ResCODVEN: TFloatField
      DisplayLabel = 'C'#243'd.Vend'
      FieldName = 'CODVEN'
    end
    object Qr_Sol_Concluidas_ResNOMVEN: TStringField
      DisplayLabel = 'Nome do Vendedor'
      FieldName = 'NOMVEN'
      Size = 40
    end
    object Qr_Sol_Concluidas_ResCLIENTE_CPF: TStringField
      DisplayLabel = 'CPF do Comprador'
      FieldName = 'CLIENTE_CPF'
      Size = 15
    end
    object Qr_Sol_Concluidas_ResCLIENTE_NOME: TStringField
      DisplayLabel = 'Nome do Comprador'
      FieldName = 'CLIENTE_NOME'
      Size = 100
    end
    object Qr_Sol_Concluidas_ResQTDPRESC: TFloatField
      DisplayLabel = 'Qtd.Tot.Presc'
      FieldName = 'QTDPRESC'
    end
    object Qr_Sol_Concluidas_ResQTDSOL: TFloatField
      DisplayLabel = 'Tot.Qtd.sol'
      FieldName = 'QTDSOL'
    end
    object Qr_Sol_Concluidas_ResQTDAUT: TFloatField
      DisplayLabel = 'Qtd.Autorizada'
      FieldName = 'QTDAUT'
    end
    object Qr_Sol_Concluidas_ResTOTPAGO_MS: TFloatField
      DisplayLabel = 'Total Pago MS'
      FieldName = 'TOTPAGO_MS'
    end
    object Qr_Sol_Concluidas_ResTOTAL_SOL: TFloatField
      DisplayLabel = 'Vlr.Tot.Solic'
      FieldName = 'TOTAL_SOL'
    end
    object Qr_Sol_Concluidas_ResTOTPAGO_CLIENTE: TFloatField
      DisplayLabel = 'Total Pago Cliente'
      FieldName = 'TOTPAGO_CLIENTE'
    end
  end
  object Src_Sol_Concluidas_Res: TDataSource
    DataSet = Qr_Sol_Concluidas_Res
    OnDataChange = Src_Sol_Concluidas_ResDataChange
    Left = 954
    Top = 138
  end
  object U_Sol_Concluidas_Res: TUpdateSQL
    ModifySQL.Strings = (
      'update CADSOL_FP'
      'set'
      '  SFP_CODEMP = :SFP_CODEMP,'
      '  SFP_ID_ANO = :SFP_ID_ANO,'
      '  SFP_ID = :SFP_ID,'
      '  CRM_MEDICO = :CRM_MEDICO,'
      '  CRM_MEDICO_UF = :CRM_MEDICO_UF,'
      '  DATARECEITA = :DATARECEITA,'
      '  CODVEN = :CODVEN,'
      '  NOMVEN = :NOMVEN,'
      '  CLIENTE_CPF = :CLIENTE_CPF,'
      '  CLIENTE_NOME = :CLIENTE_NOME,'
      '  QTDPRESC = :QTDPRESC,'
      '  QTDSOL = :QTDSOL,'
      '  QTDAUT = :QTDAUT,'
      '  TOTAL_SOL = :TOTAL_SOL,'
      '  TOTPAGO_MS = :TOTPAGO_MS,'
      '  TOTPAGO_CLIENTE = :TOTPAGO_CLIENTE'
      'where'
      '  SFP_CODEMP = :OLD_SFP_CODEMP and'
      '  SFP_ID_ANO = :OLD_SFP_ID_ANO and'
      '  SFP_ID = :OLD_SFP_ID')
    InsertSQL.Strings = (
      'insert into CADSOL_FP'
      '  (SFP_CODEMP, SFP_ID_ANO, SFP_ID, CRM_MEDICO, CRM_MEDICO_UF, '
      'DATARECEITA, '
      '   CODVEN, NOMVEN, CLIENTE_CPF, CLIENTE_NOME, QTDPRESC, QTDSOL, '
      'QTDAUT, '
      '   TOTAL_SOL, TOTPAGO_MS, TOTPAGO_CLIENTE)'
      'values'
      
        '  (:SFP_CODEMP, :SFP_ID_ANO, :SFP_ID, :CRM_MEDICO, :CRM_MEDICO_U' +
        'F, '
      ':DATARECEITA, '
      
        '   :CODVEN, :NOMVEN, :CLIENTE_CPF, :CLIENTE_NOME, :QTDPRESC, :QT' +
        'DSOL, '
      ':QTDAUT, '
      '   :TOTAL_SOL, :TOTPAGO_MS, :TOTPAGO_CLIENTE)')
    DeleteSQL.Strings = (
      'delete from CADSOL_FP'
      'where'
      '  SFP_CODEMP = :OLD_SFP_CODEMP and'
      '  SFP_ID_ANO = :OLD_SFP_ID_ANO and'
      '  SFP_ID = :OLD_SFP_ID')
    Left = 984
    Top = 136
  end
  object Qr_Sol_Concluidas: TQuery
    CachedUpdates = True
    AfterInsert = Qr_Sol_PendAfterInsert
    AfterEdit = Qr_Sol_PendAfterEdit
    BeforePost = Qr_Sol_PendBeforePost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT CADSOL_FP.*'
      ',SFP_PCO_UNI_VENDA*SFP_QTDSOL AS valortot_sol'
      ',VNOME as nomven'
      ',PDNOME as nompro'
      
        ','#39'Incluido por '#39' || NVL(SFP_CODUSR_INC,0) || '#39'-'#39' || NVL(SFP_NOMU' +
        'SR_INC,'#39#39') || '#39' em '#39
      '||  TO_CHAR(NVL(SFP_DATHOR_INC,SYSDATE), '#39'dd/mm/yyyy hh:MM:ss'#39')'
      
        '|| case when NVL(SFP_CODUSR_ALT,0)=0 then '#39#39' else '#39' alterado por' +
        ' '#39' ||'
      
        'NVL(SFP_CODUSR_ALT,'#39#39') || '#39'-'#39' || NVL(SFP_NOMUSR_ALT,'#39#39') || '#39' em ' +
        #39' ||'
      'TO_CHAR(NVL(SFP_DATHOR_ALT,SYSDATE), '#39'dd/mm/yyyy hh:mm:ss'#39' ) end'
      ' as incluso'
      ' from'
      'CADSOL_FP,CADPRO,CADVEN'
      'where VCODVEN=SFP_CODVEN'
      'and PDCODPRO=SFP_CODPRO')
    UpdateObject = U_Sol_Concluidas
    Left = 928
    Top = 176
    object Qr_Sol_ConcluidasSFP_CODEMP: TFloatField
      FieldName = 'SFP_CODEMP'
    end
    object Qr_Sol_ConcluidasSFP_ID_ANO: TFloatField
      FieldName = 'SFP_ID_ANO'
    end
    object Qr_Sol_ConcluidasSFP_ID: TFloatField
      FieldName = 'SFP_ID'
    end
    object Qr_Sol_ConcluidasSFP_ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'SFP_ITEM'
    end
    object Qr_Sol_ConcluidasSFP_CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Produto'
      FieldName = 'SFP_CODPRO'
    end
    object Qr_Sol_ConcluidasSFP_CODBAR: TStringField
      DisplayLabel = 'C'#243'd.Barras'
      FieldName = 'SFP_CODBAR'
      Size = 14
    end
    object Qr_Sol_ConcluidasSFP_QTDPRESC: TFloatField
      DisplayLabel = 'Qtd.Prescrita'
      FieldName = 'SFP_QTDPRESC'
    end
    object Qr_Sol_ConcluidasSFP_QTDSOL: TFloatField
      DisplayLabel = 'Qtd.Solic'
      FieldName = 'SFP_QTDSOL'
    end
    object Qr_Sol_ConcluidasSFP_QTDAUT: TFloatField
      DisplayLabel = 'Qtd.Autorizada'
      FieldName = 'SFP_QTDAUT'
    end
    object Qr_Sol_ConcluidasSFP_PCO_UNI_VENDA: TFloatField
      DisplayLabel = 'P'#231'o.Unit.Venda'
      FieldName = 'SFP_PCO_UNI_VENDA'
    end
    object Qr_Sol_ConcluidasSFP_QTD_CPR_ML_DIA: TFloatField
      DisplayLabel = 'Qtd.Comp/ML ao dia'
      FieldName = 'SFP_QTD_CPR_ML_DIA'
    end
    object Qr_Sol_ConcluidasSFP_MENS_RECEPCAO: TMemoField
      FieldName = 'SFP_MENS_RECEPCAO'
      BlobType = ftMemo
      Size = 2000
    end
    object Qr_Sol_ConcluidasSFP_NUMAUT: TStringField
      FieldName = 'SFP_NUMAUT'
      Size = 30
    end
    object Qr_Sol_ConcluidasSFP_PAGO_MS: TFloatField
      DisplayLabel = 'Pago MS'
      FieldName = 'SFP_PAGO_MS'
    end
    object Qr_Sol_ConcluidasSFP_PAGO_CLIENTE: TFloatField
      DisplayLabel = 'Pago p/Cliente'
      FieldName = 'SFP_PAGO_CLIENTE'
    end
    object Qr_Sol_ConcluidasSFP_CRM_MEDICO: TStringField
      FieldName = 'SFP_CRM_MEDICO'
    end
    object Qr_Sol_ConcluidasSFP_CRM_MEDICO_UF: TStringField
      FieldName = 'SFP_CRM_MEDICO_UF'
      Size = 2
    end
    object Qr_Sol_ConcluidasSFP_DATARECEITA: TDateTimeField
      FieldName = 'SFP_DATARECEITA'
    end
    object Qr_Sol_ConcluidasSFP_CODVEN: TFloatField
      FieldName = 'SFP_CODVEN'
    end
    object Qr_Sol_ConcluidasSFP_STATUS: TFloatField
      FieldName = 'SFP_STATUS'
    end
    object Qr_Sol_ConcluidasSFP_DATHOR_INC: TDateTimeField
      FieldName = 'SFP_DATHOR_INC'
    end
    object Qr_Sol_ConcluidasSFP_CODUSR_INC: TFloatField
      FieldName = 'SFP_CODUSR_INC'
    end
    object Qr_Sol_ConcluidasSFP_NOMUSR_INC: TStringField
      FieldName = 'SFP_NOMUSR_INC'
      Size = 40
    end
    object Qr_Sol_ConcluidasSFP_DATHOR_ALT: TDateTimeField
      FieldName = 'SFP_DATHOR_ALT'
    end
    object Qr_Sol_ConcluidasSFP_CODUSR_ALT: TFloatField
      FieldName = 'SFP_CODUSR_ALT'
    end
    object Qr_Sol_ConcluidasSFP_NOMUSR_ALT: TStringField
      FieldName = 'SFP_NOMUSR_ALT'
      Size = 40
    end
    object Qr_Sol_ConcluidasSFP_CLIENTE_CPF: TStringField
      FieldName = 'SFP_CLIENTE_CPF'
      Size = 15
    end
    object Qr_Sol_ConcluidasSFP_CLIENTE_NOME: TStringField
      FieldName = 'SFP_CLIENTE_NOME'
      Size = 100
    end
    object Qr_Sol_ConcluidasSFP_QTDEMB: TFloatField
      FieldName = 'SFP_QTDEMB'
    end
    object Qr_Sol_ConcluidasSFP_STATUS_RECECAO: TStringField
      FieldName = 'SFP_STATUS_RECECAO'
      Size = 3
    end
    object Qr_Sol_ConcluidasVALORTOT_SOL: TFloatField
      DisplayLabel = 'Total solicitado'
      FieldName = 'VALORTOT_SOL'
    end
    object Qr_Sol_ConcluidasNOMVEN: TStringField
      FieldName = 'NOMVEN'
      Size = 40
    end
    object Qr_Sol_ConcluidasNOMPRO: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'NOMPRO'
      Size = 120
    end
    object Qr_Sol_ConcluidasINCLUSO: TStringField
      FieldName = 'INCLUSO'
      Size = 235
    end
  end
  object src_Sol_Concluidas: TDataSource
    DataSet = Qr_Sol_Concluidas
    Left = 962
    Top = 178
  end
  object U_Sol_Concluidas: TUpdateSQL
    ModifySQL.Strings = (
      'update CADSOL_FP'
      'set'
      '  SFP_CODEMP = :SFP_CODEMP,'
      '  SFP_ID_ANO = :SFP_ID_ANO,'
      '  SFP_ID = :SFP_ID,'
      '  SFP_ITEM = :SFP_ITEM,'
      '  SFP_CODPRO = :SFP_CODPRO,'
      '  SFP_CODBAR = :SFP_CODBAR,'
      '  SFP_QTDPRESC = :SFP_QTDPRESC,'
      '  SFP_QTDSOL = :SFP_QTDSOL,'
      '  SFP_QTDAUT = :SFP_QTDAUT,'
      '  SFP_PCO_UNI_VENDA = :SFP_PCO_UNI_VENDA,'
      '  SFP_QTD_CPR_ML_DIA = :SFP_QTD_CPR_ML_DIA,'
      '  SFP_MENS_RECEPCAO = :SFP_MENS_RECEPCAO,'
      '  SFP_NUMAUT = :SFP_NUMAUT,'
      '  SFP_PAGO_MS = :SFP_PAGO_MS,'
      '  SFP_PAGO_CLIENTE = :SFP_PAGO_CLIENTE,'
      '  SFP_CRM_MEDICO = :SFP_CRM_MEDICO,'
      '  SFP_CRM_MEDICO_UF = :SFP_CRM_MEDICO_UF,'
      '  SFP_DATARECEITA = :SFP_DATARECEITA,'
      '  SFP_CODVEN = :SFP_CODVEN,'
      '  SFP_STATUS = :SFP_STATUS,'
      '  SFP_DATHOR_INC = :SFP_DATHOR_INC,'
      '  SFP_CODUSR_INC = :SFP_CODUSR_INC,'
      '  SFP_NOMUSR_INC = :SFP_NOMUSR_INC,'
      '  SFP_DATHOR_ALT = :SFP_DATHOR_ALT,'
      '  SFP_CODUSR_ALT = :SFP_CODUSR_ALT,'
      '  SFP_NOMUSR_ALT = :SFP_NOMUSR_ALT,'
      '  SFP_CLIENTE_CPF = :SFP_CLIENTE_CPF,'
      '  SFP_CLIENTE_NOME = :SFP_CLIENTE_NOME,'
      '  SFP_QTDEMB = :SFP_QTDEMB,'
      '  SFP_STATUS_RECECAO = :SFP_STATUS_RECECAO'
      'where'
      '  SFP_CODEMP = :OLD_SFP_CODEMP and'
      '  SFP_ID_ANO = :OLD_SFP_ID_ANO and'
      '  SFP_ID = :OLD_SFP_ID and'
      '  SFP_ITEM = :OLD_SFP_ITEM')
    InsertSQL.Strings = (
      'insert into CADSOL_FP'
      '  (SFP_CODEMP, SFP_ID_ANO, SFP_ID, SFP_ITEM, SFP_CODPRO, '
      'SFP_CODBAR, SFP_QTDPRESC, '
      
        '   SFP_QTDSOL, SFP_QTDAUT, SFP_PCO_UNI_VENDA, SFP_QTD_CPR_ML_DIA' +
        ', '
      'SFP_MENS_RECEPCAO, '
      '   SFP_NUMAUT, SFP_PAGO_MS, SFP_PAGO_CLIENTE, SFP_CRM_MEDICO, '
      'SFP_CRM_MEDICO_UF, '
      '   SFP_DATARECEITA, SFP_CODVEN, SFP_STATUS, SFP_DATHOR_INC, '
      'SFP_CODUSR_INC, '
      '   SFP_NOMUSR_INC, SFP_DATHOR_ALT, SFP_CODUSR_ALT, '
      'SFP_NOMUSR_ALT, SFP_CLIENTE_CPF, '
      '   SFP_CLIENTE_NOME, SFP_QTDEMB, SFP_STATUS_RECECAO)'
      'values'
      '  (:SFP_CODEMP, :SFP_ID_ANO, :SFP_ID, :SFP_ITEM, :SFP_CODPRO, '
      ':SFP_CODBAR, '
      '   :SFP_QTDPRESC, :SFP_QTDSOL, :SFP_QTDAUT, :SFP_PCO_UNI_VENDA, '
      ':SFP_QTD_CPR_ML_DIA, '
      '   :SFP_MENS_RECEPCAO, :SFP_NUMAUT, :SFP_PAGO_MS, '
      ':SFP_PAGO_CLIENTE, :SFP_CRM_MEDICO, '
      
        '   :SFP_CRM_MEDICO_UF, :SFP_DATARECEITA, :SFP_CODVEN, :SFP_STATU' +
        'S, '
      ':SFP_DATHOR_INC, '
      '   :SFP_CODUSR_INC, :SFP_NOMUSR_INC, :SFP_DATHOR_ALT, '
      ':SFP_CODUSR_ALT, '
      '   :SFP_NOMUSR_ALT, :SFP_CLIENTE_CPF, :SFP_CLIENTE_NOME, '
      ':SFP_QTDEMB, :SFP_STATUS_RECECAO)')
    DeleteSQL.Strings = (
      'delete from CADSOL_FP'
      'where'
      '  SFP_CODEMP = :OLD_SFP_CODEMP and'
      '  SFP_ID_ANO = :OLD_SFP_ID_ANO and'
      '  SFP_ID = :OLD_SFP_ID and'
      '  SFP_ITEM = :OLD_SFP_ITEM')
    Left = 1000
    Top = 176
  end
  object Qr_Sol_Extornadas_Res: TQuery
    CachedUpdates = True
    AfterInsert = Qr_Sol_Pend_ResAfterInsert
    AfterEdit = Qr_Sol_Pend_ResAfterEdit
    BeforePost = Qr_Sol_Pend_ResBeforePost
    AfterPost = Qr_Sol_Pend_ResAfterPost
    AfterCancel = Qr_Sol_Pend_ResAfterCancel
    AfterDelete = Qr_Sol_Pend_ResAfterDelete
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT SFP_CODEMP,SFP_ID_ANO,SFP_ID'
      ',max(SFP_CRM_MEDICO) as CRM_MEDICO'
      ',max(SFP_CRM_MEDICO_UF) as CRM_MEDICO_UF'
      ',max(SFP_DATARECEITA) as DATARECEITA'
      ',max(SFP_CODVEN) as CODVEN'
      ',max(VNOME) as nomven'
      ',max(SFP_CLIENTE_CPF) as CLIENTE_CPF'
      ',max(SFP_CLIENTE_NOME) as CLIENTE_NOME'
      ',sum(SFP_QTDPRESC) as QTDPRESC'
      ',sum(SFP_QTDSOL) as QTDSOL'
      ',sum(SFP_QTDAUT) as QTDAUT'
      ',round( sum(SFP_PCO_UNI_VENDA*SFP_QTDSOL) ,2) as TOTAL_SOL'
      ',sum(SFP_PAGO_MS) as TOTPAGO_MS'
      ',sum(SFP_PAGO_CLIENTE) as TOTPAGO_CLIENTE'
      ' from'
      'CADSOL_FP,CADPRO,CADVEN'
      'where VCODVEN=SFP_CODVEN'
      'and PDCODPRO=SFP_CODPRO'
      'GROUP BY SFP_CODEMP,SFP_ID_ANO,SFP_ID')
    UpdateObject = U_Sol_Extornadas_Res
    Left = 680
    Top = 232
    object Qr_Sol_Extornadas_ResSFP_CODEMP: TFloatField
      FieldName = 'SFP_CODEMP'
    end
    object Qr_Sol_Extornadas_ResSFP_ID_ANO: TFloatField
      DisplayLabel = 'Ano'
      FieldName = 'SFP_ID_ANO'
    end
    object Qr_Sol_Extornadas_ResSFP_ID: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'SFP_ID'
    end
    object Qr_Sol_Extornadas_ResCRM_MEDICO: TStringField
      DisplayLabel = 'Medico'
      FieldName = 'CRM_MEDICO'
    end
    object Qr_Sol_Extornadas_ResCRM_MEDICO_UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CRM_MEDICO_UF'
      Size = 2
    end
    object Qr_Sol_Extornadas_ResDATARECEITA: TDateTimeField
      DisplayLabel = 'Data Receita'
      FieldName = 'DATARECEITA'
    end
    object Qr_Sol_Extornadas_ResCODVEN: TFloatField
      FieldName = 'CODVEN'
    end
    object Qr_Sol_Extornadas_ResNOMVEN: TStringField
      FieldName = 'NOMVEN'
      Size = 40
    end
    object Qr_Sol_Extornadas_ResCLIENTE_CPF: TStringField
      DisplayLabel = 'CPF do Comprador'
      FieldName = 'CLIENTE_CPF'
      Size = 15
    end
    object Qr_Sol_Extornadas_ResCLIENTE_NOME: TStringField
      DisplayLabel = 'Nome do Comprador'
      FieldName = 'CLIENTE_NOME'
      Size = 100
    end
    object Qr_Sol_Extornadas_ResQTDPRESC: TFloatField
      DisplayLabel = 'Tot.Qtd.Presc.'
      FieldName = 'QTDPRESC'
    end
    object Qr_Sol_Extornadas_ResQTDSOL: TFloatField
      DisplayLabel = 'Tot.Qtd.Sol'
      FieldName = 'QTDSOL'
    end
    object Qr_Sol_Extornadas_ResQTDAUT: TFloatField
      FieldName = 'QTDAUT'
    end
    object Qr_Sol_Extornadas_ResTOTAL_SOL: TFloatField
      DisplayLabel = 'Vlr.Tot.Solic.'
      FieldName = 'TOTAL_SOL'
    end
    object Qr_Sol_Extornadas_ResTOTPAGO_MS: TFloatField
      FieldName = 'TOTPAGO_MS'
    end
    object Qr_Sol_Extornadas_ResTOTPAGO_CLIENTE: TFloatField
      FieldName = 'TOTPAGO_CLIENTE'
    end
  end
  object src_Sol_Extornadas_Res: TDataSource
    DataSet = Qr_Sol_Extornadas_Res
    OnDataChange = src_Sol_Pend_resDataChange
    Left = 714
    Top = 234
  end
  object U_Sol_Extornadas_Res: TUpdateSQL
    ModifySQL.Strings = (
      'update CADSOL_FP'
      'set'
      '  SFP_CODEMP = :SFP_CODEMP,'
      '  SFP_ID_ANO = :SFP_ID_ANO,'
      '  SFP_ID = :SFP_ID,'
      '  CRM_MEDICO = :CRM_MEDICO,'
      '  CRM_MEDICO_UF = :CRM_MEDICO_UF,'
      '  DATARECEITA = :DATARECEITA,'
      '  CODVEN = :CODVEN,'
      '  NOMVEN = :NOMVEN,'
      '  CLIENTE_CPF = :CLIENTE_CPF,'
      '  CLIENTE_NOME = :CLIENTE_NOME,'
      '  QTDPRESC = :QTDPRESC,'
      '  QTDSOL = :QTDSOL,'
      '  QTDAUT = :QTDAUT,'
      '  TOTAL_SOL = :TOTAL_SOL,'
      '  TOTPAGO_MS = :TOTPAGO_MS,'
      '  TOTPAGO_CLIENTE = :TOTPAGO_CLIENTE'
      'where'
      '  SFP_CODEMP = :OLD_SFP_CODEMP and'
      '  SFP_ID_ANO = :OLD_SFP_ID_ANO and'
      '  SFP_ID = :OLD_SFP_ID')
    InsertSQL.Strings = (
      'insert into CADSOL_FP'
      
        '  (SFP_CODEMP, SFP_ID_ANO, SFP_ID, CRM_MEDICO, CRM_MEDICO_UF, DA' +
        'TARECEITA, '
      
        '   CODVEN, NOMVEN, CLIENTE_CPF, CLIENTE_NOME, QTDPRESC, QTDSOL, ' +
        'QTDAUT, '
      '   TOTAL_SOL, TOTPAGO_MS, TOTPAGO_CLIENTE)'
      'values'
      
        '  (:SFP_CODEMP, :SFP_ID_ANO, :SFP_ID, :CRM_MEDICO, :CRM_MEDICO_U' +
        'F, :DATARECEITA, '
      
        '   :CODVEN, :NOMVEN, :CLIENTE_CPF, :CLIENTE_NOME, :QTDPRESC, :QT' +
        'DSOL, :QTDAUT, '
      '   :TOTAL_SOL, :TOTPAGO_MS, :TOTPAGO_CLIENTE)')
    DeleteSQL.Strings = (
      'delete from CADSOL_FP'
      'where'
      '  SFP_CODEMP = :OLD_SFP_CODEMP and'
      '  SFP_ID_ANO = :OLD_SFP_ID_ANO and'
      '  SFP_ID = :OLD_SFP_ID')
    Left = 744
    Top = 232
  end
  object Qr_Sol_Extornadas: TQuery
    CachedUpdates = True
    AfterInsert = Qr_Sol_PendAfterInsert
    AfterEdit = Qr_Sol_PendAfterEdit
    BeforePost = Qr_Sol_PendBeforePost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT CADSOL_FP.*'
      ',SFP_PCO_UNI_VENDA*SFP_QTDSOL AS valortot_sol'
      ',VNOME as nomven'
      ',PDNOME as nompro'
      
        ','#39'Incluido por '#39' || NVL(SFP_CODUSR_INC,0) || '#39'-'#39' || NVL(SFP_NOMU' +
        'SR_INC,'#39#39') || '#39' em '#39
      '||  TO_CHAR(NVL(SFP_DATHOR_INC,SYSDATE), '#39'dd/mm/yyyy hh:MM:ss'#39')'
      
        '|| case when NVL(SFP_CODUSR_ALT,0)=0 then '#39#39' else '#39' alterado por' +
        ' '#39' ||'
      
        'NVL(SFP_CODUSR_ALT,'#39#39') || '#39'-'#39' || NVL(SFP_NOMUSR_ALT,'#39#39') || '#39' em ' +
        #39' ||'
      'TO_CHAR(NVL(SFP_DATHOR_ALT,SYSDATE), '#39'dd/mm/yyyy hh:mm:ss'#39' ) end'
      ' as incluso'
      ' from'
      'CADSOL_FP,CADPRO,CADVEN'
      'where VCODVEN=SFP_CODVEN'
      'and PDCODPRO=SFP_CODPRO')
    UpdateObject = U_Sol_Extornadas
    Left = 680
    Top = 256
    object Qr_Sol_ExtornadasSFP_CODEMP: TFloatField
      FieldName = 'SFP_CODEMP'
    end
    object Qr_Sol_ExtornadasSFP_ID_ANO: TFloatField
      DisplayLabel = 'Ano'
      FieldName = 'SFP_ID_ANO'
    end
    object Qr_Sol_ExtornadasSFP_ID: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'SFP_ID'
    end
    object Qr_Sol_ExtornadasSFP_ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'SFP_ITEM'
    end
    object Qr_Sol_ExtornadasSFP_CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Prod'
      FieldName = 'SFP_CODPRO'
    end
    object Qr_Sol_ExtornadasSFP_CODBAR: TStringField
      DisplayLabel = 'C'#243'd.Barras'
      FieldName = 'SFP_CODBAR'
      Size = 14
    end
    object Qr_Sol_ExtornadasSFP_QTDPRESC: TFloatField
      DisplayLabel = 'Qtd.Prescrita'
      FieldName = 'SFP_QTDPRESC'
    end
    object Qr_Sol_ExtornadasSFP_QTDSOL: TFloatField
      DisplayLabel = 'Qtd.Solicita'
      FieldName = 'SFP_QTDSOL'
    end
    object Qr_Sol_ExtornadasSFP_QTDAUT: TFloatField
      FieldName = 'SFP_QTDAUT'
    end
    object Qr_Sol_ExtornadasSFP_PCO_UNI_VENDA: TFloatField
      DisplayLabel = 'Pre'#231'o Unitario'
      FieldName = 'SFP_PCO_UNI_VENDA'
    end
    object Qr_Sol_ExtornadasSFP_QTD_CPR_ML_DIA: TFloatField
      DisplayLabel = 'Qtd Compr/ML ao dia'
      FieldName = 'SFP_QTD_CPR_ML_DIA'
    end
    object Qr_Sol_ExtornadasSFP_MENS_RECEPCAO: TMemoField
      FieldName = 'SFP_MENS_RECEPCAO'
      BlobType = ftMemo
      Size = 2000
    end
    object Qr_Sol_ExtornadasSFP_NUMAUT: TStringField
      FieldName = 'SFP_NUMAUT'
      Size = 30
    end
    object Qr_Sol_ExtornadasSFP_PAGO_MS: TFloatField
      FieldName = 'SFP_PAGO_MS'
    end
    object Qr_Sol_ExtornadasSFP_PAGO_CLIENTE: TFloatField
      FieldName = 'SFP_PAGO_CLIENTE'
    end
    object Qr_Sol_ExtornadasSFP_CRM_MEDICO: TStringField
      FieldName = 'SFP_CRM_MEDICO'
    end
    object Qr_Sol_ExtornadasSFP_CRM_MEDICO_UF: TStringField
      FieldName = 'SFP_CRM_MEDICO_UF'
      Size = 2
    end
    object Qr_Sol_ExtornadasSFP_DATARECEITA: TDateTimeField
      FieldName = 'SFP_DATARECEITA'
    end
    object Qr_Sol_ExtornadasSFP_CODVEN: TFloatField
      FieldName = 'SFP_CODVEN'
    end
    object Qr_Sol_ExtornadasSFP_STATUS: TFloatField
      FieldName = 'SFP_STATUS'
    end
    object Qr_Sol_ExtornadasSFP_DATHOR_INC: TDateTimeField
      FieldName = 'SFP_DATHOR_INC'
    end
    object Qr_Sol_ExtornadasSFP_CODUSR_INC: TFloatField
      FieldName = 'SFP_CODUSR_INC'
    end
    object Qr_Sol_ExtornadasSFP_NOMUSR_INC: TStringField
      FieldName = 'SFP_NOMUSR_INC'
      Size = 40
    end
    object Qr_Sol_ExtornadasSFP_DATHOR_ALT: TDateTimeField
      FieldName = 'SFP_DATHOR_ALT'
    end
    object Qr_Sol_ExtornadasSFP_CODUSR_ALT: TFloatField
      FieldName = 'SFP_CODUSR_ALT'
    end
    object Qr_Sol_ExtornadasSFP_NOMUSR_ALT: TStringField
      FieldName = 'SFP_NOMUSR_ALT'
      Size = 40
    end
    object Qr_Sol_ExtornadasSFP_CLIENTE_CPF: TStringField
      FieldName = 'SFP_CLIENTE_CPF'
      Size = 15
    end
    object Qr_Sol_ExtornadasSFP_CLIENTE_NOME: TStringField
      FieldName = 'SFP_CLIENTE_NOME'
      Size = 100
    end
    object Qr_Sol_ExtornadasSFP_QTDEMB: TFloatField
      FieldName = 'SFP_QTDEMB'
    end
    object Qr_Sol_ExtornadasSFP_STATUS_RECECAO: TStringField
      FieldName = 'SFP_STATUS_RECECAO'
      Size = 3
    end
    object Qr_Sol_ExtornadasVALORTOT_SOL: TFloatField
      DisplayLabel = 'Vlr.Tot.Solic'
      FieldName = 'VALORTOT_SOL'
    end
    object Qr_Sol_ExtornadasNOMVEN: TStringField
      FieldName = 'NOMVEN'
      Size = 40
    end
    object Qr_Sol_ExtornadasNOMPRO: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'NOMPRO'
      Size = 120
    end
    object Qr_Sol_ExtornadasINCLUSO: TStringField
      FieldName = 'INCLUSO'
      Size = 235
    end
  end
  object src_Sol_Extornadas: TDataSource
    DataSet = Qr_Sol_Extornadas
    Left = 722
    Top = 258
  end
  object U_Sol_Extornadas: TUpdateSQL
    ModifySQL.Strings = (
      'update CADSOL_FP'
      'set'
      '  SFP_CODEMP = :SFP_CODEMP,'
      '  SFP_ID_ANO = :SFP_ID_ANO,'
      '  SFP_ID = :SFP_ID,'
      '  SFP_ITEM = :SFP_ITEM,'
      '  SFP_CODPRO = :SFP_CODPRO,'
      '  SFP_CODBAR = :SFP_CODBAR,'
      '  SFP_QTDPRESC = :SFP_QTDPRESC,'
      '  SFP_QTDSOL = :SFP_QTDSOL,'
      '  SFP_QTDAUT = :SFP_QTDAUT,'
      '  SFP_PCO_UNI_VENDA = :SFP_PCO_UNI_VENDA,'
      '  SFP_QTD_CPR_ML_DIA = :SFP_QTD_CPR_ML_DIA,'
      '  SFP_MENS_RECEPCAO = :SFP_MENS_RECEPCAO,'
      '  SFP_NUMAUT = :SFP_NUMAUT,'
      '  SFP_PAGO_MS = :SFP_PAGO_MS,'
      '  SFP_PAGO_CLIENTE = :SFP_PAGO_CLIENTE,'
      '  SFP_CRM_MEDICO = :SFP_CRM_MEDICO,'
      '  SFP_CRM_MEDICO_UF = :SFP_CRM_MEDICO_UF,'
      '  SFP_DATARECEITA = :SFP_DATARECEITA,'
      '  SFP_CODVEN = :SFP_CODVEN,'
      '  SFP_STATUS = :SFP_STATUS,'
      '  SFP_DATHOR_INC = :SFP_DATHOR_INC,'
      '  SFP_CODUSR_INC = :SFP_CODUSR_INC,'
      '  SFP_NOMUSR_INC = :SFP_NOMUSR_INC,'
      '  SFP_DATHOR_ALT = :SFP_DATHOR_ALT,'
      '  SFP_CODUSR_ALT = :SFP_CODUSR_ALT,'
      '  SFP_NOMUSR_ALT = :SFP_NOMUSR_ALT,'
      '  SFP_CLIENTE_CPF = :SFP_CLIENTE_CPF,'
      '  SFP_CLIENTE_NOME = :SFP_CLIENTE_NOME,'
      '  SFP_QTDEMB = :SFP_QTDEMB,'
      '  SFP_STATUS_RECECAO = :SFP_STATUS_RECECAO'
      'where'
      '  SFP_CODEMP = :OLD_SFP_CODEMP and'
      '  SFP_ID_ANO = :OLD_SFP_ID_ANO and'
      '  SFP_ID = :OLD_SFP_ID')
    InsertSQL.Strings = (
      'insert into CADSOL_FP'
      '  (SFP_CODEMP, SFP_ID_ANO, SFP_ID, SFP_ITEM, SFP_CODPRO, '
      'SFP_CODBAR, SFP_QTDPRESC, '
      
        '   SFP_QTDSOL, SFP_QTDAUT, SFP_PCO_UNI_VENDA, SFP_QTD_CPR_ML_DIA' +
        ', '
      'SFP_MENS_RECEPCAO, '
      '   SFP_NUMAUT, SFP_PAGO_MS, SFP_PAGO_CLIENTE, SFP_CRM_MEDICO, '
      'SFP_CRM_MEDICO_UF, '
      '   SFP_DATARECEITA, SFP_CODVEN, SFP_STATUS, SFP_DATHOR_INC, '
      'SFP_CODUSR_INC, '
      '   SFP_NOMUSR_INC, SFP_DATHOR_ALT, SFP_CODUSR_ALT, '
      'SFP_NOMUSR_ALT, SFP_CLIENTE_CPF, '
      '   SFP_CLIENTE_NOME, SFP_QTDEMB, SFP_STATUS_RECECAO)'
      'values'
      '  (:SFP_CODEMP, :SFP_ID_ANO, :SFP_ID, :SFP_ITEM, :SFP_CODPRO, '
      ':SFP_CODBAR, '
      '   :SFP_QTDPRESC, :SFP_QTDSOL, :SFP_QTDAUT, :SFP_PCO_UNI_VENDA, '
      ':SFP_QTD_CPR_ML_DIA, '
      '   :SFP_MENS_RECEPCAO, :SFP_NUMAUT, :SFP_PAGO_MS, '
      ':SFP_PAGO_CLIENTE, :SFP_CRM_MEDICO, '
      
        '   :SFP_CRM_MEDICO_UF, :SFP_DATARECEITA, :SFP_CODVEN, :SFP_STATU' +
        'S, '
      ':SFP_DATHOR_INC, '
      '   :SFP_CODUSR_INC, :SFP_NOMUSR_INC, :SFP_DATHOR_ALT, '
      ':SFP_CODUSR_ALT, '
      '   :SFP_NOMUSR_ALT, :SFP_CLIENTE_CPF, :SFP_CLIENTE_NOME, '
      ':SFP_QTDEMB, :SFP_STATUS_RECECAO)')
    DeleteSQL.Strings = (
      'delete from CADSOL_FP'
      'where'
      '  SFP_CODEMP = :OLD_SFP_CODEMP and'
      '  SFP_ID_ANO = :OLD_SFP_ID_ANO and'
      '  SFP_ID = :OLD_SFP_ID')
    Left = 744
    Top = 264
  end
  object Qr_Sol_Canceladas_Res: TQuery
    CachedUpdates = True
    AfterInsert = Qr_Sol_Pend_ResAfterInsert
    AfterEdit = Qr_Sol_Pend_ResAfterEdit
    BeforePost = Qr_Sol_Pend_ResBeforePost
    AfterPost = Qr_Sol_Pend_ResAfterPost
    AfterCancel = Qr_Sol_Pend_ResAfterCancel
    AfterDelete = Qr_Sol_Pend_ResAfterDelete
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT SFP_CODEMP,SFP_ID_ANO,SFP_ID'
      ',max(SFP_CRM_MEDICO) as CRM_MEDICO'
      ',max(SFP_CRM_MEDICO_UF) as CRM_MEDICO_UF'
      ',max(SFP_DATARECEITA) as DATARECEITA'
      ',max(SFP_CODVEN) as CODVEN'
      ',max(VNOME) as nomven'
      ',max(SFP_CLIENTE_CPF) as CLIENTE_CPF'
      ',max(SFP_CLIENTE_NOME) as CLIENTE_NOME'
      ',sum(SFP_QTDPRESC) as QTDPRESC'
      ',sum(SFP_QTDSOL) as QTDSOL'
      ',sum(SFP_QTDAUT) as QTDAUT'
      ',round( sum(SFP_PCO_UNI_VENDA*SFP_QTDSOL) ,2) as TOTAL_SOL'
      ',sum(SFP_PAGO_MS) as TOTPAGO_MS'
      ',sum(SFP_PAGO_CLIENTE) as TOTPAGO_CLIENTE'
      ' from'
      'CADSOL_FP,CADPRO,CADVEN'
      'where VCODVEN=SFP_CODVEN'
      'and PDCODPRO=SFP_CODPRO'
      'GROUP BY SFP_CODEMP,SFP_ID_ANO,SFP_ID')
    UpdateObject = U_Sol_Canceladas_Res
    Left = 808
    Top = 224
    object Qr_Sol_Canceladas_ResSFP_CODEMP: TFloatField
      FieldName = 'SFP_CODEMP'
    end
    object Qr_Sol_Canceladas_ResSFP_ID_ANO: TFloatField
      DisplayLabel = 'Ano'
      FieldName = 'SFP_ID_ANO'
    end
    object Qr_Sol_Canceladas_ResSFP_ID: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'SFP_ID'
    end
    object Qr_Sol_Canceladas_ResCRM_MEDICO: TStringField
      DisplayLabel = 'CRM Medico'
      FieldName = 'CRM_MEDICO'
    end
    object Qr_Sol_Canceladas_ResCRM_MEDICO_UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CRM_MEDICO_UF'
      Size = 2
    end
    object Qr_Sol_Canceladas_ResDATARECEITA: TDateTimeField
      DisplayLabel = 'Data da Receita'
      FieldName = 'DATARECEITA'
    end
    object Qr_Sol_Canceladas_ResCODVEN: TFloatField
      DisplayLabel = 'C'#243'd.Vend'
      FieldName = 'CODVEN'
    end
    object Qr_Sol_Canceladas_ResNOMVEN: TStringField
      DisplayLabel = 'Nome do Vendedor'
      FieldName = 'NOMVEN'
      Size = 40
    end
    object Qr_Sol_Canceladas_ResCLIENTE_CPF: TStringField
      DisplayLabel = 'CPF do Comprador'
      FieldName = 'CLIENTE_CPF'
      Size = 15
    end
    object Qr_Sol_Canceladas_ResCLIENTE_NOME: TStringField
      DisplayLabel = 'Nome do comprador'
      FieldName = 'CLIENTE_NOME'
      Size = 100
    end
    object Qr_Sol_Canceladas_ResQTDPRESC: TFloatField
      DisplayLabel = 'Tot.Qtd.Presc'
      FieldName = 'QTDPRESC'
    end
    object Qr_Sol_Canceladas_ResQTDSOL: TFloatField
      DisplayLabel = 'Qtd.Solicitada'
      FieldName = 'QTDSOL'
    end
    object Qr_Sol_Canceladas_ResQTDAUT: TFloatField
      FieldName = 'QTDAUT'
    end
    object Qr_Sol_Canceladas_ResTOTPAGO_MS: TFloatField
      FieldName = 'TOTPAGO_MS'
    end
    object Qr_Sol_Canceladas_ResTOTAL_SOL: TFloatField
      DisplayLabel = 'Total Solicitado'
      FieldName = 'TOTAL_SOL'
    end
    object Qr_Sol_Canceladas_ResTOTPAGO_CLIENTE: TFloatField
      FieldName = 'TOTPAGO_CLIENTE'
    end
  end
  object Src_Sol_Canceladas_Res: TDataSource
    DataSet = Qr_Sol_Canceladas_Res
    OnDataChange = src_Sol_Pend_resDataChange
    Left = 842
    Top = 226
  end
  object U_Sol_Canceladas_Res: TUpdateSQL
    ModifySQL.Strings = (
      'update CADSOL_FP'
      'set'
      '  SFP_CODEMP = :SFP_CODEMP,'
      '  SFP_ID_ANO = :SFP_ID_ANO,'
      '  SFP_ID = :SFP_ID,'
      '  CRM_MEDICO = :CRM_MEDICO,'
      '  CRM_MEDICO_UF = :CRM_MEDICO_UF,'
      '  DATARECEITA = :DATARECEITA,'
      '  CODVEN = :CODVEN,'
      '  NOMVEN = :NOMVEN,'
      '  CLIENTE_CPF = :CLIENTE_CPF,'
      '  CLIENTE_NOME = :CLIENTE_NOME,'
      '  QTDPRESC = :QTDPRESC,'
      '  QTDSOL = :QTDSOL,'
      '  QTDAUT = :QTDAUT,'
      '  TOTAL_SOL = :TOTAL_SOL,'
      '  TOTPAGO_MS = :TOTPAGO_MS,'
      '  TOTPAGO_CLIENTE = :TOTPAGO_CLIENTE'
      'where'
      '  SFP_CODEMP = :OLD_SFP_CODEMP and'
      '  SFP_ID_ANO = :OLD_SFP_ID_ANO and'
      '  SFP_ID = :OLD_SFP_ID')
    InsertSQL.Strings = (
      'insert into CADSOL_FP'
      
        '  (SFP_CODEMP, SFP_ID_ANO, SFP_ID, CRM_MEDICO, CRM_MEDICO_UF, DA' +
        'TARECEITA, '
      
        '   CODVEN, NOMVEN, CLIENTE_CPF, CLIENTE_NOME, QTDPRESC, QTDSOL, ' +
        'QTDAUT, '
      '   TOTAL_SOL, TOTPAGO_MS, TOTPAGO_CLIENTE)'
      'values'
      
        '  (:SFP_CODEMP, :SFP_ID_ANO, :SFP_ID, :CRM_MEDICO, :CRM_MEDICO_U' +
        'F, :DATARECEITA, '
      
        '   :CODVEN, :NOMVEN, :CLIENTE_CPF, :CLIENTE_NOME, :QTDPRESC, :QT' +
        'DSOL, :QTDAUT, '
      '   :TOTAL_SOL, :TOTPAGO_MS, :TOTPAGO_CLIENTE)')
    DeleteSQL.Strings = (
      'delete from CADSOL_FP'
      'where'
      '  SFP_CODEMP = :OLD_SFP_CODEMP and'
      '  SFP_ID_ANO = :OLD_SFP_ID_ANO and'
      '  SFP_ID = :OLD_SFP_ID')
    Left = 872
    Top = 224
  end
  object Qr_Sol_Cenceladas: TQuery
    CachedUpdates = True
    AfterInsert = Qr_Sol_PendAfterInsert
    AfterEdit = Qr_Sol_PendAfterEdit
    BeforePost = Qr_Sol_PendBeforePost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT CADSOL_FP.*'
      ',SFP_PCO_UNI_VENDA*SFP_QTDSOL AS valortot_sol'
      ',VNOME as nomven'
      ',PDNOME as nompro'
      
        ','#39'Incluido por '#39' || NVL(SFP_CODUSR_INC,0) || '#39'-'#39' || NVL(SFP_NOMU' +
        'SR_INC,'#39#39') || '#39' em '#39
      '||  TO_CHAR(NVL(SFP_DATHOR_INC,SYSDATE), '#39'dd/mm/yyyy hh:MM:ss'#39')'
      
        '|| case when NVL(SFP_CODUSR_ALT,0)=0 then '#39#39' else '#39' alterado por' +
        ' '#39' ||'
      
        'NVL(SFP_CODUSR_ALT,'#39#39') || '#39'-'#39' || NVL(SFP_NOMUSR_ALT,'#39#39') || '#39' em ' +
        #39' ||'
      'TO_CHAR(NVL(SFP_DATHOR_ALT,SYSDATE), '#39'dd/mm/yyyy hh:mm:ss'#39' ) end'
      ' as incluso'
      ' from'
      'CADSOL_FP,CADPRO,CADVEN'
      'where VCODVEN=SFP_CODVEN'
      'and PDCODPRO=SFP_CODPRO')
    UpdateObject = U_Sol_Cenceladas
    Left = 808
    Top = 248
    object Qr_Sol_CenceladasSFP_CODEMP: TFloatField
      FieldName = 'SFP_CODEMP'
    end
    object Qr_Sol_CenceladasSFP_ID_ANO: TFloatField
      FieldName = 'SFP_ID_ANO'
    end
    object Qr_Sol_CenceladasSFP_ID: TFloatField
      FieldName = 'SFP_ID'
    end
    object Qr_Sol_CenceladasSFP_ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'SFP_ITEM'
    end
    object Qr_Sol_CenceladasSFP_CODPRO: TFloatField
      FieldName = 'SFP_CODPRO'
    end
    object Qr_Sol_CenceladasSFP_CODBAR: TStringField
      DisplayLabel = 'C'#243'd.de Barras'
      FieldName = 'SFP_CODBAR'
      Size = 14
    end
    object Qr_Sol_CenceladasSFP_QTDPRESC: TFloatField
      DisplayLabel = 'Qtd.Prescrita'
      FieldName = 'SFP_QTDPRESC'
    end
    object Qr_Sol_CenceladasSFP_QTDSOL: TFloatField
      DisplayLabel = 'Qtd.Solicitada'
      FieldName = 'SFP_QTDSOL'
    end
    object Qr_Sol_CenceladasSFP_QTDAUT: TFloatField
      FieldName = 'SFP_QTDAUT'
    end
    object Qr_Sol_CenceladasSFP_PCO_UNI_VENDA: TFloatField
      DisplayLabel = 'P'#231'o.Unit.Venda'
      FieldName = 'SFP_PCO_UNI_VENDA'
    end
    object Qr_Sol_CenceladasSFP_QTD_CPR_ML_DIA: TFloatField
      DisplayLabel = 'Qtd.Compr/ML ao dia'
      FieldName = 'SFP_QTD_CPR_ML_DIA'
    end
    object Qr_Sol_CenceladasSFP_MENS_RECEPCAO: TMemoField
      FieldName = 'SFP_MENS_RECEPCAO'
      BlobType = ftMemo
      Size = 2000
    end
    object Qr_Sol_CenceladasSFP_NUMAUT: TStringField
      FieldName = 'SFP_NUMAUT'
      Size = 30
    end
    object Qr_Sol_CenceladasSFP_PAGO_MS: TFloatField
      FieldName = 'SFP_PAGO_MS'
    end
    object Qr_Sol_CenceladasSFP_PAGO_CLIENTE: TFloatField
      FieldName = 'SFP_PAGO_CLIENTE'
    end
    object Qr_Sol_CenceladasSFP_CRM_MEDICO: TStringField
      FieldName = 'SFP_CRM_MEDICO'
    end
    object Qr_Sol_CenceladasSFP_CRM_MEDICO_UF: TStringField
      FieldName = 'SFP_CRM_MEDICO_UF'
      Size = 2
    end
    object Qr_Sol_CenceladasSFP_DATARECEITA: TDateTimeField
      FieldName = 'SFP_DATARECEITA'
    end
    object Qr_Sol_CenceladasSFP_CODVEN: TFloatField
      FieldName = 'SFP_CODVEN'
    end
    object Qr_Sol_CenceladasSFP_STATUS: TFloatField
      FieldName = 'SFP_STATUS'
    end
    object Qr_Sol_CenceladasSFP_DATHOR_INC: TDateTimeField
      FieldName = 'SFP_DATHOR_INC'
    end
    object Qr_Sol_CenceladasSFP_CODUSR_INC: TFloatField
      FieldName = 'SFP_CODUSR_INC'
    end
    object Qr_Sol_CenceladasSFP_NOMUSR_INC: TStringField
      FieldName = 'SFP_NOMUSR_INC'
      Size = 40
    end
    object Qr_Sol_CenceladasSFP_DATHOR_ALT: TDateTimeField
      FieldName = 'SFP_DATHOR_ALT'
    end
    object Qr_Sol_CenceladasSFP_CODUSR_ALT: TFloatField
      FieldName = 'SFP_CODUSR_ALT'
    end
    object Qr_Sol_CenceladasSFP_NOMUSR_ALT: TStringField
      FieldName = 'SFP_NOMUSR_ALT'
      Size = 40
    end
    object Qr_Sol_CenceladasSFP_CLIENTE_CPF: TStringField
      FieldName = 'SFP_CLIENTE_CPF'
      Size = 15
    end
    object Qr_Sol_CenceladasSFP_CLIENTE_NOME: TStringField
      FieldName = 'SFP_CLIENTE_NOME'
      Size = 100
    end
    object Qr_Sol_CenceladasSFP_QTDEMB: TFloatField
      FieldName = 'SFP_QTDEMB'
    end
    object Qr_Sol_CenceladasSFP_STATUS_RECECAO: TStringField
      FieldName = 'SFP_STATUS_RECECAO'
      Size = 3
    end
    object Qr_Sol_CenceladasVALORTOT_SOL: TFloatField
      DisplayLabel = 'Vlr.Total Solic'
      FieldName = 'VALORTOT_SOL'
    end
    object Qr_Sol_CenceladasNOMVEN: TStringField
      FieldName = 'NOMVEN'
      Size = 40
    end
    object Qr_Sol_CenceladasNOMPRO: TStringField
      DisplayLabel = 'Descri'#231#227'o dos Produtos'
      FieldName = 'NOMPRO'
      Size = 120
    end
    object Qr_Sol_CenceladasINCLUSO: TStringField
      FieldName = 'INCLUSO'
      Size = 235
    end
  end
  object src_Sol_Cenceladas: TDataSource
    DataSet = Qr_Sol_Cenceladas
    Left = 850
    Top = 250
  end
  object U_Sol_Cenceladas: TUpdateSQL
    ModifySQL.Strings = (
      'update CADSOL_FP'
      'set'
      '  SFP_CODEMP = :SFP_CODEMP,'
      '  SFP_ID_ANO = :SFP_ID_ANO,'
      '  SFP_ID = :SFP_ID,'
      '  SFP_ITEM = :SFP_ITEM,'
      '  SFP_CODPRO = :SFP_CODPRO,'
      '  SFP_CODBAR = :SFP_CODBAR,'
      '  SFP_QTDPRESC = :SFP_QTDPRESC,'
      '  SFP_QTDSOL = :SFP_QTDSOL,'
      '  SFP_QTDAUT = :SFP_QTDAUT,'
      '  SFP_PCO_UNI_VENDA = :SFP_PCO_UNI_VENDA,'
      '  SFP_QTD_CPR_ML_DIA = :SFP_QTD_CPR_ML_DIA,'
      '  SFP_MENS_RECEPCAO = :SFP_MENS_RECEPCAO,'
      '  SFP_NUMAUT = :SFP_NUMAUT,'
      '  SFP_PAGO_MS = :SFP_PAGO_MS,'
      '  SFP_PAGO_CLIENTE = :SFP_PAGO_CLIENTE,'
      '  SFP_CRM_MEDICO = :SFP_CRM_MEDICO,'
      '  SFP_CRM_MEDICO_UF = :SFP_CRM_MEDICO_UF,'
      '  SFP_DATARECEITA = :SFP_DATARECEITA,'
      '  SFP_CODVEN = :SFP_CODVEN,'
      '  SFP_STATUS = :SFP_STATUS,'
      '  SFP_DATHOR_INC = :SFP_DATHOR_INC,'
      '  SFP_CODUSR_INC = :SFP_CODUSR_INC,'
      '  SFP_NOMUSR_INC = :SFP_NOMUSR_INC,'
      '  SFP_DATHOR_ALT = :SFP_DATHOR_ALT,'
      '  SFP_CODUSR_ALT = :SFP_CODUSR_ALT,'
      '  SFP_NOMUSR_ALT = :SFP_NOMUSR_ALT,'
      '  SFP_CLIENTE_CPF = :SFP_CLIENTE_CPF,'
      '  SFP_CLIENTE_NOME = :SFP_CLIENTE_NOME,'
      '  SFP_QTDEMB = :SFP_QTDEMB,'
      '  SFP_STATUS_RECECAO = :SFP_STATUS_RECECAO'
      'where'
      '  SFP_CODEMP = :OLD_SFP_CODEMP and'
      '  SFP_ID_ANO = :OLD_SFP_ID_ANO and'
      '  SFP_ID = :OLD_SFP_ID and'
      '  SFP_ITEM = :OLD_SFP_ITEM')
    InsertSQL.Strings = (
      'insert into CADSOL_FP'
      
        '  (SFP_CODEMP, SFP_ID_ANO, SFP_ID, SFP_ITEM, SFP_CODPRO, SFP_COD' +
        'BAR, SFP_QTDPRESC, '
      
        '   SFP_QTDSOL, SFP_QTDAUT, SFP_PCO_UNI_VENDA, SFP_QTD_CPR_ML_DIA' +
        ', SFP_MENS_RECEPCAO, '
      
        '   SFP_NUMAUT, SFP_PAGO_MS, SFP_PAGO_CLIENTE, SFP_CRM_MEDICO, SF' +
        'P_CRM_MEDICO_UF, '
      
        '   SFP_DATARECEITA, SFP_CODVEN, SFP_STATUS, SFP_DATHOR_INC, SFP_' +
        'CODUSR_INC, '
      
        '   SFP_NOMUSR_INC, SFP_DATHOR_ALT, SFP_CODUSR_ALT, SFP_NOMUSR_AL' +
        'T, SFP_CLIENTE_CPF, '
      '   SFP_CLIENTE_NOME, SFP_QTDEMB, SFP_STATUS_RECECAO)'
      'values'
      
        '  (:SFP_CODEMP, :SFP_ID_ANO, :SFP_ID, :SFP_ITEM, :SFP_CODPRO, :S' +
        'FP_CODBAR, '
      
        '   :SFP_QTDPRESC, :SFP_QTDSOL, :SFP_QTDAUT, :SFP_PCO_UNI_VENDA, ' +
        ':SFP_QTD_CPR_ML_DIA, '
      
        '   :SFP_MENS_RECEPCAO, :SFP_NUMAUT, :SFP_PAGO_MS, :SFP_PAGO_CLIE' +
        'NTE, :SFP_CRM_MEDICO, '
      
        '   :SFP_CRM_MEDICO_UF, :SFP_DATARECEITA, :SFP_CODVEN, :SFP_STATU' +
        'S, :SFP_DATHOR_INC, '
      
        '   :SFP_CODUSR_INC, :SFP_NOMUSR_INC, :SFP_DATHOR_ALT, :SFP_CODUS' +
        'R_ALT, '
      
        '   :SFP_NOMUSR_ALT, :SFP_CLIENTE_CPF, :SFP_CLIENTE_NOME, :SFP_QT' +
        'DEMB, :SFP_STATUS_RECECAO)')
    DeleteSQL.Strings = (
      'delete from CADSOL_FP'
      'where'
      '  SFP_CODEMP = :OLD_SFP_CODEMP and'
      '  SFP_ID_ANO = :OLD_SFP_ID_ANO and'
      '  SFP_ID = :OLD_SFP_ID and'
      '  SFP_ITEM = :OLD_SFP_ITEM')
    Left = 872
    Top = 256
  end
  object Qr_Sol_Excluidas_Res: TQuery
    CachedUpdates = True
    AfterInsert = Qr_Sol_Pend_ResAfterInsert
    AfterEdit = Qr_Sol_Pend_ResAfterEdit
    BeforePost = Qr_Sol_Pend_ResBeforePost
    AfterPost = Qr_Sol_Pend_ResAfterPost
    AfterCancel = Qr_Sol_Pend_ResAfterCancel
    AfterDelete = Qr_Sol_Pend_ResAfterDelete
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT SFP_CODEMP,SFP_ID_ANO,SFP_ID'
      ',max(SFP_CRM_MEDICO) as CRM_MEDICO'
      ',max(SFP_CRM_MEDICO_UF) as CRM_MEDICO_UF'
      ',max(SFP_DATARECEITA) as DATARECEITA'
      ',max(SFP_CODVEN) as CODVEN'
      ',max(VNOME) as nomven'
      ',max(SFP_CLIENTE_CPF) as CLIENTE_CPF'
      ',max(SFP_CLIENTE_NOME) as CLIENTE_NOME'
      ',sum(SFP_QTDPRESC) as QTDPRESC'
      ',sum(SFP_QTDSOL) as QTDSOL'
      ',sum(SFP_QTDAUT) as QTDAUT'
      ',round( sum(SFP_PCO_UNI_VENDA*SFP_QTDSOL) ,2) as TOTAL_SOL'
      ',sum(SFP_PAGO_MS) as TOTPAGO_MS'
      ',sum(SFP_PAGO_CLIENTE) as TOTPAGO_CLIENTE'
      ' from'
      'CADSOL_FP,CADPRO,CADVEN'
      'where VCODVEN=SFP_CODVEN'
      'and PDCODPRO=SFP_CODPRO'
      'GROUP BY SFP_CODEMP,SFP_ID_ANO,SFP_ID')
    UpdateObject = U_Sol_Excluidas_Res
    Left = 920
    Top = 216
    object Qr_Sol_Excluidas_ResSFP_CODEMP: TFloatField
      FieldName = 'SFP_CODEMP'
    end
    object Qr_Sol_Excluidas_ResSFP_ID_ANO: TFloatField
      DisplayLabel = 'Ano'
      FieldName = 'SFP_ID_ANO'
    end
    object Qr_Sol_Excluidas_ResSFP_ID: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'SFP_ID'
    end
    object Qr_Sol_Excluidas_ResCRM_MEDICO: TStringField
      DisplayLabel = 'CRM M'#233'dido'
      FieldName = 'CRM_MEDICO'
    end
    object Qr_Sol_Excluidas_ResCRM_MEDICO_UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CRM_MEDICO_UF'
      Size = 2
    end
    object Qr_Sol_Excluidas_ResDATARECEITA: TDateTimeField
      DisplayLabel = 'Data Receita'
      FieldName = 'DATARECEITA'
    end
    object Qr_Sol_Excluidas_ResCODVEN: TFloatField
      DisplayLabel = 'Cod.Vend'
      FieldName = 'CODVEN'
    end
    object Qr_Sol_Excluidas_ResNOMVEN: TStringField
      DisplayLabel = 'Nome do Vendedor'
      FieldName = 'NOMVEN'
      Size = 40
    end
    object Qr_Sol_Excluidas_ResCLIENTE_CPF: TStringField
      DisplayLabel = 'CPF do Comprador'
      FieldName = 'CLIENTE_CPF'
      Size = 15
    end
    object Qr_Sol_Excluidas_ResCLIENTE_NOME: TStringField
      DisplayLabel = 'Nome do Comprador'
      FieldName = 'CLIENTE_NOME'
      Size = 100
    end
    object Qr_Sol_Excluidas_ResQTDPRESC: TFloatField
      DisplayLabel = 'Qtd.Tot.Presc'
      FieldName = 'QTDPRESC'
    end
    object Qr_Sol_Excluidas_ResQTDSOL: TFloatField
      DisplayLabel = 'Qtd.Tot.solic'
      FieldName = 'QTDSOL'
    end
    object Qr_Sol_Excluidas_ResQTDAUT: TFloatField
      FieldName = 'QTDAUT'
    end
    object Qr_Sol_Excluidas_ResTOTAL_SOL: TFloatField
      DisplayLabel = 'Vlr.Tot.Solic'
      FieldName = 'TOTAL_SOL'
    end
    object Qr_Sol_Excluidas_ResTOTPAGO_MS: TFloatField
      FieldName = 'TOTPAGO_MS'
    end
    object Qr_Sol_Excluidas_ResTOTPAGO_CLIENTE: TFloatField
      FieldName = 'TOTPAGO_CLIENTE'
    end
  end
  object Src_Sol_Excluidas_Res: TDataSource
    DataSet = Qr_Sol_Excluidas_Res
    OnDataChange = src_Sol_Pend_resDataChange
    Left = 954
    Top = 218
  end
  object U_Sol_Excluidas_Res: TUpdateSQL
    ModifySQL.Strings = (
      'update CADSOL_FP'
      'set'
      '  SFP_CODEMP = :SFP_CODEMP,'
      '  SFP_ID_ANO = :SFP_ID_ANO,'
      '  SFP_ID = :SFP_ID,'
      '  CRM_MEDICO = :CRM_MEDICO,'
      '  CRM_MEDICO_UF = :CRM_MEDICO_UF,'
      '  DATARECEITA = :DATARECEITA,'
      '  CODVEN = :CODVEN,'
      '  NOMVEN = :NOMVEN,'
      '  CLIENTE_CPF = :CLIENTE_CPF,'
      '  CLIENTE_NOME = :CLIENTE_NOME,'
      '  QTDPRESC = :QTDPRESC,'
      '  QTDSOL = :QTDSOL,'
      '  QTDAUT = :QTDAUT,'
      '  TOTAL_SOL = :TOTAL_SOL,'
      '  TOTPAGO_MS = :TOTPAGO_MS,'
      '  TOTPAGO_CLIENTE = :TOTPAGO_CLIENTE'
      'where'
      '  SFP_CODEMP = :OLD_SFP_CODEMP and'
      '  SFP_ID_ANO = :OLD_SFP_ID_ANO and'
      '  SFP_ID = :OLD_SFP_ID')
    InsertSQL.Strings = (
      'insert into CADSOL_FP'
      
        '  (SFP_CODEMP, SFP_ID_ANO, SFP_ID, CRM_MEDICO, CRM_MEDICO_UF, DA' +
        'TARECEITA, '
      
        '   CODVEN, NOMVEN, CLIENTE_CPF, CLIENTE_NOME, QTDPRESC, QTDSOL, ' +
        'QTDAUT, '
      '   TOTAL_SOL, TOTPAGO_MS, TOTPAGO_CLIENTE)'
      'values'
      
        '  (:SFP_CODEMP, :SFP_ID_ANO, :SFP_ID, :CRM_MEDICO, :CRM_MEDICO_U' +
        'F, :DATARECEITA, '
      
        '   :CODVEN, :NOMVEN, :CLIENTE_CPF, :CLIENTE_NOME, :QTDPRESC, :QT' +
        'DSOL, :QTDAUT, '
      '   :TOTAL_SOL, :TOTPAGO_MS, :TOTPAGO_CLIENTE)')
    DeleteSQL.Strings = (
      'delete from CADSOL_FP'
      'where'
      '  SFP_CODEMP = :OLD_SFP_CODEMP and'
      '  SFP_ID_ANO = :OLD_SFP_ID_ANO and'
      '  SFP_ID = :OLD_SFP_ID')
    Left = 984
    Top = 216
  end
  object Qr_Sol_Excluidas: TQuery
    CachedUpdates = True
    AfterInsert = Qr_Sol_PendAfterInsert
    AfterEdit = Qr_Sol_PendAfterEdit
    BeforePost = Qr_Sol_PendBeforePost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT CADSOL_FP.*'
      ',SFP_PCO_UNI_VENDA*SFP_QTDSOL AS valortot_sol'
      ',VNOME as nomven'
      ',PDNOME as nompro'
      
        ','#39'Incluido por '#39' || NVL(SFP_CODUSR_INC,0) || '#39'-'#39' || NVL(SFP_NOMU' +
        'SR_INC,'#39#39') || '#39' em '#39
      '||  TO_CHAR(NVL(SFP_DATHOR_INC,SYSDATE), '#39'dd/mm/yyyy hh:MM:ss'#39')'
      
        '|| case when NVL(SFP_CODUSR_ALT,0)=0 then '#39#39' else '#39' alterado por' +
        ' '#39' ||'
      
        'NVL(SFP_CODUSR_ALT,'#39#39') || '#39'-'#39' || NVL(SFP_NOMUSR_ALT,'#39#39') || '#39' em ' +
        #39' ||'
      'TO_CHAR(NVL(SFP_DATHOR_ALT,SYSDATE), '#39'dd/mm/yyyy hh:mm:ss'#39' ) end'
      ' as incluso'
      ' from'
      'CADSOL_FP,CADPRO,CADVEN'
      'where VCODVEN=SFP_CODVEN'
      'and PDCODPRO=SFP_CODPRO')
    UpdateObject = U_Sol_Excluidas
    Left = 920
    Top = 240
    object Qr_Sol_ExcluidasSFP_CODEMP: TFloatField
      FieldName = 'SFP_CODEMP'
    end
    object Qr_Sol_ExcluidasSFP_ID_ANO: TFloatField
      FieldName = 'SFP_ID_ANO'
    end
    object Qr_Sol_ExcluidasSFP_ID: TFloatField
      FieldName = 'SFP_ID'
    end
    object Qr_Sol_ExcluidasSFP_ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'SFP_ITEM'
    end
    object Qr_Sol_ExcluidasSFP_CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Prod'
      FieldName = 'SFP_CODPRO'
    end
    object Qr_Sol_ExcluidasSFP_CODBAR: TStringField
      DisplayLabel = 'C'#243'd.Barras'
      FieldName = 'SFP_CODBAR'
      Size = 14
    end
    object Qr_Sol_ExcluidasSFP_QTDPRESC: TFloatField
      DisplayLabel = 'Qtd.Prescrita'
      FieldName = 'SFP_QTDPRESC'
    end
    object Qr_Sol_ExcluidasSFP_QTDSOL: TFloatField
      FieldName = 'SFP_QTDSOL'
    end
    object Qr_Sol_ExcluidasSFP_QTDAUT: TFloatField
      FieldName = 'SFP_QTDAUT'
    end
    object Qr_Sol_ExcluidasSFP_PCO_UNI_VENDA: TFloatField
      DisplayLabel = 'P'#231'o.Unit.Venda'
      FieldName = 'SFP_PCO_UNI_VENDA'
    end
    object Qr_Sol_ExcluidasSFP_QTD_CPR_ML_DIA: TFloatField
      DisplayLabel = 'Qtd.Comp/ML ao dia'
      FieldName = 'SFP_QTD_CPR_ML_DIA'
    end
    object Qr_Sol_ExcluidasSFP_MENS_RECEPCAO: TMemoField
      FieldName = 'SFP_MENS_RECEPCAO'
      BlobType = ftMemo
      Size = 2000
    end
    object Qr_Sol_ExcluidasSFP_NUMAUT: TStringField
      FieldName = 'SFP_NUMAUT'
      Size = 30
    end
    object Qr_Sol_ExcluidasSFP_PAGO_MS: TFloatField
      FieldName = 'SFP_PAGO_MS'
    end
    object Qr_Sol_ExcluidasSFP_PAGO_CLIENTE: TFloatField
      FieldName = 'SFP_PAGO_CLIENTE'
    end
    object Qr_Sol_ExcluidasSFP_CRM_MEDICO: TStringField
      FieldName = 'SFP_CRM_MEDICO'
    end
    object Qr_Sol_ExcluidasSFP_CRM_MEDICO_UF: TStringField
      FieldName = 'SFP_CRM_MEDICO_UF'
      Size = 2
    end
    object Qr_Sol_ExcluidasSFP_DATARECEITA: TDateTimeField
      FieldName = 'SFP_DATARECEITA'
    end
    object Qr_Sol_ExcluidasSFP_CODVEN: TFloatField
      FieldName = 'SFP_CODVEN'
    end
    object Qr_Sol_ExcluidasSFP_STATUS: TFloatField
      FieldName = 'SFP_STATUS'
    end
    object Qr_Sol_ExcluidasSFP_DATHOR_INC: TDateTimeField
      FieldName = 'SFP_DATHOR_INC'
    end
    object Qr_Sol_ExcluidasSFP_CODUSR_INC: TFloatField
      FieldName = 'SFP_CODUSR_INC'
    end
    object Qr_Sol_ExcluidasSFP_NOMUSR_INC: TStringField
      FieldName = 'SFP_NOMUSR_INC'
      Size = 40
    end
    object Qr_Sol_ExcluidasSFP_DATHOR_ALT: TDateTimeField
      FieldName = 'SFP_DATHOR_ALT'
    end
    object Qr_Sol_ExcluidasSFP_CODUSR_ALT: TFloatField
      FieldName = 'SFP_CODUSR_ALT'
    end
    object Qr_Sol_ExcluidasSFP_NOMUSR_ALT: TStringField
      FieldName = 'SFP_NOMUSR_ALT'
      Size = 40
    end
    object Qr_Sol_ExcluidasSFP_CLIENTE_CPF: TStringField
      FieldName = 'SFP_CLIENTE_CPF'
      Size = 15
    end
    object Qr_Sol_ExcluidasSFP_CLIENTE_NOME: TStringField
      FieldName = 'SFP_CLIENTE_NOME'
      Size = 100
    end
    object Qr_Sol_ExcluidasSFP_QTDEMB: TFloatField
      FieldName = 'SFP_QTDEMB'
    end
    object Qr_Sol_ExcluidasSFP_STATUS_RECECAO: TStringField
      FieldName = 'SFP_STATUS_RECECAO'
      Size = 3
    end
    object Qr_Sol_ExcluidasVALORTOT_SOL: TFloatField
      DisplayLabel = 'Total Solicitado'
      FieldName = 'VALORTOT_SOL'
    end
    object Qr_Sol_ExcluidasNOMVEN: TStringField
      FieldName = 'NOMVEN'
      Size = 40
    end
    object Qr_Sol_ExcluidasNOMPRO: TStringField
      DisplayLabel = 'Descri'#231#227'o dos Produtos'
      FieldName = 'NOMPRO'
      Size = 120
    end
    object Qr_Sol_ExcluidasINCLUSO: TStringField
      FieldName = 'INCLUSO'
      Size = 235
    end
  end
  object src_Sol_Excluidas: TDataSource
    DataSet = Qr_Sol_Excluidas
    Left = 962
    Top = 242
  end
  object U_Sol_Excluidas: TUpdateSQL
    ModifySQL.Strings = (
      'update CADSOL_FP'
      'set'
      '  SFP_CODEMP = :SFP_CODEMP,'
      '  SFP_ID_ANO = :SFP_ID_ANO,'
      '  SFP_ID = :SFP_ID,'
      '  SFP_ITEM = :SFP_ITEM,'
      '  SFP_CODPRO = :SFP_CODPRO,'
      '  SFP_CODBAR = :SFP_CODBAR,'
      '  SFP_QTDPRESC = :SFP_QTDPRESC,'
      '  SFP_QTDSOL = :SFP_QTDSOL,'
      '  SFP_QTDAUT = :SFP_QTDAUT,'
      '  SFP_PCO_UNI_VENDA = :SFP_PCO_UNI_VENDA,'
      '  SFP_QTD_CPR_ML_DIA = :SFP_QTD_CPR_ML_DIA,'
      '  SFP_MENS_RECEPCAO = :SFP_MENS_RECEPCAO,'
      '  SFP_NUMAUT = :SFP_NUMAUT,'
      '  SFP_PAGO_MS = :SFP_PAGO_MS,'
      '  SFP_PAGO_CLIENTE = :SFP_PAGO_CLIENTE,'
      '  SFP_CRM_MEDICO = :SFP_CRM_MEDICO,'
      '  SFP_CRM_MEDICO_UF = :SFP_CRM_MEDICO_UF,'
      '  SFP_DATARECEITA = :SFP_DATARECEITA,'
      '  SFP_CODVEN = :SFP_CODVEN,'
      '  SFP_STATUS = :SFP_STATUS,'
      '  SFP_DATHOR_INC = :SFP_DATHOR_INC,'
      '  SFP_CODUSR_INC = :SFP_CODUSR_INC,'
      '  SFP_NOMUSR_INC = :SFP_NOMUSR_INC,'
      '  SFP_DATHOR_ALT = :SFP_DATHOR_ALT,'
      '  SFP_CODUSR_ALT = :SFP_CODUSR_ALT,'
      '  SFP_NOMUSR_ALT = :SFP_NOMUSR_ALT,'
      '  SFP_CLIENTE_CPF = :SFP_CLIENTE_CPF,'
      '  SFP_CLIENTE_NOME = :SFP_CLIENTE_NOME,'
      '  SFP_QTDEMB = :SFP_QTDEMB,'
      '  SFP_STATUS_RECECAO = :SFP_STATUS_RECECAO'
      'where'
      '  SFP_CODEMP = :OLD_SFP_CODEMP and'
      '  SFP_ID_ANO = :OLD_SFP_ID_ANO and'
      '  SFP_ID = :OLD_SFP_ID and'
      '  SFP_ITEM = :OLD_SFP_ITEM')
    InsertSQL.Strings = (
      'insert into CADSOL_FP'
      '  (SFP_CODEMP, SFP_ID_ANO, SFP_ID, SFP_ITEM, SFP_CODPRO, '
      'SFP_CODBAR, SFP_QTDPRESC, '
      
        '   SFP_QTDSOL, SFP_QTDAUT, SFP_PCO_UNI_VENDA, SFP_QTD_CPR_ML_DIA' +
        ', '
      'SFP_MENS_RECEPCAO, '
      '   SFP_NUMAUT, SFP_PAGO_MS, SFP_PAGO_CLIENTE, SFP_CRM_MEDICO, '
      'SFP_CRM_MEDICO_UF, '
      '   SFP_DATARECEITA, SFP_CODVEN, SFP_STATUS, SFP_DATHOR_INC, '
      'SFP_CODUSR_INC, '
      '   SFP_NOMUSR_INC, SFP_DATHOR_ALT, SFP_CODUSR_ALT, '
      'SFP_NOMUSR_ALT, SFP_CLIENTE_CPF, '
      '   SFP_CLIENTE_NOME, SFP_QTDEMB, SFP_STATUS_RECECAO)'
      'values'
      '  (:SFP_CODEMP, :SFP_ID_ANO, :SFP_ID, :SFP_ITEM, :SFP_CODPRO, '
      ':SFP_CODBAR, '
      '   :SFP_QTDPRESC, :SFP_QTDSOL, :SFP_QTDAUT, :SFP_PCO_UNI_VENDA, '
      ':SFP_QTD_CPR_ML_DIA, '
      '   :SFP_MENS_RECEPCAO, :SFP_NUMAUT, :SFP_PAGO_MS, '
      ':SFP_PAGO_CLIENTE, :SFP_CRM_MEDICO, '
      
        '   :SFP_CRM_MEDICO_UF, :SFP_DATARECEITA, :SFP_CODVEN, :SFP_STATU' +
        'S, '
      ':SFP_DATHOR_INC, '
      '   :SFP_CODUSR_INC, :SFP_NOMUSR_INC, :SFP_DATHOR_ALT, '
      ':SFP_CODUSR_ALT, '
      '   :SFP_NOMUSR_ALT, :SFP_CLIENTE_CPF, :SFP_CLIENTE_NOME, '
      ':SFP_QTDEMB, :SFP_STATUS_RECECAO)')
    DeleteSQL.Strings = (
      'delete from CADSOL_FP'
      'where'
      '  SFP_CODEMP = :OLD_SFP_CODEMP and'
      '  SFP_ID_ANO = :OLD_SFP_ID_ANO and'
      '  SFP_ID = :OLD_SFP_ID and'
      '  SFP_ITEM = :OLD_SFP_ITEM')
    Left = 984
    Top = 248
  end
end
