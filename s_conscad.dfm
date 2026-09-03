object Frm_ConsCad: TFrm_ConsCad
  Left = 0
  Top = 0
  Width = 1150
  Height = 699
  Caption = 'Consultar Cadastro'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 1142
    Height = 34
    Align = alTop
    Alignment = taCenter
    Caption = 'Consulta Cadastro'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -30
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 34
    Width = 1142
    Height = 634
    ActivePage = tsReceitaFederal
    Align = alClient
    TabOrder = 0
    TabStop = False
    object tsSefaz: TTabSheet
      Caption = 'Contribuites Secretaria da Fazenda'
    end
    object tsReceitaFederal: TTabSheet
      Caption = 'CNPJ Receita Federal'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1134
        Height = 109
        Align = alTop
        TabOrder = 0
        object Label2: TLabel
          Left = 24
          Top = 5
          Width = 29
          Height = 13
          Caption = 'CNPJ:'
        end
        object lbl_url: TLabel
          Left = 346
          Top = 2
          Width = 20
          Height = 13
          Caption = 'URl:'
          Visible = False
        end
        object edt_rf_cnpj: TEdit
          Left = 59
          Top = 4
          Width = 121
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 0
          OnExit = edt_rf_cnpjExit
        end
        object edt_url: TEdit
          Left = 372
          Top = 1
          Width = 478
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          Text = 
            'http://www.receita.fazenda.gov.br/PessoaJuridica/CNPJ/cnpjreva/C' +
            'npjreva_Solicitacao2.asp'
          Visible = False
        end
        object BBnAtu: TBitBtn
          Left = 183
          Top = 0
          Width = 117
          Height = 25
          Caption = 'consultar'
          TabOrder = 2
          OnClick = BBnAtuClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
            0EEE333377777777777733330FF00FBFB0EE33337F37733F377733330F0BFB0B
            FB0E33337F73FF73337733330FF000BFBFB033337F377733333733330FFF0BFB
            FBF033337FFF733F333733300000BF0FBFB03FF77777F3733F37000FBFB0F0FB
            0BF077733FF7F7FF7337E0FB00000000BF0077F377777777F377E0BFBFBFBFB0
            F0F077F3333FFFF7F737E0FBFB0000000FF077F3337777777337E0BFBFBFBFB0
            FFF077F3333FFFF73FF7E0FBFB00000F000077FF337777737777E00FBFBFB0FF
            0FF07773FFFFF7337F37003000000FFF0F037737777773337F7333330FFFFFFF
            003333337FFFFFFF773333330000000003333333777777777333}
          NumGlyphs = 2
        end
        object bbSair: TBitBtn
          Left = 1006
          Top = -1
          Width = 117
          Height = 25
          Hint = 'Fecha a Janela'
          Caption = 'Sair'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
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
        object bbPreencher: TBitBtn
          Left = 650
          Top = 56
          Width = 117
          Height = 25
          Caption = 'Preencher'
          Enabled = False
          TabOrder = 4
          Visible = False
          OnClick = bbPreencherClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
            0EEE333377777777777733330FF00FBFB0EE33337F37733F377733330F0BFB0B
            FB0E33337F73FF73337733330FF000BFBFB033337F377733333733330FFF0BFB
            FBF033337FFF733F333733300000BF0FBFB03FF77777F3733F37000FBFB0F0FB
            0BF077733FF7F7FF7337E0FB00000000BF0077F377777777F377E0BFBFBFBFB0
            F0F077F3333FFFF7F737E0FBFB0000000FF077F3337777777337E0BFBFBFBFB0
            FFF077F3333FFFF73FF7E0FBFB00000F000077FF337777737777E00FBFBFB0FF
            0FF07773FFFFF7337F37003000000FFF0F037737777773337F7333330FFFFFFF
            003333337FFFFFFF773333330000000003333333777777777333}
          NumGlyphs = 2
        end
        object bbdados: TBitBtn
          Left = 799
          Top = 64
          Width = 117
          Height = 25
          Caption = 'dados'
          Enabled = False
          TabOrder = 5
          Visible = False
          OnClick = bbdadosClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
            0EEE333377777777777733330FF00FBFB0EE33337F37733F377733330F0BFB0B
            FB0E33337F73FF73337733330FF000BFBFB033337F377733333733330FFF0BFB
            FBF033337FFF733F333733300000BF0FBFB03FF77777F3733F37000FBFB0F0FB
            0BF077733FF7F7FF7337E0FB00000000BF0077F377777777F377E0BFBFBFBFB0
            F0F077F3333FFFF7F737E0FBFB0000000FF077F3337777777337E0BFBFBFBFB0
            FFF077F3333FFFF73FF7E0FBFB00000F000077FF337777737777E00FBFBFB0FF
            0FF07773FFFFF7337F37003000000FFF0F037737777773337F7333330FFFFFFF
            003333337FFFFFFF773333330000000003333333777777777333}
          NumGlyphs = 2
        end
        object bbcodigo: TBitBtn
          Left = 947
          Top = 64
          Width = 117
          Height = 25
          Caption = 'Codigo'
          Enabled = False
          TabOrder = 6
          Visible = False
          OnClick = bbcodigoClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
            0EEE333377777777777733330FF00FBFB0EE33337F37733F377733330F0BFB0B
            FB0E33337F73FF73337733330FF000BFBFB033337F377733333733330FFF0BFB
            FBF033337FFF733F333733300000BF0FBFB03FF77777F3733F37000FBFB0F0FB
            0BF077733FF7F7FF7337E0FB00000000BF0077F377777777F377E0BFBFBFBFB0
            F0F077F3333FFFF7F737E0FBFB0000000FF077F3337777777337E0BFBFBFBFB0
            FFF077F3333FFFF73FF7E0FBFB00000F000077FF337777737777E00FBFBFB0FF
            0FF07773FFFFF7337F37003000000FFF0F037737777773337F7333330FFFFFFF
            003333337FFFFFFF773333330000000003333333777777777333}
          NumGlyphs = 2
        end
      end
      object Panel_Cadastro: TPanel
        Left = 730
        Top = 109
        Width = 404
        Height = 497
        Align = alRight
        TabOrder = 1
        object Label3: TLabel
          Left = 1
          Top = 31
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Nome/Raz'#227'o Social:'
        end
        object Label4: TLabel
          Left = 1
          Top = 13
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CNPJ:'
        end
        object Label_end: TLabel
          Left = 1
          Top = 68
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Endere'#231'o'
        end
        object Label5: TLabel
          Left = 1
          Top = 123
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Cep:'
        end
        object Label6: TLabel
          Left = 1
          Top = 86
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Nro:'
        end
        object Label7: TLabel
          Left = 1
          Top = 103
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Complemento:'
        end
        object Label8: TLabel
          Left = 1
          Top = 141
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Bairro:'
        end
        object Label9: TLabel
          Left = 1
          Top = 158
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Municipio:'
        end
        object Label10: TLabel
          Left = 1
          Top = 175
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'UF:'
        end
        object Label11: TLabel
          Left = 1
          Top = 51
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Fantasia/Denomina'#231#227'o:'
        end
        object Label12: TLabel
          Left = 1
          Top = 191
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CNAE Principal:'
        end
        object Label13: TLabel
          Left = 1
          Top = 209
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'CNAE Segundario:'
        end
        object Label14: TLabel
          Left = 0
          Top = 229
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Data Abertura:'
        end
        object Label15: TLabel
          Left = 2
          Top = 247
          Width = 125
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'C'#243'd.Natureza Juridica:'
        end
        object lbl_obscli: TLabel
          Left = 48
          Top = 320
          Width = 305
          Height = 81
          Alignment = taCenter
          AutoSize = False
          Caption = 'lbl_obscli'
          Color = 4227327
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
          Visible = False
          WordWrap = True
        end
        object Edit_Nome: TEdit
          Left = 133
          Top = 28
          Width = 257
          Height = 19
          Hint = 'NOME EMPRESARIAL'
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object Edit_Inscricao: TEdit
          Left = 133
          Top = 10
          Width = 257
          Height = 19
          Hint = 'N'#218'MERO DE INSCRI'#199#195'O'
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object Edit_Endereco: TEdit
          Left = 133
          Top = 64
          Width = 257
          Height = 19
          Hint = 'LOGRADOURO'
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object Edit_Numero: TEdit
          Left = 133
          Top = 82
          Width = 56
          Height = 19
          Hint = 'N'#218'MERO'
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object Edit_Complemento: TEdit
          Left = 133
          Top = 100
          Width = 173
          Height = 19
          Hint = 'COMPLEMENTO'
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object Edit_Cep: TEdit
          Left = 133
          Top = 118
          Width = 105
          Height = 19
          Hint = 'CEP'
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
        object Edit_Bairro: TEdit
          Left = 133
          Top = 136
          Width = 257
          Height = 19
          Hint = 'BAIRRO/DISTRITO'
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
        end
        object edt_municipio: TEdit
          Left = 133
          Top = 154
          Width = 257
          Height = 19
          Hint = 'MUNIC'#205'PIO'
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
        end
        object Edt_UF: TEdit
          Left = 133
          Top = 172
          Width = 34
          Height = 19
          Hint = 'UF'
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 8
        end
        object edt_fantasia: TEdit
          Left = 133
          Top = 46
          Width = 257
          Height = 19
          Hint = 'T'#205'TULO DO ESTABELECIMENTO (NOME DE FANTASIA) '
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 9
        end
        object edt_cnae_principal: TEdit
          Left = 133
          Top = 190
          Width = 257
          Height = 19
          Hint = 'C'#211'DIGO E DESCRI'#199#195'O DA ATIVIDADE ECON'#212'MICA PRINCIPAL'
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 10
        end
        object Edt_cnae_segundario: TEdit
          Left = 133
          Top = 208
          Width = 257
          Height = 19
          Hint = 'C'#211'DIGO E DESCRI'#199#195'O DAS ATIVIDADES ECON'#212'MICAS SECUND'#193'RIAS'
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 11
        end
        object edt_datacnpj: TEdit
          Left = 133
          Top = 226
          Width = 257
          Height = 19
          Hint = 
            'COMPROVANTE DE INSCRI'#199#195'O E DE SITUA'#199#195'O CADASTRAL DATA DE ABERTUR' +
            'A'
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 12
        end
        object edt_codnat_juridica: TEdit
          Left = 133
          Top = 244
          Width = 257
          Height = 19
          Hint = 'C'#211'DIGO E DESCRI'#199#195'O DA NATUREZA JUR'#205'DICA'
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 13
        end
        object bbSairIncluir: TBitBtn
          Left = 32
          Top = 267
          Width = 209
          Height = 25
          Hint = 'Fecha a Janela'
          Caption = 'Sair Incluindo um Novo Cliente'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
          Visible = False
          OnClick = bbSairIncluirClick
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
      end
      object WebBrowser: TWebBrowser
        Left = 0
        Top = 109
        Width = 730
        Height = 497
        Align = alClient
        TabOrder = 2
        OnDocumentComplete = WebBrowserDocumentComplete
        ControlData = {
          4C000000734B00005E3300000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
    end
    object tsRetorno: TTabSheet
      Caption = 'Memos Retorno'
      ImageIndex = 2
      object Memo_dados: TMemo
        Left = 0
        Top = 0
        Width = 1134
        Height = 97
        Align = alTop
        Lines.Strings = (
          'Memo_dados')
        TabOrder = 0
      end
      object Memo_codigo: TMemo
        Left = 0
        Top = 97
        Width = 1134
        Height = 136
        Align = alTop
        Lines.Strings = (
          'Memo_dados')
        TabOrder = 1
      end
    end
  end
end
