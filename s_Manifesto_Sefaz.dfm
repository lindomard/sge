object Frm_Manifesto_Sefaz: TFrm_Manifesto_Sefaz
  Left = 56
  Top = 71
  Width = 1212
  Height = 633
  Caption = 'Manifesto de Entrega(Sefaz)'
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
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label39: TLabel
    Left = 1064
    Top = 80
    Width = 46
    Height = 13
    Caption = 'Label39'
  end
  object PageControl4: TPageControl
    Left = 0
    Top = 0
    Width = 1196
    Height = 595
    ActivePage = tsGeral
    Align = alClient
    TabOrder = 0
    object tsGeral: TTabSheet
      Caption = 'Geral'
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 1188
        Height = 16
        Align = alTop
        Alignment = taCenter
        Caption = 'Manifesto de Entrega de Mercadorias (SEFAZ)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object gbConsultas: TGroupBox
        Left = 0
        Top = 16
        Width = 1188
        Height = 103
        Align = alTop
        Caption = 'Consultas'
        TabOrder = 0
        object Label62: TLabel
          Left = 810
          Top = 9
          Width = 75
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Periodo de:'
        end
        object Label63: TLabel
          Left = 1037
          Top = 11
          Width = 8
          Height = 13
          Caption = #224
        end
        object Label34: TLabel
          Left = 458
          Top = 13
          Width = 103
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Chave Inicial:'
        end
        object Label35: TLabel
          Left = 629
          Top = 13
          Width = 103
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Chave Final:'
        end
        object edt_datini: TDateEdit
          Left = 889
          Top = 8
          Width = 121
          Height = 21
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 0
        end
        object edt_datfin: TDateEdit
          Left = 1065
          Top = 7
          Width = 121
          Height = 21
          Ctl3D = False
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 1
        end
        object edt_chaveini: TEdit
          Left = 567
          Top = 11
          Width = 77
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
        end
        object edt_chavefin: TEdit
          Left = 738
          Top = 11
          Width = 77
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
        end
        object BBnAtu: TBitBtn
          Left = 502
          Top = 45
          Width = 99
          Height = 22
          Cursor = crHandPoint
          Caption = 'Atuali&zar'
          TabOrder = 4
          OnClick = BBnAtuClick
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333F33333333333
            00003333344333333333333333388F3333333333000033334224333333333333
            338338F3333333330000333422224333333333333833338F3333333300003342
            222224333333333383333338F3333333000034222A22224333333338F338F333
            8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
            33333338F83338F338F33333000033A33333A222433333338333338F338F3333
            0000333333333A222433333333333338F338F33300003333333333A222433333
            333333338F338F33000033333333333A222433333333333338F338F300003333
            33333333A222433333333333338F338F00003333333333333A22433333333333
            3338F38F000033333333333333A223333333333333338F830000333333333333
            333A333333333333333338330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
        end
        object BitBtn1: TBitBtn
          Left = 630
          Top = 45
          Width = 99
          Height = 22
          Cursor = crHandPoint
          Caption = 'Testar Servidor'
          TabOrder = 5
          OnClick = BitBtn1Click
          Glyph.Data = {
            DE010000424DDE01000000000000760000002800000024000000120000000100
            0400000000006801000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            3333333333333333333333330000333333333333333333333333F33333333333
            00003333344333333333333333388F3333333333000033334224333333333333
            338338F3333333330000333422224333333333333833338F3333333300003342
            222224333333333383333338F3333333000034222A22224333333338F338F333
            8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
            33333338F83338F338F33333000033A33333A222433333338333338F338F3333
            0000333333333A222433333333333338F338F33300003333333333A222433333
            333333338F338F33000033333333333A222433333333333338F338F300003333
            33333333A222433333333333338F338F00003333333333333A22433333333333
            3338F38F000033333333333333A223333333333333338F830000333333333333
            333A333333333333333338330000333333333333333333333333333333333333
            0000}
          NumGlyphs = 2
        end
        object CLBStatus: TCheckListBox
          Left = 2
          Top = 15
          Width = 375
          Height = 86
          Align = alLeft
          Color = 16776176
          Columns = 2
          ItemHeight = 13
          Items.Strings = (
            '0-Em Digitacao'
            '1-Gravada'
            '2-Enviando'
            '3-Rejeitada'
            '4-Enviado Ok'
            '5-Encerrando'
            '6-Encerrada'
            '7-Excluido Antes de Encerrar'
            '8-Excluido antes de Enviar'
            '9-Excluido ja Encerrada'
            'Todos')
          Style = lbOwnerDrawFixed
          TabOrder = 6
          OnClick = CLBStatusClick
        end
      end
      object Panel_Movimento: TPanel
        Left = 0
        Top = 119
        Width = 1188
        Height = 41
        Align = alTop
        TabOrder = 1
        object bbIncluir: TBitBtn
          Left = 4
          Top = 4
          Width = 130
          Height = 19
          Hint = 'Inclus'#227'o de novos registros'
          Caption = '&Novo'
          ParentShowHint = False
          ShowHint = True
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
          Top = 4
          Width = 130
          Height = 20
          Hint = 'Permite alterar o registro atual'
          Caption = '&Alterar'
          ParentShowHint = False
          ShowHint = True
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
          Left = 262
          Top = 4
          Width = 130
          Height = 20
          Hint = 'Exclus'#227'o do registro atual'
          Caption = '&Excluir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = bbExcluirClick
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
        object bbGravar: TBitBtn
          Left = 391
          Top = 4
          Width = 130
          Height = 20
          Hint = 'Grava o registro atual'
          Caption = '&Gravar'
          Enabled = False
          ParentShowHint = False
          ShowHint = True
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
          Left = 520
          Top = 4
          Width = 130
          Height = 20
          Hint = 'Cancela a opera'#231#227'o atual'
          Caption = 'Cance&lar'
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
        object bbEnviaraoSefaz: TBitBtn
          Left = 649
          Top = 4
          Width = 130
          Height = 20
          Hint = 'Enviar ao Sefaz'
          Caption = 'Enviar ao Sefaz'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnClick = bbEnviaraoSefazClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
            300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
            330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
            333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
            339977FF777777773377000BFB03333333337773FF733333333F333000333333
            3300333777333333337733333333333333003333333333333377333333333333
            333333333333333333FF33333333333330003333333333333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
        end
        object bbImprimir: TBitBtn
          Left = 779
          Top = 4
          Width = 130
          Height = 20
          Hint = 'Enviar ao Sefaz'
          Caption = 'Imprimir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
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
        object btn_sair: TBitBtn
          Left = 908
          Top = 4
          Width = 130
          Height = 20
          Cursor = crHandPoint
          Hint = 'Fecha Esta Janela'
          Caption = '&Sair'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnClick = btn_sairClick
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
      object Panel11: TPanel
        Left = 0
        Top = 160
        Width = 1188
        Height = 60
        Align = alTop
        TabOrder = 2
        object RxDBCBStatus: TRxDBComboBox
          Left = 151
          Top = 15
          Width = 160
          Height = 21
          Style = csDropDownList
          DataField = 'MDFE_STATUS'
          DataSource = Src_MDFE
          Enabled = False
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            '0-Em Digitacao'
            '1-Digitado'
            '2-Enviando'
            '3-Pendente'
            '4-Enviado'
            '5-Excluido Antes de Enviar'
            '6-Excluido Apos Enviar'
            '')
          TabOrder = 0
          Values.Strings = (
            '0'
            '1'
            '2'
            '3'
            '4'
            '5'
            '6')
        end
        object StaticText9: TStaticText
          Left = 152
          Top = 0
          Width = 156
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Status'
          TabOrder = 1
        end
        object StaticText11: TStaticText
          Left = 312
          Top = 0
          Width = 286
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Chave de Acesso'
          TabOrder = 2
        end
        object DBE_MDFE_CHV_CHCTE: TDBEdit
          Left = 312
          Top = 16
          Width = 286
          Height = 19
          Ctl3D = False
          DataField = 'MDFE_CHV_MDFE'
          DataSource = Src_MDFE
          ParentCtl3D = False
          TabOrder = 3
        end
        object StaticText12: TStaticText
          Left = 602
          Top = 0
          Width = 150
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'N'#250'mero'
          TabOrder = 4
        end
        object DBE_MDFE_NUMERO: TDBEdit
          Left = 602
          Top = 16
          Width = 150
          Height = 19
          Ctl3D = False
          DataField = 'MDFE_NUMERO'
          DataSource = Src_MDFE
          Enabled = False
          ParentCtl3D = False
          TabOrder = 5
        end
        object StaticText13: TStaticText
          Left = 753
          Top = 0
          Width = 93
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Vers'#227'o do XML'
          TabOrder = 6
        end
        object RxDBCB_MDFE_VERSAO_XML: TRxDBComboBox
          Left = 753
          Top = 15
          Width = 93
          Height = 21
          DataField = 'MDFE_VERSAO_XML'
          DataSource = Src_MDFE
          EnableValues = False
          ItemHeight = 13
          Items.Strings = (
            '3.00')
          TabOrder = 7
          Values.Strings = (
            '3.00')
        end
        object StaticText14: TStaticText
          Left = 5
          Top = 0
          Width = 138
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Chave ID'
          TabOrder = 8
        end
        object DBE_MDFE_ID: TDBEdit
          Left = 5
          Top = 16
          Width = 136
          Height = 19
          Ctl3D = False
          DataField = 'MDFE_ID'
          DataSource = Src_MDFE
          ParentCtl3D = False
          TabOrder = 9
        end
        object StaticText15: TStaticText
          Left = 853
          Top = 2
          Width = 300
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Ambiente'
          TabOrder = 10
        end
        object RxDBCB_MDFE_TPAMB: TRxDBComboBox
          Left = 853
          Top = 17
          Width = 300
          Height = 21
          Style = csDropDownList
          DataField = 'MDFE_TPAMB'
          DataSource = Src_MDFE
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            '1 - Produ'#231#227'o'
            '2 - Homologa'#231#227'o ')
          TabOrder = 11
          Values.Strings = (
            '1'
            '2')
        end
      end
      object PageControlGeral: TPageControl
        Left = 0
        Top = 220
        Width = 1188
        Height = 347
        ActivePage = tsLista
        Align = alClient
        TabOrder = 3
        OnChange = PageControlGeralChange
        object ts_infdoc: TTabSheet
          Caption = 'Informa'#231#245'es dos documentos'
          object PageControlNotasTransptot: TPageControl
            Left = 0
            Top = 0
            Width = 1180
            Height = 319
            ActivePage = tsNotasFiscais
            Align = alClient
            TabOrder = 0
            TabStop = False
            object tsNotasFiscais: TTabSheet
              Caption = 'Notas Fiscais'
              object DBGrid_manifesto_nf: TDBGrid
                Left = 0
                Top = 0
                Width = 1172
                Height = 114
                Align = alClient
                DataSource = src_manifesto_nf
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'MS Sans Serif'
                TitleFont.Style = [fsBold]
                OnColExit = DBGrid_manifesto_nfColExit
                OnExit = DBGrid_manifesto_nfExit
                OnKeyPress = DBGrid_manifesto_nfKeyPress
                Columns = <
                  item
                    Expanded = False
                    FieldName = 'mnf_chv_nfe'
                    Title.Alignment = taCenter
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'mnf_chaveped'
                    Title.Alignment = taCenter
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'mnf_numero_nf'
                    Title.Alignment = taCenter
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'mnf_data_nf'
                    Title.Alignment = taCenter
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'mnf_valor_nf'
                    Title.Alignment = taCenter
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'mnf_razsoc'
                    Title.Alignment = taCenter
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'mnf_cidade'
                    Title.Alignment = taCenter
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'mnf_uf'
                    Title.Alignment = taCenter
                    Visible = True
                  end>
              end
              object Panel6: TPanel
                Left = 0
                Top = 114
                Width = 1172
                Height = 177
                Align = alBottom
                TabOrder = 1
                object gb_codmun_carregamento: TGroupBox
                  Left = 1
                  Top = 1
                  Width = 390
                  Height = 175
                  Align = alLeft
                  Caption = 'Municipio de Carregamento:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 0
                  object Panel4: TPanel
                    Left = 2
                    Top = 15
                    Width = 386
                    Height = 38
                    Align = alTop
                    TabOrder = 0
                    object cb_uf_carregamento: TComboBox
                      Left = -1
                      Top = 16
                      Width = 43
                      Height = 21
                      Ctl3D = False
                      ItemHeight = 13
                      ParentCtl3D = False
                      TabOrder = 0
                      OnClick = cb_uf_carregamentoClick
                      Items.Strings = (
                        'AC'
                        'AL'
                        'AP'
                        'AM'
                        'BA'
                        'CE'
                        'DF'
                        'ES'
                        'GO'
                        'MA'
                        'MG'
                        'MT'
                        'MS'
                        'PA'
                        'PB'
                        'PR'
                        'PE'
                        'PI'
                        'RJ'
                        'RN'
                        'RS'
                        'RO'
                        'RR'
                        'SC'
                        'SP'
                        'SE'
                        'TO')
                    end
                    object DBLookupCB_CodMunCarregameno: TDBLookupComboBox
                      Left = 41
                      Top = 17
                      Width = 265
                      Height = 21
                      KeyField = 'lcodmun_ibge'
                      ListField = 'lnome'
                      ListSource = src_municipio
                      TabOrder = 1
                    end
                    object bbIncluiCarregamento: TBitBtn
                      Left = 310
                      Top = 16
                      Width = 75
                      Height = 21
                      Caption = 'incluir'
                      TabOrder = 2
                      OnClick = bbIncluiCarregamentoClick
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
                    object StaticText5: TStaticText
                      Left = 2
                      Top = 1
                      Width = 37
                      Height = 17
                      Alignment = taCenter
                      AutoSize = False
                      BorderStyle = sbsSingle
                      Caption = 'UF'
                      TabOrder = 3
                    end
                    object StaticText6: TStaticText
                      Left = 38
                      Top = 0
                      Width = 404
                      Height = 17
                      Alignment = taCenter
                      AutoSize = False
                      BorderStyle = sbsSingle
                      Caption = 'Municipio'
                      TabOrder = 4
                    end
                  end
                  object Panel5: TPanel
                    Left = 2
                    Top = 147
                    Width = 386
                    Height = 26
                    Align = alBottom
                    TabOrder = 1
                    object bbCadMunCarregExcluir: TBitBtn
                      Left = 310
                      Top = 2
                      Width = 75
                      Height = 25
                      Caption = 'Excluir'
                      TabOrder = 0
                      OnClick = bbCadMunCarregExcluirClick
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
                  object DBGrid_munCarreg: TDBGrid
                    Left = 2
                    Top = 53
                    Width = 386
                    Height = 94
                    Align = alClient
                    DataSource = src_CadMunCarreg
                    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                    TabOrder = 2
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = [fsBold]
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'luf'
                        Title.Alignment = taCenter
                        Width = 38
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'lnome'
                        Title.Alignment = taCenter
                        Width = 323
                        Visible = True
                      end>
                  end
                end
                object gb_munDesc: TGroupBox
                  Left = 395
                  Top = 0
                  Width = 390
                  Height = 177
                  Caption = 'Municipio Descarregamento Maximo 50:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 1
                  object panel_mundesc_cab: TPanel
                    Left = 2
                    Top = 15
                    Width = 386
                    Height = 38
                    Align = alTop
                    TabOrder = 0
                    object cb_uf: TComboBox
                      Left = -1
                      Top = 16
                      Width = 43
                      Height = 21
                      Ctl3D = False
                      ItemHeight = 13
                      ParentCtl3D = False
                      TabOrder = 0
                      OnClick = cb_ufClick
                      Items.Strings = (
                        'AC'
                        'AL'
                        'AP'
                        'AM'
                        'BA'
                        'CE'
                        'DF'
                        'ES'
                        'GO'
                        'MA'
                        'MG'
                        'MT'
                        'MS'
                        'PA'
                        'PB'
                        'PR'
                        'PE'
                        'PI'
                        'RJ'
                        'RN'
                        'RS'
                        'RO'
                        'RR'
                        'SC'
                        'SP'
                        'SE'
                        'TO')
                    end
                    object DBLookupCBCodloc: TDBLookupComboBox
                      Left = 41
                      Top = 16
                      Width = 265
                      Height = 21
                      KeyField = 'lcodmun_ibge'
                      ListField = 'lnome'
                      ListSource = src_municipio
                      TabOrder = 1
                    end
                    object bbIncMunDesc: TBitBtn
                      Left = 310
                      Top = 16
                      Width = 75
                      Height = 21
                      Caption = 'incluir'
                      TabOrder = 2
                      OnClick = bbIncMunDescClick
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
                    object StaticText1: TStaticText
                      Left = 2
                      Top = 1
                      Width = 37
                      Height = 17
                      Alignment = taCenter
                      AutoSize = False
                      BorderStyle = sbsSingle
                      Caption = 'UF'
                      TabOrder = 3
                    end
                    object StaticText2: TStaticText
                      Left = 38
                      Top = 1
                      Width = 404
                      Height = 17
                      Alignment = taCenter
                      AutoSize = False
                      BorderStyle = sbsSingle
                      Caption = 'Municipio'
                      TabOrder = 4
                    end
                  end
                  object panelMunDescRodape: TPanel
                    Left = 2
                    Top = 149
                    Width = 386
                    Height = 26
                    Align = alBottom
                    TabOrder = 1
                    object bbMunDescExcluir: TBitBtn
                      Left = 310
                      Top = 2
                      Width = 75
                      Height = 25
                      Caption = 'Excluir'
                      TabOrder = 0
                      OnClick = bbMunDescExcluirClick
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
                  object dbgrid_mundesc: TDBGrid
                    Left = 2
                    Top = 53
                    Width = 386
                    Height = 96
                    Align = alClient
                    DataSource = src_mundesc
                    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                    TabOrder = 2
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = [fsBold]
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'luf'
                        Title.Alignment = taCenter
                        Width = 38
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'lnome'
                        Title.Alignment = taCenter
                        Width = 377
                        Visible = True
                      end>
                  end
                end
                object gb_uf_percurso: TGroupBox
                  Left = 781
                  Top = 1
                  Width = 390
                  Height = 175
                  Align = alRight
                  Caption = 'UF Percurso Maximo 25:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  TabOrder = 2
                  object Panel2: TPanel
                    Left = 2
                    Top = 15
                    Width = 386
                    Height = 38
                    Align = alTop
                    TabOrder = 0
                    object CB_UFPercurs: TComboBox
                      Left = -1
                      Top = 16
                      Width = 43
                      Height = 21
                      Ctl3D = False
                      ItemHeight = 13
                      ParentCtl3D = False
                      TabOrder = 0
                      OnClick = CB_UFPercursClick
                      Items.Strings = (
                        'AC'
                        'AL'
                        'AP'
                        'AM'
                        'BA'
                        'CE'
                        'DF'
                        'ES'
                        'GO'
                        'MA'
                        'MG'
                        'MT'
                        'MS'
                        'PA'
                        'PB'
                        'PR'
                        'PE'
                        'PI'
                        'RJ'
                        'RN'
                        'RS'
                        'RO'
                        'RR'
                        'SC'
                        'SP'
                        'SE'
                        'TO')
                    end
                    object DBLookupCBUfPerrcurso: TDBLookupComboBox
                      Left = 41
                      Top = 16
                      Width = 265
                      Height = 21
                      Enabled = False
                      KeyField = 'puf'
                      ListField = 'pnom'
                      ListSource = Src_UF
                      ReadOnly = True
                      TabOrder = 1
                    end
                    object bbUFPerc: TBitBtn
                      Left = 310
                      Top = 16
                      Width = 75
                      Height = 21
                      Caption = 'incluir'
                      TabOrder = 2
                      OnClick = bbUFPercClick
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
                    object StaticText3: TStaticText
                      Left = 2
                      Top = 1
                      Width = 37
                      Height = 17
                      Alignment = taCenter
                      AutoSize = False
                      BorderStyle = sbsSingle
                      Caption = 'UF'
                      TabOrder = 3
                    end
                    object StaticText4: TStaticText
                      Left = 38
                      Top = 1
                      Width = 404
                      Height = 17
                      Alignment = taCenter
                      AutoSize = False
                      BorderStyle = sbsSingle
                      Caption = 'Municipio'
                      TabOrder = 4
                    end
                  end
                  object Panel3: TPanel
                    Left = 2
                    Top = 147
                    Width = 386
                    Height = 26
                    Align = alBottom
                    TabOrder = 1
                    object bbMunPercursoExcluir: TBitBtn
                      Left = 310
                      Top = 2
                      Width = 75
                      Height = 25
                      Caption = 'Excluir'
                      TabOrder = 0
                      OnClick = bbMunPercursoExcluirClick
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
                  object DBGrid_uf_percurso: TDBGrid
                    Left = 2
                    Top = 53
                    Width = 386
                    Height = 94
                    Align = alClient
                    DataSource = src_CadUFPercurso
                    Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                    TabOrder = 2
                    TitleFont.Charset = DEFAULT_CHARSET
                    TitleFont.Color = clWindowText
                    TitleFont.Height = -11
                    TitleFont.Name = 'MS Sans Serif'
                    TitleFont.Style = [fsBold]
                    Columns = <
                      item
                        Expanded = False
                        FieldName = 'ufp_uf'
                        Title.Alignment = taCenter
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'pnom'
                        Title.Alignment = taCenter
                        Width = 386
                        Visible = True
                      end>
                  end
                end
              end
            end
            object TabSheet1: TTabSheet
              Caption = 'Transporte Rodoviario'
              ImageIndex = 1
              object PageControl3: TPageControl
                Left = 0
                Top = 0
                Width = 1172
                Height = 291
                ActivePage = tsVeiculoTracao
                Align = alClient
                TabOrder = 0
                object tsVeiculoTracao: TTabSheet
                  Caption = 'Veiculo de Tra'#231#227'o'
                  object Label2: TLabel
                    Left = 8
                    Top = 9
                    Width = 89
                    Height = 13
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = 'RNTRC:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object Label3: TLabel
                    Left = 248
                    Top = 9
                    Width = 217
                    Height = 13
                    Alignment = taRightJustify
                    AutoSize = False
                    Caption = 'C'#243'digo de Agendamento no Porto:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object DBE_MDFE_VT_RNTRC: TDBEdit
                    Left = 104
                    Top = 4
                    Width = 108
                    Height = 19
                    Ctl3D = False
                    DataField = 'MDFE_VT_RNTRC'
                    DataSource = Src_MDFE
                    ParentCtl3D = False
                    TabOrder = 0
                  end
                  object DBE_MDFE_VT_COD_AG_PORTO: TDBEdit
                    Left = 470
                    Top = 6
                    Width = 171
                    Height = 19
                    Ctl3D = False
                    DataField = 'MDFE_VT_COD_AG_PORTO'
                    DataSource = Src_MDFE
                    ParentCtl3D = False
                    TabOrder = 1
                  end
                  object GroupBox1: TGroupBox
                    Left = 8
                    Top = 40
                    Width = 1161
                    Height = 73
                    Caption = 'Veiculo de Tra'#231#227'o:'
                    TabOrder = 2
                    object Label4: TLabel
                      Left = 8
                      Top = 15
                      Width = 156
                      Height = 13
                      Alignment = taRightJustify
                      AutoSize = False
                      Caption = 'C'#243'digo Interno do Veiculo:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label6: TLabel
                      Left = 282
                      Top = 15
                      Width = 117
                      Height = 13
                      Alignment = taRightJustify
                      AutoSize = False
                      Caption = 'Tipo de Carroceria:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label11: TLabel
                      Left = 545
                      Top = 15
                      Width = 65
                      Height = 13
                      Alignment = taRightJustify
                      AutoSize = False
                      Caption = 'Placa:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label12: TLabel
                      Left = 717
                      Top = 15
                      Width = 65
                      Height = 13
                      Alignment = taRightJustify
                      AutoSize = False
                      Caption = 'Tara:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label13: TLabel
                      Left = 860
                      Top = 15
                      Width = 65
                      Height = 13
                      Alignment = taRightJustify
                      AutoSize = False
                      Caption = 'Renavan:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label14: TLabel
                      Left = 45
                      Top = 37
                      Width = 117
                      Height = 13
                      Alignment = taRightJustify
                      AutoSize = False
                      Caption = 'UF:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label15: TLabel
                      Left = 281
                      Top = 36
                      Width = 117
                      Height = 13
                      Alignment = taRightJustify
                      AutoSize = False
                      Caption = 'Tipo de Rodado:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label16: TLabel
                      Left = 514
                      Top = 37
                      Width = 101
                      Height = 14
                      Alignment = taRightJustify
                      AutoSize = False
                      Caption = 'Capacidade KG:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label17: TLabel
                      Left = 685
                      Top = 39
                      Width = 101
                      Height = 13
                      Alignment = taRightJustify
                      AutoSize = False
                      Caption = 'Capacidade M3:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object DBE_MDFE_VT_CINT: TDBEdit
                      Left = 169
                      Top = 12
                      Width = 97
                      Height = 19
                      Ctl3D = False
                      DataField = 'MDFE_VT_CINT'
                      DataSource = Src_MDFE
                      ParentCtl3D = False
                      TabOrder = 0
                    end
                    object RxDBCB_MDFE_VT_TPCAR: TRxDBComboBox
                      Left = 405
                      Top = 11
                      Width = 107
                      Height = 21
                      Style = csDropDownList
                      DataField = 'MDFE_VT_TPCAR'
                      DataSource = Src_MDFE
                      EnableValues = True
                      ItemHeight = 13
                      Items.Strings = (
                        '00 - n'#227'o aplic'#225'vel'
                        '01 - Aberta'
                        '02 - Fechada/Ba'#250
                        '03 - Granelera'
                        '04 - Porta Container'
                        '05 - Sider')
                      TabOrder = 1
                      Values.Strings = (
                        '00'
                        '01'
                        '02'
                        '03'
                        '04'
                        '05')
                    end
                    object DBE_MDFE_VT_PLACA: TDBEdit
                      Left = 618
                      Top = 12
                      Width = 70
                      Height = 19
                      Ctl3D = False
                      DataField = 'MDFE_VT_PLACA'
                      DataSource = Src_MDFE
                      ParentCtl3D = False
                      TabOrder = 2
                    end
                    object DBE_MDFE_VT_TARA: TDBEdit
                      Left = 791
                      Top = 12
                      Width = 56
                      Height = 19
                      Ctl3D = False
                      DataField = 'MDFE_VT_TARA'
                      DataSource = Src_MDFE
                      ParentCtl3D = False
                      TabOrder = 3
                    end
                    object DBE_MDFE_VT_RENAVAN: TDBEdit
                      Left = 926
                      Top = 12
                      Width = 56
                      Height = 19
                      Ctl3D = False
                      DataField = 'MDFE_VT_RENAVAN'
                      DataSource = Src_MDFE
                      ParentCtl3D = False
                      TabOrder = 4
                    end
                    object RxDBCB_MDFE_VT_UF: TRxDBComboBox
                      Left = 168
                      Top = 33
                      Width = 49
                      Height = 21
                      Style = csDropDownList
                      DataField = 'MDFE_VT_UF'
                      DataSource = Src_MDFE
                      EnableValues = True
                      ItemHeight = 13
                      Items.Strings = (
                        'AC'
                        'AL'
                        'AP'
                        'AM'
                        'BA'
                        'CE'
                        'DF'
                        'ES'
                        'GO'
                        'MA'
                        'MG'
                        'MT'
                        'MS'
                        'PA'
                        'PB'
                        'PR'
                        'PE'
                        'PI'
                        'RJ'
                        'RN'
                        'RS'
                        'RO'
                        'RR'
                        'SC'
                        'SP'
                        'SE'
                        'TO')
                      TabOrder = 5
                      Values.Strings = (
                        'AC'
                        'AL'
                        'AP'
                        'AM'
                        'BA'
                        'CE'
                        'DF'
                        'ES'
                        'GO'
                        'MA'
                        'MG'
                        'MT'
                        'MS'
                        'PA'
                        'PB'
                        'PR'
                        'PE'
                        'PI'
                        'RJ'
                        'RN'
                        'RS'
                        'RO'
                        'RR'
                        'SC'
                        'SP'
                        'SE'
                        'TO')
                    end
                    object RxDBCB_MDFE_VT_TPROD: TRxDBComboBox
                      Left = 404
                      Top = 32
                      Width = 107
                      Height = 21
                      Style = csDropDownList
                      DataField = 'MDFE_VT_TPROD'
                      DataSource = Src_MDFE
                      EnableValues = True
                      ItemHeight = 13
                      Items.Strings = (
                        '01 - Truck;'
                        '02 - Toco;'
                        '03 - Cavalo Mec'#226'nico;'
                        '04 - VAN;'
                        '05 - Utilit'#225'rio;'
                        '06 - Outros. ')
                      TabOrder = 6
                      Values.Strings = (
                        '01'
                        '02'
                        '03'
                        '04'
                        '05'
                        '06')
                    end
                    object DBE_MDFE_VT_CAPKG: TDBEdit
                      Left = 619
                      Top = 34
                      Width = 70
                      Height = 19
                      Ctl3D = False
                      DataField = 'MDFE_VT_CAPKG'
                      DataSource = Src_MDFE
                      ParentCtl3D = False
                      TabOrder = 7
                    end
                    object DBE_MDFE_VT_CAPM3: TDBEdit
                      Left = 789
                      Top = 36
                      Width = 56
                      Height = 19
                      Ctl3D = False
                      DataField = 'MDFE_VT_CAPM3'
                      DataSource = Src_MDFE
                      ParentCtl3D = False
                      TabOrder = 8
                    end
                  end
                  object gb_proprietario: TGroupBox
                    Left = 16
                    Top = 120
                    Width = 548
                    Height = 145
                    Caption = 
                      'Proprietario (Preencher quando o veiculo n'#227'o for da Propria Empe' +
                      'sa:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 3
                    object Label18: TLabel
                      Left = 338
                      Top = 17
                      Width = 89
                      Height = 13
                      Alignment = taRightJustify
                      AutoSize = False
                      Caption = 'RNTRC:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label19: TLabel
                      Left = 10
                      Top = 39
                      Width = 117
                      Height = 13
                      Alignment = taRightJustify
                      AutoSize = False
                      Caption = 'Tipo de Proprietario:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label20: TLabel
                      Left = 309
                      Top = 37
                      Width = 117
                      Height = 13
                      Alignment = taRightJustify
                      AutoSize = False
                      Caption = 'UF:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label21: TLabel
                      Left = 11
                      Top = 95
                      Width = 65
                      Height = 13
                      Alignment = taRightJustify
                      AutoSize = False
                      Caption = 'Nome:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object Label22: TLabel
                      Left = 11
                      Top = 113
                      Width = 65
                      Height = 13
                      Alignment = taRightJustify
                      AutoSize = False
                      Caption = 'IE:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'MS Sans Serif'
                      Font.Style = [fsBold]
                      ParentFont = False
                    end
                    object DBCB_MDFE_PROP: TDBCheckBox
                      Left = 12
                      Top = 17
                      Width = 325
                      Height = 17
                      Caption = 'o Proprietario n'#227'o '#233' emitente iniciado no aplicativo'
                      DataField = 'MDFE_PROP'
                      DataSource = Src_MDFE
                      TabOrder = 0
                      ValueChecked = 'S'
                      ValueUnchecked = 'N'
                    end
                    object DBE_MDFE_PROP_RNTRC: TDBEdit
                      Left = 431
                      Top = 12
                      Width = 108
                      Height = 19
                      Ctl3D = False
                      DataField = 'MDFE_PROP_RNTRC'
                      DataSource = Src_MDFE
                      ParentCtl3D = False
                      TabOrder = 1
                    end
                    object RxDBCB_MDFE_TPPROP: TRxDBComboBox
                      Left = 133
                      Top = 35
                      Width = 107
                      Height = 21
                      Style = csDropDownList
                      DataField = 'MDFE_TPPROP'
                      DataSource = Src_MDFE
                      EnableValues = True
                      ItemHeight = 13
                      Items.Strings = (
                        '0-TAC Agregado;'
                        '1-TAC Independente;'
                        '2-Outros. ')
                      TabOrder = 2
                      Values.Strings = (
                        '0'
                        '1'
                        '2'
                        '')
                    end
                    object RxDBCB_MDFE_PROP_UF: TRxDBComboBox
                      Left = 431
                      Top = 33
                      Width = 49
                      Height = 21
                      Style = csDropDownList
                      DataField = 'MDFE_PROP_UF'
                      DataSource = Src_MDFE
                      EnableValues = True
                      ItemHeight = 13
                      Items.Strings = (
                        'AC'
                        'AL'
                        'AP'
                        'AM'
                        'BA'
                        'CE'
                        'DF'
                        'ES'
                        'GO'
                        'MA'
                        'MG'
                        'MT'
                        'MS'
                        'PA'
                        'PB'
                        'PR'
                        'PE'
                        'PI'
                        'RJ'
                        'RN'
                        'RS'
                        'RO'
                        'RR'
                        'SC'
                        'SP'
                        'SE'
                        'TO')
                      TabOrder = 3
                      Values.Strings = (
                        'AC'
                        'AL'
                        'AP'
                        'AM'
                        'BA'
                        'CE'
                        'DF'
                        'ES'
                        'GO'
                        'MA'
                        'MG'
                        'MT'
                        'MS'
                        'PA'
                        'PB'
                        'PR'
                        'PE'
                        'PI'
                        'RJ'
                        'RN'
                        'RS'
                        'RO'
                        'RR'
                        'SC'
                        'SP'
                        'SE'
                        'TO')
                    end
                    object DBE_MDFE_PROP_CPF: TDBEdit
                      Left = 187
                      Top = 62
                      Width = 149
                      Height = 19
                      Ctl3D = False
                      DataField = 'MDFE_PROP_CPF'
                      DataSource = Src_MDFE
                      ParentCtl3D = False
                      TabOrder = 4
                      OnExit = DBE_MDFE_PROP_CPFExit
                    end
                    object DBE_MDFE_PROP_CNPJ: TDBEdit
                      Left = 191
                      Top = 62
                      Width = 149
                      Height = 19
                      Ctl3D = False
                      DataField = 'MDFE_PROP_CNPJ'
                      DataSource = Src_MDFE
                      ParentCtl3D = False
                      TabOrder = 5
                      Visible = False
                      OnExit = DBE_MDFE_PROP_CNPJExit
                    end
                    object rg_prop_tp_doc: TRadioGroup
                      Left = 0
                      Top = 53
                      Width = 185
                      Height = 30
                      Caption = 'Tipo Documento:'
                      Columns = 2
                      ItemIndex = 0
                      Items.Strings = (
                        'CPF'
                        'CNPJ')
                      TabOrder = 6
                      OnClick = rg_prop_tp_docClick
                    end
                    object DBE_MDFE_PROP_NOME: TDBEdit
                      Left = 84
                      Top = 92
                      Width = 365
                      Height = 19
                      Ctl3D = False
                      DataField = 'MDFE_PROP_NOME'
                      DataSource = Src_MDFE
                      ParentCtl3D = False
                      TabOrder = 7
                    end
                    object DBE_MDFE_PROP_IE: TDBEdit
                      Left = 84
                      Top = 110
                      Width = 365
                      Height = 19
                      Ctl3D = False
                      DataField = 'MDFE_PROP_IE'
                      DataSource = Src_MDFE
                      ParentCtl3D = False
                      TabOrder = 8
                    end
                  end
                  object GroupBox2: TGroupBox
                    Left = 576
                    Top = 120
                    Width = 596
                    Height = 148
                    Caption = 'Condutores no Maximo(10):'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ParentFont = False
                    TabOrder = 4
                    object Panel7: TPanel
                      Left = 2
                      Top = 15
                      Width = 592
                      Height = 38
                      Align = alTop
                      TabOrder = 0
                      object StaticText7: TStaticText
                        Left = 2
                        Top = 1
                        Width = 158
                        Height = 17
                        Alignment = taCenter
                        AutoSize = False
                        BorderStyle = sbsSingle
                        Caption = 'CPF'
                        TabOrder = 0
                      end
                      object StaticText8: TStaticText
                        Left = 160
                        Top = 1
                        Width = 430
                        Height = 17
                        Alignment = taCenter
                        AutoSize = False
                        BorderStyle = sbsSingle
                        Caption = 'Nome'
                        TabOrder = 1
                      end
                      object edt_cc_cpf: TEdit
                        Left = 1
                        Top = 17
                        Width = 158
                        Height = 19
                        Ctl3D = False
                        ParentCtl3D = False
                        TabOrder = 2
                        OnExit = edt_cc_cpfExit
                      end
                      object edt_cc_nome: TEdit
                        Left = 160
                        Top = 17
                        Width = 353
                        Height = 19
                        Ctl3D = False
                        ParentCtl3D = False
                        TabOrder = 3
                      end
                      object bbCondutoresIncluir: TBitBtn
                        Left = 515
                        Top = 17
                        Width = 75
                        Height = 21
                        Caption = 'incluir'
                        TabOrder = 4
                        OnClick = bbCondutoresIncluirClick
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
                    end
                    object Panel8: TPanel
                      Left = 2
                      Top = 120
                      Width = 592
                      Height = 26
                      Align = alBottom
                      TabOrder = 1
                      object bbCondutoresExcluir: TBitBtn
                        Left = 310
                        Top = 2
                        Width = 75
                        Height = 25
                        Caption = 'Excluir'
                        TabOrder = 0
                        OnClick = bbCondutoresExcluirClick
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
                    object DBGrid1: TDBGrid
                      Left = 2
                      Top = 53
                      Width = 592
                      Height = 67
                      Align = alClient
                      DataSource = src_Condutores
                      Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                      TabOrder = 2
                      TitleFont.Charset = DEFAULT_CHARSET
                      TitleFont.Color = clWindowText
                      TitleFont.Height = -11
                      TitleFont.Name = 'MS Sans Serif'
                      TitleFont.Style = [fsBold]
                      Columns = <
                        item
                          Expanded = False
                          FieldName = 'CC_CPF'
                          Title.Alignment = taCenter
                          Width = 154
                          Visible = True
                        end
                        item
                          Expanded = False
                          FieldName = 'CC_NOME'
                          Title.Alignment = taCenter
                          Width = 392
                          Visible = True
                        end>
                    end
                  end
                end
              end
            end
            object tsTotalizadores: TTabSheet
              Caption = 'Totalizadores'
              ImageIndex = 2
              object GroupBox3: TGroupBox
                Left = 0
                Top = 0
                Width = 1172
                Height = 193
                Align = alTop
                Caption = 'Total de Fornecimentos:'
                TabOrder = 0
                object Label23: TLabel
                  Left = 29
                  Top = 20
                  Width = 553
                  Height = 13
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = 'Quantidade Total de CTe Relacionados no Manifesto:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label24: TLabel
                  Left = 30
                  Top = 43
                  Width = 553
                  Height = 13
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = 'Quantidade Total de NF-e Relacionados no Manifesto:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label25: TLabel
                  Left = 29
                  Top = 61
                  Width = 553
                  Height = 13
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = 
                    'Quantidade Total de Nota Fiscal mod 1/1A Relacionadas no Manifes' +
                    'to:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label26: TLabel
                  Left = 29
                  Top = 79
                  Width = 553
                  Height = 13
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = 'Valor Total das Mercadorias/Carga Transportada:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label27: TLabel
                  Left = 26
                  Top = 98
                  Width = 553
                  Height = 13
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = 
                    'C'#243'digo da Unidade de Medida  do Peso Bruto da Carga/Mercadoria T' +
                    'ransportada:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object Label28: TLabel
                  Left = 29
                  Top = 117
                  Width = 553
                  Height = 13
                  Alignment = taRightJustify
                  AutoSize = False
                  Caption = 'Peso Bruto da Carga / Mercadoria Transportada:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object DBE_MDFE_TOT_QCTE: TDBEdit
                  Left = 590
                  Top = 20
                  Width = 100
                  Height = 19
                  Ctl3D = False
                  DataField = 'MDFE_TOT_QCTE'
                  DataSource = Src_MDFE
                  ParentCtl3D = False
                  TabOrder = 0
                end
                object DBE_MDFE_TOT_QNFE: TDBEdit
                  Left = 590
                  Top = 38
                  Width = 100
                  Height = 19
                  Ctl3D = False
                  DataField = 'MDFE_TOT_QNFE'
                  DataSource = Src_MDFE
                  ParentCtl3D = False
                  TabOrder = 1
                end
                object DBE_MDFE_TOT_QNF1_1A: TDBEdit
                  Left = 590
                  Top = 56
                  Width = 100
                  Height = 19
                  Ctl3D = False
                  DataField = 'MDFE_TOT_QNF1_1A'
                  DataSource = Src_MDFE
                  ParentCtl3D = False
                  TabOrder = 2
                end
                object DBE_MDFE_TOT_VCARGA: TDBEdit
                  Left = 590
                  Top = 74
                  Width = 100
                  Height = 19
                  Ctl3D = False
                  DataField = 'MDFE_TOT_VCARGA'
                  DataSource = Src_MDFE
                  ParentCtl3D = False
                  TabOrder = 3
                end
                object RxDBCB_MDFE_TOT_CUNID: TRxDBComboBox
                  Left = 590
                  Top = 91
                  Width = 100
                  Height = 21
                  Style = csDropDownList
                  DataField = 'MDFE_TOT_CUNID'
                  DataSource = Src_MDFE
                  EnableValues = True
                  ItemHeight = 13
                  Items.Strings = (
                    '01 - KG;'
                    '02 - TON ')
                  TabOrder = 4
                  Values.Strings = (
                    '01'
                    '02')
                end
                object DBE_MDFE_TOT_QCARGA: TDBEdit
                  Left = 590
                  Top = 112
                  Width = 100
                  Height = 19
                  Ctl3D = False
                  DataField = 'MDFE_TOT_QCARGA'
                  DataSource = Src_MDFE
                  ParentCtl3D = False
                  TabOrder = 5
                end
              end
              object gb_lacres: TGroupBox
                Left = 9
                Top = 195
                Width = 390
                Height = 166
                Caption = 'Lacres:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
                object Panel9: TPanel
                  Left = 2
                  Top = 15
                  Width = 386
                  Height = 38
                  Align = alTop
                  TabOrder = 0
                  object bbLacresIncluir: TBitBtn
                    Left = 310
                    Top = 16
                    Width = 75
                    Height = 21
                    Caption = 'incluir'
                    TabOrder = 0
                    OnClick = bbLacresIncluirClick
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
                  object StaticText10: TStaticText
                    Left = 0
                    Top = 1
                    Width = 442
                    Height = 17
                    Alignment = taCenter
                    AutoSize = False
                    BorderStyle = sbsSingle
                    Caption = 'Numero dos Lacres'
                    TabOrder = 1
                  end
                  object edt_lacre: TEdit
                    Left = 1
                    Top = 17
                    Width = 312
                    Height = 19
                    Ctl3D = False
                    ParentCtl3D = False
                    TabOrder = 2
                  end
                end
                object Panel10: TPanel
                  Left = 2
                  Top = 138
                  Width = 386
                  Height = 26
                  Align = alBottom
                  TabOrder = 1
                  object bbLacreExcluir: TBitBtn
                    Left = 310
                    Top = 2
                    Width = 75
                    Height = 25
                    Caption = 'Excluir'
                    TabOrder = 0
                    OnClick = bbLacreExcluirClick
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
                object DBGrid_lacres: TDBGrid
                  Left = 2
                  Top = 53
                  Width = 386
                  Height = 85
                  Align = alClient
                  DataSource = Src_CadLacres
                  Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                  TabOrder = 2
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = [fsBold]
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'CL_LACRE'
                      Title.Alignment = taCenter
                      Width = 348
                      Visible = True
                    end>
                end
              end
            end
            object tsValePedagio: TTabSheet
              Caption = 'Vale Pedagio'
              ImageIndex = 3
              object gb_vale_pedagio: TGroupBox
                Left = 40
                Top = 32
                Width = 841
                Height = 148
                Caption = 'Vale Pedagio:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -11
                Font.Name = 'MS Sans Serif'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
                object Panel1: TPanel
                  Left = 2
                  Top = 15
                  Width = 837
                  Height = 38
                  Align = alTop
                  TabOrder = 0
                  object StaticText16: TStaticText
                    Left = 2
                    Top = 1
                    Width = 158
                    Height = 17
                    Alignment = taCenter
                    AutoSize = False
                    BorderStyle = sbsSingle
                    Caption = 'CPF Pagador'
                    TabOrder = 0
                  end
                  object StaticText17: TStaticText
                    Left = 473
                    Top = 1
                    Width = 145
                    Height = 17
                    Alignment = taCenter
                    AutoSize = False
                    BorderStyle = sbsSingle
                    Caption = 'Numero Comprovante'
                    TabOrder = 1
                  end
                  object edt_cpf_pagador: TEdit
                    Left = 2
                    Top = 17
                    Width = 158
                    Height = 19
                    Ctl3D = False
                    ParentCtl3D = False
                    TabOrder = 2
                    OnExit = edt_cpf_pagadorExit
                  end
                  object edt_cnpj_pagador: TEdit
                    Left = 159
                    Top = 17
                    Width = 158
                    Height = 19
                    Ctl3D = False
                    ParentCtl3D = False
                    TabOrder = 3
                    OnExit = edt_cnpj_pagadorExit
                  end
                  object bbVPincluir: TBitBtn
                    Left = 771
                    Top = 17
                    Width = 75
                    Height = 21
                    Caption = 'incluir'
                    TabOrder = 4
                    OnClick = bbCondutoresIncluirClick
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
                  object StaticText18: TStaticText
                    Left = 159
                    Top = 1
                    Width = 158
                    Height = 17
                    Alignment = taCenter
                    AutoSize = False
                    BorderStyle = sbsSingle
                    Caption = 'CNPJ Pagador'
                    TabOrder = 5
                  end
                  object StaticText19: TStaticText
                    Left = 316
                    Top = 1
                    Width = 158
                    Height = 17
                    Alignment = taCenter
                    AutoSize = False
                    BorderStyle = sbsSingle
                    Caption = 'CNPJ Fornecedor'
                    TabOrder = 6
                  end
                  object StaticText20: TStaticText
                    Left = 617
                    Top = 1
                    Width = 145
                    Height = 17
                    Alignment = taCenter
                    AutoSize = False
                    BorderStyle = sbsSingle
                    Caption = 'Valor'
                    TabOrder = 7
                  end
                  object edt_cnpj_fornecedor: TEdit
                    Left = 316
                    Top = 17
                    Width = 158
                    Height = 19
                    Ctl3D = False
                    ParentCtl3D = False
                    TabOrder = 8
                    OnExit = edt_cnpj_fornecedorExit
                  end
                  object edt_num_comprovante: TEdit
                    Left = 473
                    Top = 17
                    Width = 145
                    Height = 19
                    Ctl3D = False
                    ParentCtl3D = False
                    TabOrder = 9
                  end
                  object edt_vp_valor: TEdit
                    Left = 617
                    Top = 17
                    Width = 145
                    Height = 19
                    Ctl3D = False
                    ParentCtl3D = False
                    TabOrder = 10
                    OnExit = edt_vp_valorExit
                  end
                end
                object Panel12: TPanel
                  Left = 2
                  Top = 120
                  Width = 837
                  Height = 26
                  Align = alBottom
                  TabOrder = 1
                  object BitBtn3: TBitBtn
                    Left = 758
                    Top = 10
                    Width = 75
                    Height = 25
                    Caption = 'Excluir'
                    TabOrder = 0
                    OnClick = bbCondutoresExcluirClick
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
                object DBGrid_vl_pedagio: TDBGrid
                  Left = 2
                  Top = 53
                  Width = 837
                  Height = 67
                  Align = alClient
                  DataSource = src_cadvlpedagio
                  Options = [dgEditing, dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
                  TabOrder = 2
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'MS Sans Serif'
                  TitleFont.Style = [fsBold]
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'VP_CNPJ_FORNECEDOR'
                      Title.Alignment = taCenter
                      Width = 158
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'VP_CNPJ_PAGADOR'
                      Title.Alignment = taCenter
                      Width = 156
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'VP_CPF_PAGADOR'
                      Title.Alignment = taCenter
                      Width = 155
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'VP_NUM_COMPROVANTE'
                      Title.Alignment = taCenter
                      Width = 144
                      Visible = True
                    end
                    item
                      Expanded = False
                      FieldName = 'VP_VALOR_VALE'
                      Title.Alignment = taCenter
                      Width = 141
                      Visible = True
                    end>
                end
              end
            end
          end
        end
        object tsDadosMDFE: TTabSheet
          Caption = 'Dados  MDFE'
          ImageIndex = 1
          object gb_dadosmdfe: TGroupBox
            Left = 0
            Top = 0
            Width = 1180
            Height = 161
            Align = alTop
            Caption = 'MDFe'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object Label5: TLabel
              Left = 16
              Top = 24
              Width = 42
              Height = 13
              Caption = 'Modelo'
            end
            object Label7: TLabel
              Left = 68
              Top = 24
              Width = 30
              Height = 13
              Caption = 'Serie'
            end
            object Label8: TLabel
              Left = 105
              Top = 24
              Width = 44
              Height = 13
              Caption = 'Numero'
            end
            object Label9: TLabel
              Left = 389
              Top = 23
              Width = 186
              Height = 13
              Caption = 'Data e Hora de Inicio da Viagem'
            end
            object Label10: TLabel
              Left = 200
              Top = 23
              Width = 138
              Height = 13
              Caption = 'Data e Hora da Emiss'#227'o'
            end
            object Label29: TLabel
              Left = 16
              Top = 63
              Width = 65
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Caption = 'UF'
            end
            object Label30: TLabel
              Left = 88
              Top = 64
              Width = 425
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Caption = 'Tipo do Emitente'
            end
            object Label31: TLabel
              Left = 517
              Top = 63
              Width = 150
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Caption = 'Tipo do Transportador'
            end
            object Label32: TLabel
              Left = 672
              Top = 61
              Width = 150
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Caption = 'Modalidade'
            end
            object Label33: TLabel
              Left = 824
              Top = 59
              Width = 150
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Caption = 'Forma de Emissao'
            end
            object Label41: TLabel
              Left = 974
              Top = 57
              Width = 150
              Height = 13
              Alignment = taCenter
              AutoSize = False
              Caption = 'Ambiente'
            end
            object edt_MDFE_dhEmi_data: TDateEdit
              Left = 197
              Top = 39
              Width = 105
              Height = 21
              Ctl3D = False
              NumGlyphs = 2
              ParentCtl3D = False
              TabOrder = 0
              OnExit = edt_MDFE_dhEmi_dataExit
            end
            object edt_MDFE_dhEmi_hora: TDateTimePicker
              Left = 306
              Top = 38
              Width = 78
              Height = 21
              Date = 43386.669432337960000000
              Format = 'HH:mm'
              Time = 43386.669432337960000000
              Kind = dtkTime
              TabOrder = 1
              OnExit = edt_MDFE_dhEmi_dataExit
            end
            object edt_MDFE_dhIniViagem_data: TDateEdit
              Left = 388
              Top = 39
              Width = 105
              Height = 21
              Ctl3D = False
              NumGlyphs = 2
              ParentCtl3D = False
              TabOrder = 2
              OnExit = edt_MDFE_dhIniViagem_dataExit
            end
            object edt_MDFE_dhIniViagem_hora: TDateTimePicker
              Left = 494
              Top = 38
              Width = 78
              Height = 21
              Date = 43386.669432337960000000
              Format = 'HH:mm'
              Time = 43386.669432337960000000
              Kind = dtkTime
              TabOrder = 3
            end
            object DBE_MDFE_MOD: TDBEdit
              Left = 17
              Top = 41
              Width = 36
              Height = 19
              Ctl3D = False
              DataField = 'MDFE_MOD'
              DataSource = Src_MDFE
              ParentCtl3D = False
              TabOrder = 4
            end
            object DBE_MDFE_SERIE: TDBEdit
              Left = 65
              Top = 41
              Width = 36
              Height = 19
              Ctl3D = False
              DataField = 'MDFE_SERIE'
              DataSource = Src_MDFE
              ParentCtl3D = False
              TabOrder = 5
            end
            object DBE_MDFE_NUMERO2: TDBEdit
              Left = 105
              Top = 41
              Width = 80
              Height = 19
              Ctl3D = False
              DataField = 'MDFE_NUMERO'
              DataSource = Src_MDFE
              ParentCtl3D = False
              TabOrder = 6
            end
            object RxDBCB_MDFE_EMIT_UF: TRxDBComboBox
              Left = 24
              Top = 78
              Width = 49
              Height = 21
              Style = csDropDownList
              DataField = 'MDFE_EMIT_UF'
              DataSource = Src_MDFE
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                'AC'
                'AL'
                'AP'
                'AM'
                'BA'
                'CE'
                'DF'
                'ES'
                'GO'
                'MA'
                'MG'
                'MT'
                'MS'
                'PA'
                'PB'
                'PR'
                'PE'
                'PI'
                'RJ'
                'RN'
                'RS'
                'RO'
                'RR'
                'SC'
                'SP'
                'SE'
                'TO')
              TabOrder = 7
              Values.Strings = (
                'AC'
                'AL'
                'AP'
                'AM'
                'BA'
                'CE'
                'DF'
                'ES'
                'GO'
                'MA'
                'MG'
                'MT'
                'MS'
                'PA'
                'PB'
                'PR'
                'PE'
                'PI'
                'RJ'
                'RN'
                'RS'
                'RO'
                'RR'
                'SC'
                'SP'
                'SE'
                'TO')
            end
            object RxDBCB_MDFE_TPEMIT: TRxDBComboBox
              Left = 80
              Top = 79
              Width = 415
              Height = 21
              Style = csDropDownList
              DataField = 'MDFE_TPEMIT'
              DataSource = Src_MDFE
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                '1 - Prestador de servi'#231'o de transporte'
                '2 - Transportador de Carga Pr'#243'pria'
                
                  '3 - Prestador de servi'#231'o de transporte que emitir'#225' CT-e Globaliz' +
                  'ado  ')
              TabOrder = 8
              Values.Strings = (
                '1'
                '2'
                '3')
            end
            object RxDBCB_MDFE_TPTRANSP: TRxDBComboBox
              Left = 503
              Top = 78
              Width = 162
              Height = 21
              Style = csDropDownList
              DataField = 'MDFE_TPTRANSP'
              DataSource = Src_MDFE
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                '  '
                '1 - ETC'
                '2 - TAC'
                '3 - CTC ')
              TabOrder = 9
              Values.Strings = (
                ' '
                '1'
                '2'
                '3'
                '')
            end
            object RxDBCB_MDFE_MODAL: TRxDBComboBox
              Left = 670
              Top = 76
              Width = 145
              Height = 21
              Style = csDropDownList
              DataField = 'MDFE_MODAL'
              DataSource = Src_MDFE
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                '1 - Rodovi'#225'rio;'
                '2 - A'#233'reo;'
                '3 - Aquavi'#225'rio;'
                '4 - Ferrovi'#225'rio.')
              TabOrder = 10
              Values.Strings = (
                '1'
                '2'
                '3'
                '4'
                '')
            end
            object RxDBCB_MDFE_TPEMIS: TRxDBComboBox
              Left = 974
              Top = 74
              Width = 145
              Height = 21
              Style = csDropDownList
              DataField = 'MDFE_TPAMB'
              DataSource = Src_MDFE
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                '1 - Producao'
                '2 - Homologacao')
              TabOrder = 11
              Values.Strings = (
                '1'
                '2')
            end
            object RxDBComboBox1: TRxDBComboBox
              Left = 824
              Top = 74
              Width = 145
              Height = 21
              Style = csDropDownList
              DataField = 'MDFE_TPEMIS'
              DataSource = Src_MDFE
              EnableValues = True
              ItemHeight = 13
              Items.Strings = (
                '1 - Normal'
                '2 - Conting'#234'ncia')
              TabOrder = 12
              Values.Strings = (
                '1'
                '2')
              OnExit = RxDBComboBox1Exit
            end
          end
        end
        object tsLista: TTabSheet
          Caption = 'Lista/Consultas'
          ImageIndex = 2
          object DBGrid_mdfe: TDBGrid
            Left = 0
            Top = 0
            Width = 1180
            Height = 277
            Align = alClient
            DataSource = Src_MDFE
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = [fsBold]
            OnDrawColumnCell = DBGrid_mdfeDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'MDFE_ID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_VT_RNTRC'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_VT_COD_AG_PORTO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_VT_CINT'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_VT_TPCAR'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_VT_PLACA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_VT_TARA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_VT_RENAVAN'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_VT_UF'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_VT_TPROD'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_VT_CAPKG'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_VT_CAPM3'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_PROP'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_PROP_RNTRC'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_PROP_TPPROP'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_PROP_UF'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_PROP_CPF'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_PROP_CNPJ'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_PROP_NOME'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_PROP_IE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_TOT_QCTE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_TOT_QNFE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_TOT_QNF1_1A'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_TOT_VCARGA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_TOT_CUNID'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_TOT_QCARGA'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_STATUS'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_CHV_CHCTE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_NUMERO'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_VERSAO_XML'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_MOD'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_SERIE'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_DHEMI'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_DHINIVIAGEM'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_TPEMIT'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_TPTRANSP'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_MODAL'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MDFE_TPEMIS'
                Visible = True
              end>
          end
          object Panel13: TPanel
            Left = 0
            Top = 277
            Width = 1180
            Height = 42
            Align = alBottom
            TabOrder = 1
            object st_digitando0: TStaticText
              Left = 6
              Top = 4
              Width = 190
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Digitando'
              Color = clWhite
              ParentColor = False
              TabOrder = 0
            end
            object st_gravada1: TStaticText
              Left = 6
              Top = 20
              Width = 190
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Gravada'
              Color = 12320767
              ParentColor = False
              TabOrder = 1
            end
            object st_enviando2: TStaticText
              Left = 195
              Top = 4
              Width = 190
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Enviando'
              Color = 16762052
              ParentColor = False
              TabOrder = 2
            end
            object st_rejeitada3: TStaticText
              Left = 195
              Top = 20
              Width = 190
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Rejeitada'
              Color = 10206463
              ParentColor = False
              TabOrder = 3
            end
            object st_encerrada6: TStaticText
              Left = 573
              Top = 4
              Width = 190
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Encerrada'
              Color = clBlue
              ParentColor = False
              TabOrder = 4
            end
            object st_excluida_antes_enviar7: TStaticText
              Left = 573
              Top = 19
              Width = 190
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Excluida Antes de Enviar'
              Color = 8388863
              ParentColor = False
              TabOrder = 5
            end
            object st_excluida_antes_encerrar8: TStaticText
              Left = 762
              Top = 4
              Width = 190
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Excluida antes de Encerrar'
              Color = 14002943
              ParentColor = False
              TabOrder = 6
            end
            object st_excluida_ja_encerrada9: TStaticText
              Left = 762
              Top = 19
              Width = 190
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Excluida ja Encerrada'
              Color = clRed
              ParentColor = False
              TabOrder = 7
              Visible = False
            end
            object st_enviado_ok4: TStaticText
              Left = 383
              Top = 4
              Width = 190
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Enviado Ok'
              Color = 16772313
              ParentColor = False
              TabOrder = 8
            end
            object st_encenrrando5: TStaticText
              Left = 383
              Top = 20
              Width = 190
              Height = 17
              Alignment = taCenter
              AutoSize = False
              BorderStyle = sbsSingle
              Caption = 'Encerrando'
              Color = clLime
              ParentColor = False
              TabOrder = 9
            end
          end
        end
        object tsConfigMaster: TTabSheet
          Caption = 'Configura'#231#227'o Master'
          ImageIndex = 3
          object Label36: TLabel
            Left = 29
            Top = 20
            Width = 500
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Proximo Numero do MDFE em Ambiente Producao:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label37: TLabel
            Left = 36
            Top = 38
            Width = 491
            Height = 13
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Proximo Numero do MDFE em Ambiente Homologac'#227'o:'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label38: TLabel
            Left = 488
            Top = 59
            Width = 41
            Height = 13
            Caption = 'Chave:'
          end
          object Label40: TLabel
            Left = 1019
            Top = 63
            Width = 46
            Height = 13
            Caption = 'Label40'
          end
          object edt_proximo_mdfe_ambiente_producao: TEdit
            Left = 587
            Top = 18
            Width = 77
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            OnChange = edt_proximo_mdfe_ambiente_producaoChange
            OnEnter = edt_proximo_mdfe_ambiente_producaoEnter
            OnExit = edt_proximo_mdfe_ambiente_producaoExit
          end
          object edt_proximo_mdfe_ambiente_homologacao: TEdit
            Left = 587
            Top = 36
            Width = 77
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            OnChange = edt_proximo_mdfe_ambiente_homologacaoChange
            OnEnter = edt_proximo_mdfe_ambiente_homologacaoEnter
            OnExit = edt_proximo_mdfe_ambiente_homologacaoExit
          end
          object bbSalvarAmbienteNormal: TBitBtn
            Left = 665
            Top = 16
            Width = 130
            Height = 20
            Hint = 'Enviar ao Sefaz'
            Caption = 'Salvar'
            Enabled = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
            OnClick = bbSalvarAmbienteNormalClick
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
          object bbSalvarAmbienteHomologacao: TBitBtn
            Left = 664
            Top = 36
            Width = 130
            Height = 20
            Hint = 'Enviar ao Sefaz'
            Caption = 'Salvar'
            Enabled = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
            OnClick = bbSalvarAmbienteHomologacaoClick
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
          object edt_mdfe_producao_serie: TEdit
            Left = 539
            Top = 18
            Width = 50
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            Text = '1'
            OnExit = edt_mdfe_producao_serieExit
          end
          object edt_mdfe_homologacao_serie: TEdit
            Left = 539
            Top = 36
            Width = 50
            Height = 19
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
            Text = '1'
            OnExit = edt_mdfe_homologacao_serieExit
          end
          object edt_chave: TEdit
            Left = 538
            Top = 56
            Width = 338
            Height = 21
            TabOrder = 6
          end
          object bbCalcDigito: TBitBtn
            Left = 876
            Top = 59
            Width = 130
            Height = 20
            Hint = 'Cancela a opera'#231#227'o atual'
            Caption = 'Calcular'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 7
            OnClick = bbCalcDigitoClick
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
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
    end
  end
  object src_manifesto_nf: TDataSource
    DataSet = tb_manifesto_nf
    Left = 908
    Top = 208
  end
  object qr_municipio: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 164
    Top = 272
    object qr_municipiomunicipio_codigo: TStringField
      FieldName = 'municipio_codigo'
      Size = 100
    end
    object qr_municipiolnome: TStringField
      FieldName = 'lnome'
      Size = 100
    end
    object qr_municipioluf: TStringField
      FieldName = 'luf'
      Size = 2
    end
    object qr_municipiolcodmun_ibge: TFloatField
      FieldName = 'lcodmun_ibge'
    end
  end
  object src_municipio: TDataSource
    DataSet = qr_municipio
    Left = 196
    Top = 272
  end
  object src_mundesc: TDataSource
    DataSet = Tb_CadMunDesc
    Left = 908
    Top = 144
  end
  object Tb_CadMunDesc: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    UpdateObject = U_CadMunDesc
    Left = 876
    Top = 144
    object Tb_CadMunDesclnome: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'lnome'
      Size = 100
    end
    object Tb_CadMunDescluf: TStringField
      DisplayLabel = 'UF'
      FieldName = 'luf'
      Size = 2
    end
    object Tb_CadMunDescmd_id: TFloatField
      FieldName = 'md_id'
    end
    object Tb_CadMunDescmd_seq: TFloatField
      FieldName = 'md_seq'
    end
    object Tb_CadMunDescmd_codloc_ibge: TFloatField
      FieldName = 'md_codloc_ibge'
    end
  end
  object U_CadMunDesc: TUpdateSQL
    ModifySQL.Strings = (
      'update MDFE_CADMUNDESC set'
      'MD_ID = :MD_ID , MD_SEQ = :MD_SEQ'
      ', MD_CODLOC_IBGE = :MD_CODLOC_IBGE'
      'where MD_ID = :OLD_MD_ID'
      'and MD_SEQ = :OLD_MD_SEQ'
      '')
    InsertSQL.Strings = (
      'insert into MDFE_CADMUNDESC (MD_ID, MD_SEQ, MD_CODLOC_IBGE)'
      'values'
      '(:MD_ID, :MD_SEQ, :MD_CODLOC_IBGE)'
      ''
      ''
      ''
      '')
    DeleteSQL.Strings = (
      'delete from MDFE_CADMUNDESC'
      'where'
      '  MD_ID= :OLD_MD_ID and'
      '  MD_SEQ= :OLD_MD_SEQ'
      ''
      '')
    Left = 956
    Top = 144
  end
  object Qr_UF: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 316
    Top = 64
    object Qr_UFpuf: TStringField
      DisplayLabel = 'UF'
      FieldName = 'puf'
      Size = 2
    end
    object Qr_UFpnom: TStringField
      DisplayLabel = 'Nome do Estado'
      FieldName = 'pnom'
      Size = 100
    end
  end
  object Src_UF: TDataSource
    DataSet = Qr_UF
    Left = 348
    Top = 64
  end
  object Tb_CadUFPercurso: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    UpdateObject = U_CadUFPercurso
    Left = 876
    Top = 176
    object Tb_CadUFPercursoufp_id: TFloatField
      DisplayLabel = 'ID'
      FieldName = 'ufp_id'
    end
    object Tb_CadUFPercursoufp_uf: TStringField
      DisplayLabel = 'UF'
      FieldName = 'ufp_uf'
      Size = 2
    end
    object Tb_CadUFPercursopnom: TStringField
      DisplayLabel = 'Nome do Estado'
      FieldName = 'pnom'
      Size = 100
    end
  end
  object src_CadUFPercurso: TDataSource
    DataSet = Tb_CadUFPercurso
    Left = 908
    Top = 176
  end
  object U_CadUFPercurso: TUpdateSQL
    ModifySQL.Strings = (
      'update MDFE_CADUFPERCURSO set'
      'UFP_ID = :UFP_ID , UFP_UF = :UFP_UF'
      'where UFP_ID = :OLD_UFP_ID'
      'and UFP_UF = :OLD_UFP_UF'
      ''
      '')
    InsertSQL.Strings = (
      'insert into MDFE_CADUFPERCURSO (UFP_ID, UFP_UF)'
      'values'
      '(:UFP_ID, :UFP_UF)'
      '')
    DeleteSQL.Strings = (
      'delete from MDFE_CADUFPERCURSO'
      'where'
      '  UFP_ID= :OLD_UFP_ID and'
      '  UFP_UF= :OLD_UFP_UF'
      ''
      '')
    Left = 956
    Top = 176
  end
  object tb_manifesto_nf: TQuery
    CachedUpdates = True
    AfterInsert = tb_manifesto_nfAfterInsert
    BeforePost = tb_manifesto_nfBeforePost
    AfterPost = tb_manifesto_nfAfterPost
    AfterDelete = tb_manifesto_nfAfterDelete
    DatabaseName = 'SG_ASSOC'
    UpdateObject = u_manifesto_nf
    Left = 876
    Top = 208
    object tb_manifesto_nfmnf_id: TFloatField
      DisplayLabel = 'Id'
      FieldName = 'mnf_id'
    end
    object tb_manifesto_nfmnf_chv_nfe: TStringField
      DisplayLabel = 'Chave de Acesso'
      FieldName = 'mnf_chv_nfe'
      Size = 50
    end
    object tb_manifesto_nfmnf_chaveped: TFloatField
      DisplayLabel = 'Chave Ped'
      FieldName = 'mnf_chaveped'
    end
    object tb_manifesto_nfmnf_lotseq: TFloatField
      DisplayLabel = 'Lot Seq'
      FieldName = 'mnf_lotseq'
    end
    object tb_manifesto_nfmnf_codemp: TFloatField
      DisplayLabel = 'C'#243'd.Emp'
      FieldName = 'mnf_codemp'
    end
    object tb_manifesto_nfmnf_numero_nf: TFloatField
      DisplayLabel = 'Numero NF'
      FieldName = 'mnf_numero_nf'
    end
    object tb_manifesto_nfmnf_valor_nf: TFloatField
      DisplayLabel = 'Valor NF'
      FieldName = 'mnf_valor_nf'
    end
    object tb_manifesto_nfmnf_razsoc: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'mnf_razsoc'
      Size = 100
    end
    object tb_manifesto_nfmnf_cidade: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'mnf_cidade'
      Size = 100
    end
    object tb_manifesto_nfmnf_uf: TStringField
      DisplayLabel = 'UF'
      FieldName = 'mnf_uf'
      Size = 2
    end
    object tb_manifesto_nfmnf_data_nf: TDateTimeField
      DisplayLabel = 'Data da NF'
      FieldName = 'mnf_data_nf'
    end
    object tb_manifesto_nfmnf_codloc: TFloatField
      FieldName = 'mnf_codloc'
    end
    object tb_manifesto_nfmnf_codloc_ibge: TFloatField
      FieldName = 'mnf_codloc_ibge'
    end
  end
  object u_manifesto_nf: TUpdateSQL
    ModifySQL.Strings = (
      'Update MDFE_CADMANIFESTO'
      'set mnf_id = :mnf_id'
      ',mnf_chv_nfe = :mnf_chv_nfe'
      ',mnf_chaveped = :mnf_chaveped'
      ',mnf_lotseq = :mnf_lotseq'
      ',mnf_codemp = :mnf_codemp'
      ',mnf_numero_nf = :mnf_numero_nf'
      ',mnf_valor_nf = :mnf_valor_nf'
      ',mnf_razsoc = :mnf_razsoc'
      ',mnf_cidade = :mnf_cidade'
      ',mnf_uf = :mnf_uf'
      ',mnf_data_nf =:mnf_data_nf'
      ',MNF_CODLOC_IBGE = :MNF_CODLOC_IBGE'
      ',MNF_CODLOC = :MNF_CODLOC'
      'where MNF_ID = :OLD_MNF_ID'
      'and MNF_CHV_NFE = :OLD_MNF_CHV_NFE'
      ''
      '')
    InsertSQL.Strings = (
      'insert into MDFE_CADMANIFESTO'
      '(mnf_id'
      ',mnf_chv_nfe'
      ',mnf_chaveped'
      ',mnf_lotseq'
      ',mnf_codemp'
      ',mnf_numero_nf'
      ',mnf_valor_nf'
      ',mnf_razsoc'
      ',mnf_cidade'
      ',mnf_uf'
      ',mnf_data_nf'
      ',MNF_CODLOC_IBGE'
      ',MNF_CODLOC'
      ') values ('
      '  :mnf_id'
      ',:mnf_chv_nfe'
      ',:mnf_chaveped'
      ',:mnf_lotseq'
      ',:mnf_codemp'
      ',:mnf_numero_nf'
      ',:mnf_valor_nf'
      ',:mnf_razsoc'
      ',:mnf_cidade'
      ',:mnf_uf'
      ',:mnf_data_nf'
      ',:MNF_CODLOC_IBGE'
      ',:MNF_CODLOC'
      ')'
      ''
      '')
    DeleteSQL.Strings = (
      'delete from MDFE_CADMANIFESTO'
      'where'
      '  mnf_ID = :OLD_mnf_ID and'
      '  mnf_chv_nfe = :OLD_mnf_chv_nfe'
      '')
    Left = 956
    Top = 208
  end
  object Tb_CadMunCarreg: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    UpdateObject = U_CadMunCarreg
    Left = 876
    Top = 248
    object Tb_CadMunCarreglnome: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'lnome'
      Size = 100
    end
    object Tb_CadMunCarregluf: TStringField
      DisplayLabel = 'UF'
      FieldName = 'luf'
      Size = 2
    end
    object Tb_CadMunCarregmc_id: TFloatField
      FieldName = 'mc_id'
    end
    object Tb_CadMunCarregmc_seq: TFloatField
      FieldName = 'mc_seq'
    end
    object Tb_CadMunCarregmc_codloc_ibge: TFloatField
      FieldName = 'mc_codloc_ibge'
    end
  end
  object src_CadMunCarreg: TDataSource
    DataSet = Tb_CadMunCarreg
    Left = 908
    Top = 248
  end
  object U_CadMunCarreg: TUpdateSQL
    ModifySQL.Strings = (
      'update MDFE_CADMUNCARREG set'
      'MC_ID = :MC_ID , MC_SEQ = :MC_SEQ'
      ', MC_CODLOC_IBGE = :MC_CODLOC_IBGE'
      'where MC_ID = :OLD_MC_ID'
      'and MC_SEQ = :OLD_MC_SEQ'
      '')
    InsertSQL.Strings = (
      'insert into MDFE_CADMUNCARREG (MC_ID, MC_SEQ,  MC_CODLOC_IBGE)'
      'values'
      '(:MC_ID, :MC_SEQ, :MC_CODLOC_IBGE)'
      ''
      ''
      ''
      '')
    DeleteSQL.Strings = (
      'delete from MDFE_CADMUNCARREG'
      'where'
      '  MC_ID= :OLD_MC_ID and'
      '  MC_SEQ= :OLD_MC_SEQ'
      ''
      '')
    Left = 956
    Top = 248
  end
  object tb_MDFE: TQuery
    CachedUpdates = True
    BeforeInsert = tb_MDFEBeforeInsert
    BeforeEdit = tb_MDFEBeforeEdit
    AfterEdit = tb_MDFEAfterEdit
    AfterPost = tb_MDFEAfterPost
    AfterCancel = tb_MDFEAfterCancel
    AfterDelete = tb_MDFEAfterDelete
    DatabaseName = 'SG_ASSOC'
    UpdateObject = U_MDFE
    Left = 1076
    Top = 8
    object tb_MDFEMDFE_VT_RNTRC: TStringField
      DisplayLabel = 'RNTRC'
      FieldName = 'MDFE_VT_RNTRC'
      Size = 8
    end
    object tb_MDFEMDFE_VT_COD_AG_PORTO: TStringField
      DisplayLabel = 'C'#243'digo Agendamento no Porto'
      FieldName = 'MDFE_VT_COD_AG_PORTO'
      Size = 16
    end
    object tb_MDFEMDFE_VT_CINT: TStringField
      DisplayLabel = 'C'#243'digo Interno Veiculo'
      FieldName = 'MDFE_VT_CINT'
      Size = 10
    end
    object tb_MDFEMDFE_VT_TPCAR: TStringField
      DisplayLabel = 'Tipo Carroceria'
      FieldName = 'MDFE_VT_TPCAR'
      Size = 2
    end
    object tb_MDFEMDFE_VT_PLACA: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'MDFE_VT_PLACA'
      Size = 7
    end
    object tb_MDFEMDFE_VT_TARA: TFloatField
      DisplayLabel = 'Tara'
      FieldName = 'MDFE_VT_TARA'
    end
    object tb_MDFEMDFE_VT_RENAVAN: TStringField
      DisplayLabel = 'Renavan'
      FieldName = 'MDFE_VT_RENAVAN'
      Size = 11
    end
    object tb_MDFEMDFE_VT_UF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'MDFE_VT_UF'
      Size = 2
    end
    object tb_MDFEMDFE_VT_TPROD: TStringField
      DisplayLabel = 'Tipo de Rodado'
      FieldName = 'MDFE_VT_TPROD'
      Size = 2
    end
    object tb_MDFEMDFE_VT_CAPKG: TFloatField
      DisplayLabel = 'Capacidade em KG'
      FieldName = 'MDFE_VT_CAPKG'
    end
    object tb_MDFEMDFE_VT_CAPM3: TFloatField
      DisplayLabel = 'Capacidade em M3'
      FieldName = 'MDFE_VT_CAPM3'
    end
    object tb_MDFEMDFE_PROP: TStringField
      DisplayLabel = 'Proprietario'
      FieldName = 'MDFE_PROP'
      Size = 1
    end
    object tb_MDFEMDFE_PROP_RNTRC: TStringField
      DisplayLabel = 'RNTRC'
      FieldName = 'MDFE_PROP_RNTRC'
      Size = 8
    end
    object tb_MDFEMDFE_PROP_TPPROP: TStringField
      DisplayLabel = 'Tipo do Proprietario'
      FieldName = 'MDFE_PROP_TPPROP'
      Size = 1
    end
    object tb_MDFEMDFE_PROP_UF: TStringField
      DisplayLabel = 'UF do Proprietario'
      FieldName = 'MDFE_PROP_UF'
      Size = 2
    end
    object tb_MDFEMDFE_PROP_CPF: TStringField
      DisplayLabel = 'CPF do Proprietario'
      FieldName = 'MDFE_PROP_CPF'
    end
    object tb_MDFEMDFE_PROP_CNPJ: TStringField
      DisplayLabel = 'CNPJ do Proprietario'
      FieldName = 'MDFE_PROP_CNPJ'
    end
    object tb_MDFEMDFE_PROP_NOME: TStringField
      DisplayLabel = 'Nome do Proprietario'
      FieldName = 'MDFE_PROP_NOME'
      Size = 100
    end
    object tb_MDFEMDFE_PROP_IE: TStringField
      DisplayLabel = 'IE do Proprietario'
      FieldName = 'MDFE_PROP_IE'
    end
    object tb_MDFEMDFE_TOT_QCTE: TFloatField
      DisplayLabel = 'Qtde Total de CTe'
      FieldName = 'MDFE_TOT_QCTE'
    end
    object tb_MDFEMDFE_TOT_QNFE: TFloatField
      DisplayLabel = 'Qtde Total de NFe'
      FieldName = 'MDFE_TOT_QNFE'
    end
    object tb_MDFEMDFE_TOT_QNF1_1A: TFloatField
      DisplayLabel = 'Quantidade total NF Serie 1 e 1A'
      FieldName = 'MDFE_TOT_QNF1_1A'
    end
    object tb_MDFEMDFE_TOT_VCARGA: TFloatField
      DisplayLabel = 'Valor total da Carga'
      FieldName = 'MDFE_TOT_VCARGA'
    end
    object tb_MDFEMDFE_TOT_CUNID: TStringField
      DisplayLabel = 
        'C'#243'digo da Unidade de Medida  do Peso Bruto da Carga/Mercadoria T' +
        'ransportada:'
      FieldName = 'MDFE_TOT_CUNID'
      Size = 2
    end
    object tb_MDFEMDFE_TOT_QCARGA: TFloatField
      DisplayLabel = 'Peso Bruto da Carga / Mercadoria Transportada:'
      FieldName = 'MDFE_TOT_QCARGA'
    end
    object tb_MDFEMDFE_STATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'MDFE_STATUS'
    end
    object tb_MDFEMDFE_NUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'MDFE_NUMERO'
    end
    object tb_MDFEMDFE_VERSAO_XML: TStringField
      DisplayLabel = 'Vers'#227'o do XML'
      FieldName = 'MDFE_VERSAO_XML'
      Size = 6
    end
    object tb_MDFEMDFE_MOD: TStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MDFE_MOD'
      Size = 2
    end
    object tb_MDFEMDFE_SERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'MDFE_SERIE'
      Size = 3
    end
    object tb_MDFEMDFE_DHEMI: TDateTimeField
      DisplayLabel = 'Data e Hora da Emiss'#227'o'
      FieldName = 'MDFE_DHEMI'
    end
    object tb_MDFEMDFE_DHINIVIAGEM: TDateTimeField
      DisplayLabel = 'Data e Hora da Viagem'
      FieldName = 'MDFE_DHINIVIAGEM'
    end
    object tb_MDFEMDFE_TPTRANSP: TStringField
      DisplayLabel = 'Tipo de Transporte'
      FieldName = 'MDFE_TPTRANSP'
      Size = 1
    end
    object tb_MDFEMDFE_MODAL: TStringField
      DisplayLabel = 'Modalidade do Transporte'
      FieldName = 'MDFE_MODAL'
      Size = 1
    end
    object tb_MDFEMDFE_TPEMIS: TStringField
      DisplayLabel = 'Tipo da Emissao'
      FieldName = 'MDFE_TPEMIS'
      Size = 1
    end
    object tb_MDFEMDFE_TPEMIT: TStringField
      DisplayLabel = 'Tipo do Emitente'
      FieldName = 'MDFE_TPEMIT'
      Size = 1
    end
    object tb_MDFEMDFE_ID: TFloatField
      DisplayLabel = 'Chave ID'
      FieldName = 'MDFE_ID'
    end
    object tb_MDFEMDFE_TPPROP: TStringField
      FieldName = 'MDFE_TPPROP'
      Size = 1
    end
    object tb_MDFEMDFE_DHINCLUSAO: TDateTimeField
      FieldName = 'MDFE_DHINCLUSAO'
    end
    object tb_MDFEMDFE_DH_UEVE: TDateTimeField
      FieldName = 'MDFE_DH_UEVE'
    end
    object tb_MDFEMDFE_TPAMB: TStringField
      FieldName = 'MDFE_TPAMB'
      Size = 1
    end
    object tb_MDFEMDFE_CHV_MDFE: TStringField
      FieldName = 'MDFE_CHV_MDFE'
      Size = 60
    end
    object tb_MDFEMDFE_EMIT_UF: TStringField
      FieldName = 'MDFE_EMIT_UF'
      Size = 2
    end
    object tb_MDFEmdfe_dathormanipulacao: TDateTimeField
      FieldName = 'mdfe_dathormanipulacao'
    end
    object tb_MDFEMDFE_CODUSR_INCLUSAO: TFloatField
      FieldName = 'MDFE_CODUSR_INCLUSAO'
    end
    object tb_MDFEMDFE_CODUSR_UEVE: TFloatField
      FieldName = 'MDFE_CODUSR_UEVE'
    end
    object tb_MDFEMDFE_ENVIO_NPROT: TStringField
      FieldName = 'MDFE_ENVIO_NPROT'
    end
    object tb_MDFEMDFE_ENVIO_DTHOR: TDateTimeField
      FieldName = 'MDFE_ENVIO_DTHOR'
    end
    object tb_MDFEMDFE_ENC_NPROT: TStringField
      FieldName = 'MDFE_ENC_NPROT'
    end
    object tb_MDFEMDFE_ENC_DTHOR: TDateTimeField
      FieldName = 'MDFE_ENC_DTHOR'
    end
    object tb_MDFEMDFE_EXCLUSAO_NPROT: TStringField
      FieldName = 'MDFE_EXCLUSAO_NPROT'
    end
    object tb_MDFEMDFE_EXCLUSAO_DTHOR: TDateTimeField
      FieldName = 'MDFE_EXCLUSAO_DTHOR'
    end
  end
  object Src_MDFE: TDataSource
    DataSet = tb_MDFE
    OnDataChange = Src_MDFEDataChange
    Left = 1092
    Top = 40
  end
  object Tb_Condutores: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    UpdateObject = u_Condutores
    Left = 1036
    Top = 224
    object Tb_CondutoresCC_ID: TFloatField
      FieldName = 'CC_ID'
    end
    object Tb_CondutoresCC_CPF: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'CC_CPF'
    end
    object Tb_CondutoresCC_NOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'CC_NOME'
      Size = 100
    end
  end
  object src_Condutores: TDataSource
    DataSet = Tb_Condutores
    Left = 1068
    Top = 224
  end
  object u_Condutores: TUpdateSQL
    ModifySQL.Strings = (
      'update MDFE_CADCONDUTORES set'
      'CC_ID = :CC_ID , CC_CPF = :CC_CPF, CC_NOME = :CC_NOME'
      'where CC_ID = :OLD_CC_ID'
      'and CC_CPF = :OLD_CC_CPF'
      ''
      '')
    InsertSQL.Strings = (
      'insert into MDFE_CADCONDUTORES (CC_ID, CC_CPF,  CC_NOME)'
      'values'
      '(:CC_ID, :CC_CPF,  :CC_NOME)'
      '')
    DeleteSQL.Strings = (
      'delete from MDFE_CADCONDUTORES'
      'where'
      '  CC_ID= :OLD_CC_ID and'
      '  CC_CPF= :OLD_CC_CPF'
      '')
    Left = 1100
    Top = 224
  end
  object Tb_CadLacres: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    UpdateObject = U_CadLacres
    Left = 316
    Top = 384
    object Tb_CadLacresCL_LACRE: TStringField
      DisplayLabel = 'Numero do Lacre'
      FieldName = 'CL_LACRE'
      Size = 60
    end
    object Tb_CadLacresCL_ID: TFloatField
      FieldName = 'CL_ID'
    end
  end
  object Src_CadLacres: TDataSource
    DataSet = Tb_CadLacres
    Left = 332
    Top = 400
  end
  object U_CadLacres: TUpdateSQL
    ModifySQL.Strings = (
      'update MDFE_CADLACRES set'
      'CL_ID = :CL_ID , CL_LACRE = :CL_LACRE'
      'where CL_ID = :OLD_CL_ID'
      'and CL_LACRE = :OLD_CL_LACRE'
      '')
    InsertSQL.Strings = (
      'insert into MDFE_CADLACRES (CL_ID, CL_LACRE)'
      'values'
      '(:CL_ID, :CL_LACRE)'
      '')
    DeleteSQL.Strings = (
      'delete from MDFE_CADLACRES'
      'where'
      '  CL_ID= :OLD_CL_ID and'
      '  CL_LACRE= :OLD_CL_LACRE'
      '')
    Left = 380
    Top = 384
  end
  object U_MDFE: TUpdateSQL
    ModifySQL.Strings = (
      'Update  mdfe_cadmdfe set'
      ' mdfe_vt_rntrc=:mdfe_vt_rntrc'
      ',mdfe_vt_cod_ag_porto=:mdfe_vt_cod_ag_porto'
      ',mdfe_vt_cint=:mdfe_vt_cint'
      ',mdfe_vt_tpcar=:mdfe_vt_tpcar'
      ',mdfe_vt_placa=:mdfe_vt_placa'
      ',mdfe_vt_tara=:mdfe_vt_tara'
      ',mdfe_vt_renavan=:mdfe_vt_renavan'
      ',mdfe_vt_uf=:mdfe_vt_uf'
      ',mdfe_vt_tprod=:mdfe_vt_tprod'
      ',mdfe_vt_capkg=:mdfe_vt_capkg'
      ',mdfe_vt_capm3=:mdfe_vt_capm3'
      ',mdfe_prop=:mdfe_prop'
      ',mdfe_prop_rntrc=:mdfe_prop_rntrc'
      ',mdfe_prop_tpprop=:mdfe_prop_tpprop'
      ',mdfe_prop_uf=:mdfe_prop_uf'
      ',mdfe_prop_cpf=:mdfe_prop_cpf'
      ',mdfe_prop_ie=:mdfe_prop_ie'
      ',mdfe_prop_cnpj=:mdfe_prop_cnpj'
      ',mdfe_prop_nome=:mdfe_prop_nome'
      ',mdfe_tpprop=:mdfe_tpprop'
      ',mdfe_tot_qcte=:mdfe_tot_qcte'
      ',mdfe_tot_qnfe=:mdfe_tot_qnfe'
      ',mdfe_tot_qnf1_1a=:mdfe_tot_qnf1_1a'
      ',mdfe_status=:mdfe_status'
      ',mdfe_numero=:mdfe_numero'
      ',mdfe_tot_vcarga=:mdfe_tot_vcarga'
      ',mdfe_tot_cunid=:mdfe_tot_cunid'
      ',mdfe_versao_xml=:mdfe_versao_xml'
      ',mdfe_mod=:mdfe_mod'
      ',mdfe_tot_qcarga=:mdfe_tot_qcarga'
      ',mdfe_dhemi=:mdfe_dhemi'
      ',mdfe_dhiniviagem=:mdfe_dhiniviagem'
      ',mdfe_emit_uf=:mdfe_emit_uf'
      ',mdfe_tptransp=:mdfe_tptransp'
      ',mdfe_modal=:mdfe_modal'
      ',mdfe_serie=:mdfe_serie'
      ',mdfe_tpemis=:mdfe_tpemis'
      ',mdfe_dhinclusao=:mdfe_dhinclusao'
      ',mdfe_tpemit=:mdfe_tpemit'
      ',mdfe_codusr_inclusao=:mdfe_codusr_inclusao'
      ',mdfe_dh_ueve=:mdfe_dh_ueve'
      ',mdfe_codusr_ueve=:mdfe_codusr_ueve'
      ',mdfe_tpamb=:mdfe_tpamb'
      ',mdfe_dathormanipulacao=:mdfe_dathormanipulacao'
      ',mdfe_chv_mdfe=:mdfe_chv_mdfe'
      ',MDFE_ENVIO_NPROT=:MDFE_ENVIO_NPROT'
      ',MDFE_ENVIO_DTHOR=:MDFE_ENVIO_DTHOR'
      ',MDFE_ENC_NPROT=:MDFE_ENC_NPROT'
      ',MDFE_ENC_DTHOR=:MDFE_ENC_DTHOR'
      ',MDFE_EXCLUSAO_NPROT=:MDFE_EXCLUSAO_NPROT'
      ',MDFE_EXCLUSAO_DTHOR=:MDFE_EXCLUSAO_DTHOR'
      'where mdfe_id = :old_mdfe_id'
      '')
    InsertSQL.Strings = (
      'Insert into mdfe_cadmdfe('
      'mdfe_id'
      ',mdfe_vt_rntrc'
      ',mdfe_vt_cod_ag_porto'
      ',mdfe_vt_cint'
      ',mdfe_vt_tpcar'
      ',mdfe_vt_placa'
      ',mdfe_vt_tara'
      ',mdfe_vt_renavan'
      ',mdfe_vt_uf'
      ',mdfe_vt_tprod'
      ',mdfe_vt_capkg'
      ',mdfe_vt_capm3'
      ',mdfe_prop'
      ',mdfe_prop_rntrc'
      ',mdfe_prop_tpprop'
      ',mdfe_prop_uf'
      ',mdfe_prop_cpf'
      ',mdfe_prop_ie'
      ',mdfe_prop_cnpj'
      ',mdfe_prop_nome'
      ',mdfe_tpprop'
      ',mdfe_tot_qcte'
      ',mdfe_tot_qnfe'
      ',mdfe_tot_qnf1_1a'
      ',mdfe_status'
      ',mdfe_numero'
      ',mdfe_tot_vcarga'
      ',mdfe_tot_cunid'
      ',mdfe_versao_xml'
      ',mdfe_mod'
      ',mdfe_tot_qcarga'
      ',mdfe_dhemi'
      ',mdfe_dhiniviagem'
      ',mdfe_emit_uf'
      ',mdfe_tptransp'
      ',mdfe_modal'
      ',mdfe_serie'
      ',mdfe_tpemis'
      ',mdfe_dhinclusao'
      ',mdfe_tpemit'
      ',mdfe_codusr_inclusao'
      ',mdfe_dh_ueve'
      ',mdfe_codusr_ueve'
      ',mdfe_tpamb'
      ',mdfe_dathormanipulacao'
      ',mdfe_chv_mdfe'
      ',MDFE_ENVIO_NPROT'
      ',MDFE_ENVIO_DTHOR'
      ',MDFE_ENC_NPROT'
      ',MDFE_ENC_DTHOR'
      ',MDFE_EXCLUSAO_NPROT'
      ',MDFE_EXCLUSAO_DTHOR'
      ''
      ') values ('
      ':mdfe_id'
      ',:mdfe_vt_rntrc'
      ',:mdfe_vt_cod_ag_porto'
      ',:mdfe_vt_cint'
      ',:mdfe_vt_tpcar'
      ',:mdfe_vt_placa'
      ',:mdfe_vt_tara'
      ',:mdfe_vt_renavan'
      ',:mdfe_vt_uf'
      ',:mdfe_vt_tprod'
      ',:mdfe_vt_capkg'
      ',:mdfe_vt_capm3'
      ',:mdfe_prop'
      ',:mdfe_prop_rntrc'
      ',:mdfe_prop_tpprop'
      ',:mdfe_prop_uf'
      ',:mdfe_prop_cpf'
      ',:mdfe_prop_ie'
      ',:mdfe_prop_cnpj'
      ',:mdfe_prop_nome'
      ',:mdfe_tpprop'
      ',:mdfe_tot_qcte'
      ',:mdfe_tot_qnfe'
      ',:mdfe_tot_qnf1_1a'
      ',:mdfe_status'
      ',:mdfe_numero'
      ',:mdfe_tot_vcarga'
      ',:mdfe_tot_cunid'
      ',:mdfe_versao_xml'
      ',:mdfe_mod'
      ',:mdfe_tot_qcarga'
      ',:mdfe_dhemi'
      ',:mdfe_dhiniviagem'
      ',:mdfe_emit_uf'
      ',:mdfe_tptransp'
      ',:mdfe_modal'
      ',:mdfe_serie'
      ',:mdfe_tpemis'
      ',:mdfe_dhinclusao'
      ',:mdfe_tpemit'
      ',:mdfe_codusr_inclusao'
      ',:mdfe_dh_ueve'
      ',:mdfe_codusr_ueve'
      ',:mdfe_tpamb'
      ',:mdfe_dathormanipulacao'
      ',:mdfe_chv_mdfe'
      ',:MDFE_ENVIO_NPROT'
      ',:MDFE_ENVIO_DTHOR'
      ',:MDFE_ENC_NPROT'
      ',:MDFE_ENC_DTHOR'
      ',:MDFE_EXCLUSAO_NPROT'
      ',:MDFE_EXCLUSAO_DTHOR'
      ')'
      '')
    DeleteSQL.Strings = (
      'delete from mdfe_cadmdfe'
      'where'
      '  mdfe_ID= :OLD_mdfe_ID'
      '')
    Left = 1036
    Top = 80
  end
  object SaveDialog1: TSaveDialog
    Left = 736
    Top = 246
  end
  object TimerManipulacao: TTimer
    Enabled = False
    OnTimer = TimerManipulacaoTimer
    Left = 740
    Top = 334
  end
  object tb_cadvlpedagio: TQuery
    CachedUpdates = True
    AfterPost = c
    AfterDelete = c
    DatabaseName = 'SG_ASSOC'
    UpdateObject = U_cadvlpedagio
    Left = 860
    Top = 264
    object tb_cadvlpedagioVP_ID: TFloatField
      DisplayLabel = 'ID'
      FieldName = 'VP_ID'
    end
    object tb_cadvlpedagioVP_CNPJ_FORNECEDOR: TStringField
      DisplayLabel = 'CNPJ Fornecedor'
      FieldName = 'VP_CNPJ_FORNECEDOR'
    end
    object tb_cadvlpedagioVP_CNPJ_PAGADOR: TStringField
      DisplayLabel = 'CNPJ Pagador'
      FieldName = 'VP_CNPJ_PAGADOR'
    end
    object tb_cadvlpedagioVP_CPF_PAGADOR: TStringField
      DisplayLabel = 'CPF Pagador'
      FieldName = 'VP_CPF_PAGADOR'
    end
    object tb_cadvlpedagioVP_NUM_COMPROVANTE: TStringField
      DisplayLabel = 'Numero Comprovante'
      FieldName = 'VP_NUM_COMPROVANTE'
    end
    object tb_cadvlpedagioVP_VALOR_VALE: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VP_VALOR_VALE'
    end
  end
  object src_cadvlpedagio: TDataSource
    DataSet = tb_cadvlpedagio
    Left = 908
    Top = 248
  end
  object U_cadvlpedagio: TUpdateSQL
    ModifySQL.Strings = (
      'update MDFE_CADMUNCARREG set'
      'MC_ID = :MC_ID , MC_SEQ = :MC_SEQ'
      ', MC_CODLOC_IBGE = :MC_CODLOC_IBGE'
      'where MC_ID = :OLD_MC_ID'
      'and MC_SEQ = :OLD_MC_SEQ'
      '')
    InsertSQL.Strings = (
      'insert into MDFE_CADMUNCARREG (MC_ID, MC_SEQ,  MC_CODLOC_IBGE)'
      'values'
      '(:MC_ID, :MC_SEQ, :MC_CODLOC_IBGE)'
      ''
      ''
      ''
      '')
    DeleteSQL.Strings = (
      'delete from MDFE_CADMUNCARREG'
      'where'
      '  MC_ID= :OLD_MC_ID and'
      '  MC_SEQ= :OLD_MC_SEQ'
      ''
      '')
    Left = 956
    Top = 256
  end
end
