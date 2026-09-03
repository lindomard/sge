object Frm_Farma_SNGPC_DadosComprador: TFrm_Farma_SNGPC_DadosComprador
  Left = 27
  Top = 101
  Width = 930
  Height = 636
  Caption = 'Dados do Comprador para Gera'#231#227'o do SNGPC'
  Color = 13828095
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 914
    Height = 97
    Align = alTop
    Color = 13828095
    TabOrder = 0
    object Label1: TLabel
      Left = 200
      Top = 16
      Width = 50
      Height = 13
      Caption = 'Per'#237'odo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 370
      Top = 16
      Width = 8
      Height = 13
      Caption = #224
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label14: TLabel
      Left = 587
      Top = 3
      Width = 98
      Height = 13
      Alignment = taCenter
      Caption = 'Listar os Pedidos'
      Color = 16776176
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object MDT1: TDateEdit
      Left = 252
      Top = 8
      Width = 103
      Height = 21
      NumGlyphs = 2
      TabOrder = 0
    end
    object MDT2: TDateEdit
      Left = 397
      Top = 8
      Width = 103
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object tipo_dados: TCheckListBox
      Left = 585
      Top = 18
      Width = 101
      Height = 47
      Color = 16776176
      Columns = 1
      Ctl3D = False
      ItemHeight = 13
      Items.Strings = (
        'Incompletos'
        'Completos'
        'Todos')
      ParentCtl3D = False
      Style = lbOwnerDrawFixed
      TabOrder = 2
    end
    object bbExportar: TBitBtn
      Left = 394
      Top = 66
      Width = 182
      Height = 25
      Caption = 'Gerar Agora'
      TabOrder = 5
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333303
        333333333333337FF3333333333333903333333333333377FF33333333333399
        03333FFFFFFFFF777FF3000000999999903377777777777777FF0FFFF0999999
        99037F3337777777777F0FFFF099999999907F3FF777777777770F00F0999999
        99037F773777777777730FFFF099999990337F3FF777777777330F00FFFFF099
        03337F773333377773330FFFFFFFF09033337F3FF3FFF77733330F00F0000003
        33337F773777777333330FFFF0FF033333337F3FF7F3733333330F08F0F03333
        33337F7737F7333333330FFFF003333333337FFFF77333333333000000333333
        3333777777333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 727
      Top = 66
      Width = 182
      Height = 25
      Caption = 'Sair'
      TabOrder = 6
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
    object bbAtualizar: TBitBtn
      Left = 2
      Top = 66
      Width = 182
      Height = 25
      Caption = 'Atualizar Agora'
      TabOrder = 4
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
    object rg_registros: TRadioGroup
      Left = 699
      Top = 5
      Width = 185
      Height = 57
      Caption = 'Listar Registros'
      ItemIndex = 2
      Items.Strings = (
        'Enviar'
        'Nao Enviar'
        'Todos')
      TabOrder = 3
    end
  end
  object gb_pedenc: TGroupBox
    Left = 0
    Top = 97
    Width = 914
    Height = 134
    Align = alClient
    Caption = 'Pedidos encontrados:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 910
      Height = 117
      Align = alClient
      DataSource = src_pedcli
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'CRAZAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1TOTALL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1DATACF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1DATANF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1NUMCF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1NUMNF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1DATDOC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CFBAIRRO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CFCIDADE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CFUF'
          Visible = True
        end>
    end
  end
  object gb_itensped: TGroupBox
    Left = 0
    Top = 231
    Width = 914
    Height = 108
    Align = alBottom
    Caption = 'Itens do Pedido:'
    TabOrder = 2
    object DBGrid_itens: TDBGrid
      Left = 2
      Top = 15
      Width = 910
      Height = 91
      Align = alClient
      DataSource = Src_ItensPed
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
          FieldName = 'P2CODPRO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2ITEM'
          Width = 40
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2PRECO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2TOTDES'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2QTD'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Width = 436
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          Visible = True
        end>
    end
  end
  object gb_dadositens: TGroupBox
    Left = 0
    Top = 339
    Width = 914
    Height = 259
    Align = alBottom
    Caption = 'Dados do '#205'tem:'
    TabOrder = 3
    object Label3: TLabel
      Left = 9
      Top = 20
      Width = 126
      Height = 13
      Caption = 'Conselho Profissional:'
    end
    object Label4: TLabel
      Left = 591
      Top = 15
      Width = 117
      Height = 13
      Caption = 'N'#250'mero do Registro:'
    end
    object Label5: TLabel
      Left = 821
      Top = 16
      Width = 17
      Height = 13
      Caption = 'UF'
    end
    object Label6: TLabel
      Left = 3
      Top = 81
      Width = 905
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Dados do Comprador'
      Color = 13565902
      ParentColor = False
    end
    object Label7: TLabel
      Left = 35
      Top = 99
      Width = 98
      Height = 13
      Caption = 'Tipo Documento:'
    end
    object Label8: TLabel
      Left = 611
      Top = 99
      Width = 48
      Height = 13
      Caption = 'N'#250'mero:'
    end
    object Label9: TLabel
      Left = 91
      Top = 121
      Width = 39
      Height = 13
      Caption = 'Org'#227'o:'
    end
    object Label10: TLabel
      Left = 816
      Top = 122
      Width = 17
      Height = 13
      Caption = 'UF'
    end
    object Label11: TLabel
      Left = 1
      Top = 146
      Width = 168
      Height = 13
      Caption = 'Registro Minist'#233'rio da Saude:'
    end
    object Label12: TLabel
      Left = 445
      Top = 146
      Width = 59
      Height = 13
      Caption = 'N'#250'm Lote:'
    end
    object Label13: TLabel
      Left = 715
      Top = 146
      Width = 70
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label15: TLabel
      Left = 401
      Top = 40
      Width = 96
      Height = 13
      Caption = 'Tipo da Receita:'
    end
    object Label16: TLabel
      Left = 2
      Top = 43
      Width = 135
      Height = 13
      Caption = 'N'#250'mero da Notifica'#231#227'o:'
    end
    object Label17: TLabel
      Left = 304
      Top = 12
      Width = 114
      Height = 13
      Caption = 'Data da Prescri'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label18: TLabel
      Left = 38
      Top = 63
      Width = 95
      Height = 13
      Caption = 'Nome Prescritor:'
    end
    object Label19: TLabel
      Left = 2
      Top = 167
      Width = 119
      Height = 13
      Caption = 'Nome do Comprador:'
    end
    object Label20: TLabel
      Left = 2
      Top = 188
      Width = 109
      Height = 13
      Caption = 'Nome do Paciente:'
    end
    object Label21: TLabel
      Left = 462
      Top = 187
      Width = 106
      Height = 13
      Caption = 'Unidade da Idade:'
    end
    object Label22: TLabel
      Left = 757
      Top = 184
      Width = 33
      Height = 13
      Caption = 'Sexo:'
    end
    object Label23: TLabel
      Left = 690
      Top = 164
      Width = 95
      Height = 13
      Caption = 'Uso Prolongado:'
    end
    object Label24: TLabel
      Left = 648
      Top = 187
      Width = 37
      Height = 13
      Caption = 'Idade:'
    end
    object Label25: TLabel
      Left = 459
      Top = 213
      Width = 17
      Height = 13
      Caption = 'UF'
    end
    object Label26: TLabel
      Left = 4
      Top = 213
      Width = 120
      Height = 13
      Caption = 'Cidade do Paciente.:'
    end
    object Label27: TLabel
      Left = 743
      Top = 209
      Width = 41
      Height = 13
      Caption = 'Enviar:'
    end
    object cb_cons_profissional: TComboBox
      Left = 137
      Top = 12
      Width = 97
      Height = 21
      ItemHeight = 13
      ItemIndex = 25
      TabOrder = 1
      Text = 'CRM'
      OnExit = cb_cons_profissionalExit
      Items.Strings = (
        'CRA'
        'CRE'
        'CREA'
        'CRF'
        'DGPC'
        'DPF'
        'IDAMP'
        'IFP'
        'IN'
        'JUNTA'
        'MAER'
        'MEX'
        'MIM'
        'OAB'
        'SEJSP'
        'SES'
        'SESP'
        'SJS'
        'SJTC'
        'SSIPT'
        'SSP'
        'VACIV'
        'VAMEN'
        'PM'
        'ITB'
        'CRM'
        'CBM'
        'DIC'
        'CPF'
        'CRO'
        'COREN'
        'CFN'
        'MRE'
        'CRCI'
        'CRB'
        'CRN'
        'CFE'
        'CRC'
        'CRQ'
        'ANVISA'
        'GOVEST'
        'PREF'
        'CRBM'
        'IPF'
        'CREFITO'
        'CRMV'
        'MTE'
        'CRFA'
        'CORECON')
    end
    object edt_num_reg_prof: TEdit
      Left = 706
      Top = 12
      Width = 110
      Height = 21
      MaxLength = 50
      TabOrder = 3
    end
    object CB_UF_REG: TComboBox
      Left = 840
      Top = 12
      Width = 57
      Height = 21
      ItemHeight = 13
      ItemIndex = 8
      MaxLength = 2
      Sorted = True
      TabOrder = 4
      Text = ' GO'
      OnExit = CB_UF_REGExit
      Items.Strings = (
        ' AC'
        ' AL'
        ' AM'
        ' AP'
        ' BA'
        ' CE'
        ' DF'
        ' ES'
        ' GO'
        ' MA'
        ' MG'
        ' MS'
        ' MT'
        ' PA'
        ' PB'
        ' PE'
        ' PI'
        ' PR'
        ' RJ'
        ' RN'
        ' RO'
        ' RR'
        ' RS'
        ' SC'
        ' SE'
        ' SP'
        ' TO')
    end
    object CB_TIPODOC: TComboBox
      Left = 136
      Top = 95
      Width = 457
      Height = 21
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 9
      Text = ' 2 - Carteira de identidade'
      OnExit = CB_TIPODOCExit
      Items.Strings = (
        ' 1 - Carteira de Registro Profissional'
        ' 2 - Carteira de identidade'
        ' 3 - Autoriza'#231#227'o Especial de funcionamento'
        ' 4 - Pedido de Autoriza'#231#227'o de Trabalho'
        ' 5 - Certid'#227'o de Nascimento'
        ' 6 - Certidao de Casamento'
        ' 7 - Certificado de Reservista'
        ' 8 - Autoriza'#231#227'o de Funcionamento de Empresa'
        ' 9 - Certificado de Dispensa de Incorpora'#231#227'o'
        '10 - Carteira de Identidade do Estrangeiro'
        '40 - Autoriza'#231#227'o Especial Simplificada'
        '13 - Passaporte'
        '14 - Protocolo da Policia Federal'
        '20 - Incri'#231#227'o Municipal'
        '21 - Alvara/Licen'#231'a Sanitaria Municipal'
        '22 - Alvara/Licen'#231'a Sanit'#225'ria Estadual'
        '50 - Carteira de Trabalho e Previdencia Social')
    end
    object edt_numdoc: TEdit
      Left = 664
      Top = 95
      Width = 238
      Height = 21
      TabOrder = 10
    end
    object cb_uf_doc: TComboBox
      Left = 841
      Top = 118
      Width = 57
      Height = 21
      ItemHeight = 13
      ItemIndex = 8
      MaxLength = 2
      Sorted = True
      TabOrder = 12
      Text = ' GO'
      OnExit = cb_uf_docExit
      Items.Strings = (
        ' AC'
        ' AL'
        ' AM'
        ' AP'
        ' BA'
        ' CE'
        ' DF'
        ' ES'
        ' GO'
        ' MA'
        ' MG'
        ' MS'
        ' MT'
        ' PA'
        ' PB'
        ' PE'
        ' PI'
        ' PR'
        ' RJ'
        ' RN'
        ' RO'
        ' RR'
        ' RS'
        ' SC'
        ' SE'
        ' SP'
        ' TO')
    end
    object edt_reg_ms: TEdit
      Left = 178
      Top = 143
      Width = 260
      Height = 21
      MaxLength = 50
      TabOrder = 11
    end
    object edt_numlot: TEdit
      Left = 508
      Top = 143
      Width = 115
      Height = 21
      MaxLength = 20
      TabOrder = 13
    end
    object edt_quant: TEdit
      Left = 792
      Top = 143
      Width = 108
      Height = 21
      TabStop = False
      ReadOnly = True
      TabOrder = 14
    end
    object ALTERAR: TBitBtn
      Left = 176
      Top = 231
      Width = 150
      Height = 25
      Hint = 'Permite alterar o registro atual'
      Caption = '&Alterar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = ALTERARClick
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
    object GRAVAR: TBitBtn
      Left = 521
      Top = 233
      Width = 150
      Height = 25
      Hint = 'Grava o registro atual'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 24
      OnClick = GRAVARClick
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
    object cb_tipo_receita: TComboBox
      Left = 516
      Top = 36
      Width = 382
      Height = 21
      ItemHeight = 13
      ItemIndex = 4
      TabOrder = 7
      Text = '5 Receita Antimicrobiano em 2 vias'
      OnExit = cb_tipo_receitaExit
      Items.Strings = (
        '1 Receita de Controle Especial em 2 vias (Receita Branca)'
        '2 Notifica'#231#227'o de Receita B (Notifica'#231#227'o Azul)'
        '3 Notifica'#231#227'o de Receita Especial (Notifica'#231#227'o Branca)'
        '4 Notifica'#231#227'o de Receita A (Notifica'#231#227'o Amarela)'
        '5 Receita Antimicrobiano em 2 vias')
    end
    object edt_NUM_NOTIF: TEdit
      Left = 137
      Top = 38
      Width = 121
      Height = 21
      MaxLength = 20
      TabOrder = 6
    end
    object edt_data_prescricao: TDateEdit
      Left = 421
      Top = 12
      Width = 103
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object edt_nome_prescritor: TEdit
      Left = 137
      Top = 59
      Width = 432
      Height = 21
      MaxLength = 60
      TabOrder = 8
    end
    object edt_nome_comprador: TEdit
      Left = 178
      Top = 164
      Width = 366
      Height = 21
      MaxLength = 60
      TabOrder = 15
    end
    object CB_ORGAO: TComboBox
      Left = 135
      Top = 117
      Width = 678
      Height = 21
      ItemHeight = 13
      ItemIndex = 46
      MaxLength = 2
      Sorted = True
      TabOrder = 5
      Text = 'SSP-SECRETARIA DE SEGURAN'#199'A P'#218'BLICA'
      Items.Strings = (
        'ANVISA-AG'#202'NCIA NACIONAL DE VIGIL'#194'NCIA SANIT'#193'RIA'
        'CBM-CORPO DE BOMBEIROS MILITAR'
        'CFE-CONSELHO FEDERAL DE ENFERMAGEM'
        'CFN-CONSELHO FEDERAL DE NUTRICIONISTAS'
        'CFP-CONSELHO FEDERAL DE PSICOLOGIA'
        'CORECOM-CONSELHO REGIONAL DE ECONOMIA'
        'COREN-CONSELHO REGIONAL DE ENFERMARIA'
        'CRA-CONSELHO REGIONAL DE ADMINISTRA'#199#195'O'
        'CRB-CONSELHO REGIONAL DE BIOLOGIA'
        'CRBM-CONSELHO REGIONAL DE BIOMEDICINA'
        'CRC-CONSELHO REGIONAL DE CONTABILIDADE'
        'CRCI-CONSELHO REGIONAL DE CORRETORES DE IM'#211'VEIS'
        'CREA-CONSELHO REGIONAL DE ENGENHARIA ARQUITETURA E AGRONOMIA'
        'CRE-CONSELHO REGIONAL DE ECONOMIA'
        'CREFITO-CONSELHO REGIONAL DE FISIOTERAPIA OCUPACIONAL'
        'CRFA-CONSELHO REGIONAL DE FONOAUDIOLOGIA'
        'CRF-CONSELHO REGIONAL DE FARM'#193'CIA'
        'CRM-CONSELHO REGIONAL DE MEDICINA'
        'CRMV-CONSELHO REGIONAL DE MEDICINA VETERIN'#193'RIA'
        'CRN-CONSELHO REGIONAL DE NUTRI'#199#195'O'
        'CRO-CONSELHO REGIONAL DE ODONTOLOGIA'
        'CRP-CONSELHO REGIONAL DE PSICOLOGIA'
        'CRQ-CONSELHO REGIONAL DE QU'#205'MICA'
        'DGPC-DIRETORIA GERAL DA POL'#205'CIA CIVIL'
        'DIC-DETRAN '#8211' DIRETORIA DE IDENTIFICA'#199#195'O CIVIL'
        'DPF-DEPARTAMENTO DE POL'#205'CIA FEDERAL'
        'GOVEST-GOVERNO DO ESTADO'
        'IDAMP-INSTITUTO IDENTIF. AROLDO MENDES PAIVA'
        'IFP-INSTITUTO F'#201'LIX PACHECO'
        'IN-IMPRENSA NACIONAL'
        'IPF-INSTITUTO PEREIRA FAUSTINHO'
        'ITB-INSTITUTO TAVARES BURIL'
        'JUNTA-JUNTA'
        'MAER-MINIST'#201'RIO DA AERON'#193'UTICA'
        'MEX-MINIST'#201'RIO DO EX'#201'RCITO'
        'MM-MINIST'#201'RIO DA MARINHA'
        'MRE-MINIST'#201'RIO DAS RELA'#199#213'ES EXTERIORES'
        'OAB-ORDEM DOS ADVOGADOS DO BRASIL'
        'PM-POL'#205'CIA MILITAR'
        'PREF-PREFEITURA'
        'SEJSP-SECRETARIA DE EST. DA JUSTI'#199'A E SEG. P'#218'BLICA'
        'SESP-SECRETARIA DO ESTADO SEG. P'#218'BLICA'
        'SES-SECRETARIA DE ESTADO DA SEGURAN'#199'A'
        'SJS-SECRETARIA DA JUSTI'#199'A E DA SEGURAN'#199'A'
        'SJTC-SECRETARIA DA JUST. DO TRAB. E DA CIDADANIA'
        'SSIPT-SECR. DE SEG. E INFORM. POL'#205'CIA T'#201'CNICA'
        'SSP-SECRETARIA DE SEGURAN'#199'A P'#218'BLICA'
        'TEM-MINIST'#201'RIO DO TRABALHO E EMPREGO'
        'VACIV-VARA CIVIL'
        'VAMEN-VARA DE MENORES')
    end
    object edt_nome_paciente: TEdit
      Left = 177
      Top = 185
      Width = 280
      Height = 21
      MaxLength = 60
      TabOrder = 16
    end
    object cb_unidade_idade: TComboBox
      Left = 572
      Top = 185
      Width = 74
      Height = 21
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 18
      Text = '1-Ano'
      OnExit = cb_unidade_idadeExit
      Items.Strings = (
        '1-Ano'
        '2-Mes')
    end
    object CB_SEXO: TComboBox
      Left = 792
      Top = 185
      Width = 108
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 19
      Text = '1 Masculino'
      OnExit = CB_SEXOExit
      Items.Strings = (
        '1 Masculino'
        '2 Feminino')
    end
    object cb_uso_prolongado: TComboBox
      Left = 792
      Top = 162
      Width = 108
      Height = 21
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 17
      Text = 'N'#227'o'
      OnExit = cb_uso_prolongadoExit
      Items.Strings = (
        'Sim'
        'N'#227'o')
    end
    object edt_idade: TEdit
      Left = 688
      Top = 184
      Width = 65
      Height = 21
      TabStop = False
      TabOrder = 20
    end
    object cb_uf_paciente: TComboBox
      Left = 479
      Top = 210
      Width = 57
      Height = 21
      ItemHeight = 13
      MaxLength = 2
      Sorted = True
      TabOrder = 21
      Text = ' GO'
      OnExit = cb_uf_pacienteExit
      Items.Strings = (
        'AC'
        'AL'
        'AM'
        'AP'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MG'
        'MS'
        'MT'
        'PA'
        'PB'
        'PE'
        'PI'
        'PR'
        'RJ'
        'RN'
        'RO'
        'RR'
        'RS'
        'SC'
        'SE'
        'SP'
        'TO')
    end
    object edt_cidade_paciente: TEdit
      Left = 177
      Top = 208
      Width = 280
      Height = 21
      MaxLength = 60
      TabOrder = 22
    end
    object CB_ENVIAR: TComboBox
      Left = 792
      Top = 207
      Width = 108
      Height = 21
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 23
      Text = 'N'#227'o'
      OnExit = CB_ENVIARExit
      Items.Strings = (
        'Sim'
        'N'#227'o')
    end
  end
  object Qr_PedCli: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select P1CHAVE,P1ORDEM,P1LOTSEQ,P1CODEMP,P1CODCLI,P1TOTALL,P1DAT' +
        'ACF,P1DATANF,P1NUMCF,P1NUMNF,P1DATDOC,CRAZAO,'
      'CFBAIRRO,CFCIDADE,CFUF'
      'FROM CADP01,CADCLI,CADCSF'
      'WHERE  CCODCLI=P1CODCLI AND '
      
        ' CFCODEMP(+)=P1CODEMP and CFLOTSEQ(+)=P1LOTSEQ AND CFCHAVEP(+)=P' +
        '1CHAVE')
    Left = 240
    Top = 49
    object Qr_PedCliP1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P1CHAVE'
    end
    object Qr_PedCliP1ORDEM: TFloatField
      FieldName = 'P1ORDEM'
    end
    object Qr_PedCliP1LOTSEQ: TFloatField
      FieldName = 'P1LOTSEQ'
    end
    object Qr_PedCliP1CODEMP: TFloatField
      FieldName = 'P1CODEMP'
    end
    object Qr_PedCliP1CODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'P1CODCLI'
    end
    object Qr_PedCliP1TOTALL: TFloatField
      DisplayLabel = 'Total Liquido'
      FieldName = 'P1TOTALL'
    end
    object Qr_PedCliP1DATACF: TDateTimeField
      DisplayLabel = 'Data Cupom'
      FieldName = 'P1DATACF'
    end
    object Qr_PedCliP1DATANF: TDateTimeField
      DisplayLabel = 'Data NF'
      FieldName = 'P1DATANF'
    end
    object Qr_PedCliP1NUMCF: TFloatField
      DisplayLabel = 'N'#250'mero CF'
      FieldName = 'P1NUMCF'
    end
    object Qr_PedCliP1NUMNF: TFloatField
      DisplayLabel = 'N'#250'mero NF'
      FieldName = 'P1NUMNF'
    end
    object Qr_PedCliP1DATDOC: TDateTimeField
      DisplayLabel = 'Data Doc'
      FieldName = 'P1DATDOC'
    end
    object Qr_PedCliCRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Size = 60
    end
    object Qr_PedCliCFBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CFBAIRRO'
    end
    object Qr_PedCliCFCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CFCIDADE'
    end
    object Qr_PedCliCFUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CFUF'
      Size = 2
    end
  end
  object Src_ItensPed: TDataSource
    DataSet = Qr_ItensPed
    OnDataChange = Src_ItensPedDataChange
    Left = 472
    Top = 48
  end
  object Qr_ItensPed: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select P2CHAVE,P2CODEMP,P2LOTSEQ,P2CODPRO,P2ITEM,P2PRECO,P2TOTDE' +
        'S,P2QTD,PDNOME,PDUND'
      'FROM CADP02,CADPRO'
      'WHERE  PDCODPRO=P2CODPRO')
    Left = 512
    Top = 49
    object Qr_ItensPedP2CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Prod'
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Qr_ItensPedP2ITEM: TFloatField
      DisplayLabel = #205'tem'
      FieldName = 'P2ITEM'
      Origin = 'SG_ASSOC.CADP02.P2ITEM'
    end
    object Qr_ItensPedP2PRECO: TFloatField
      DisplayLabel = 'Pre'#231'o Unitario'
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Qr_ItensPedP2TOTDES: TFloatField
      DisplayLabel = 'Total Desconto'
      FieldName = 'P2TOTDES'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
    object Qr_ItensPedP2QTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Qr_ItensPedPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 120
    end
    object Qr_ItensPedPDUND: TStringField
      DisplayLabel = 'Unid'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_ItensPedP2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE'
    end
    object Qr_ItensPedP2CODEMP: TFloatField
      FieldName = 'P2CODEMP'
      Origin = 'SG_ASSOC.CADP02.P2CODEMP'
    end
    object Qr_ItensPedP2LOTSEQ: TFloatField
      FieldName = 'P2LOTSEQ'
      Origin = 'SG_ASSOC.CADP02.P2LOTSEQ'
    end
  end
  object src_pedcli: TDataSource
    DataSet = Qr_PedCli
    OnDataChange = src_pedcliDataChange
    Left = 272
    Top = 56
  end
  object Src_DadosComp: TDataSource
    DataSet = Qr_DadosComp
    Left = 632
    Top = 40
  end
  object Qr_DadosComp: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select'
      'P2SNGPC_CODEMP'
      ',P2SNGPC_LOTSEQ'
      ',P2SNGPC_CHAVE'
      ',P2SNGPC_CHAVE_NIVEL'
      ',P2SNGPC_CODPRO'
      ',P2SNGPC_ITEM'
      ',P2SNGPC_TIPO_RECEITA'
      ',P2SNGPC_NUM_NOTIF'
      ',P2SNGPC_DT_PRESCRICAO'
      ',P2SNGPC_PRESC_NOME'
      ',P2SNGPC_NUM_REG_PROF'
      ',P2SNGPC_CONS_PROFIS'
      ',P2SNGPC_UF_CONSELHO'
      ',P2SNGPC_USO_MEDIC'
      ',P2SNGPC_NOME_COMPRADOR'
      ',P2SNGPC_TIPO_DOC'
      ',P2SNGPC_NUM_DOC'
      ',P2SNGPC_ORGAO_EXPED'
      ',P2SNGPC_UF_EMIS_DOC'
      ',P2SNGPC_REGMS'
      ',P2SNGPC_LOTE'
      ',P2SNGPC_QTDPED'
      ',P2SNGPC_DATA_VENDA'
      ',P2SNGPC_PACIENTE_NOME'
      ',P2SNGPC_PACIENTE_UND_IDADE'
      ',P2SNGPC_PACIENTE_IDADE'
      ',P2SNGPC_PACIENTE_CIDADE'
      ',P2SNGPC_PACIENTE_UF'
      ',P2SNGPC_PACIENTE_SEXO'
      ',P2SNGPC_USO_PROLOGANDO'
      ',P2SNGPC_ENVIAR'
      ''
      'from CADP02_SNGPC')
    Left = 672
    Top = 41
    object Qr_DadosCompP2SNGPC_CODEMP: TFloatField
      FieldName = 'P2SNGPC_CODEMP'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_CODEMP'
    end
    object Qr_DadosCompP2SNGPC_LOTSEQ: TFloatField
      FieldName = 'P2SNGPC_LOTSEQ'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_LOTSEQ'
    end
    object Qr_DadosCompP2SNGPC_CHAVE: TFloatField
      FieldName = 'P2SNGPC_CHAVE'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_CHAVE'
    end
    object Qr_DadosCompP2SNGPC_CHAVE_NIVEL: TFloatField
      FieldName = 'P2SNGPC_CHAVE_NIVEL'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_CHAVE_NIVEL'
    end
    object Qr_DadosCompP2SNGPC_CODPRO: TFloatField
      FieldName = 'P2SNGPC_CODPRO'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_CODPRO'
    end
    object Qr_DadosCompP2SNGPC_ITEM: TFloatField
      FieldName = 'P2SNGPC_ITEM'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_ITEM'
    end
    object Qr_DadosCompP2SNGPC_TIPO_RECEITA: TFloatField
      FieldName = 'P2SNGPC_TIPO_RECEITA'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_TIPO_RECEITA'
    end
    object Qr_DadosCompP2SNGPC_NUM_NOTIF: TStringField
      FieldName = 'P2SNGPC_NUM_NOTIF'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_NUM_NOTIF'
    end
    object Qr_DadosCompP2SNGPC_DT_PRESCRICAO: TDateTimeField
      FieldName = 'P2SNGPC_DT_PRESCRICAO'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_DT_PRESCRICAO'
    end
    object Qr_DadosCompP2SNGPC_PRESC_NOME: TStringField
      FieldName = 'P2SNGPC_PRESC_NOME'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_PRESC_NOME'
      Size = 60
    end
    object Qr_DadosCompP2SNGPC_NUM_REG_PROF: TStringField
      FieldName = 'P2SNGPC_NUM_REG_PROF'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_NUM_REG_PROF'
      Size = 50
    end
    object Qr_DadosCompP2SNGPC_CONS_PROFIS: TStringField
      FieldName = 'P2SNGPC_CONS_PROFIS'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_CONS_PROFIS'
      Size = 50
    end
    object Qr_DadosCompP2SNGPC_UF_CONSELHO: TStringField
      FieldName = 'P2SNGPC_UF_CONSELHO'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_UF_CONSELHO'
      Size = 2
    end
    object Qr_DadosCompP2SNGPC_USO_MEDIC: TStringField
      FieldName = 'P2SNGPC_USO_MEDIC'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_USO_MEDIC'
      Size = 1
    end
    object Qr_DadosCompP2SNGPC_NOME_COMPRADOR: TStringField
      FieldName = 'P2SNGPC_NOME_COMPRADOR'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_NOME_COMPRADOR'
      Size = 60
    end
    object Qr_DadosCompP2SNGPC_TIPO_DOC: TStringField
      FieldName = 'P2SNGPC_TIPO_DOC'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_TIPO_DOC'
      Size = 1
    end
    object Qr_DadosCompP2SNGPC_NUM_DOC: TStringField
      FieldName = 'P2SNGPC_NUM_DOC'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_NUM_DOC'
      Size = 50
    end
    object Qr_DadosCompP2SNGPC_ORGAO_EXPED: TStringField
      FieldName = 'P2SNGPC_ORGAO_EXPED'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_ORGAO_EXPED'
      Size = 50
    end
    object Qr_DadosCompP2SNGPC_UF_EMIS_DOC: TStringField
      FieldName = 'P2SNGPC_UF_EMIS_DOC'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_UF_EMIS_DOC'
      Size = 2
    end
    object Qr_DadosCompP2SNGPC_REGMS: TStringField
      FieldName = 'P2SNGPC_REGMS'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_REGMS'
      Size = 50
    end
    object Qr_DadosCompP2SNGPC_LOTE: TStringField
      FieldName = 'P2SNGPC_LOTE'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_LOTE'
    end
    object Qr_DadosCompP2SNGPC_QTDPED: TFloatField
      FieldName = 'P2SNGPC_QTDPED'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_QTDPED'
    end
    object Qr_DadosCompP2SNGPC_DATA_VENDA: TDateTimeField
      FieldName = 'P2SNGPC_DATA_VENDA'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_DATA_VENDA'
    end
    object Qr_DadosCompP2SNGPC_PACIENTE_NOME: TStringField
      FieldName = 'P2SNGPC_PACIENTE_NOME'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_PACIENTE_NOME'
      Size = 60
    end
    object Qr_DadosCompP2SNGPC_PACIENTE_UND_IDADE: TFloatField
      FieldName = 'P2SNGPC_PACIENTE_UND_IDADE'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_PACIENTE_UND_IDADE'
    end
    object Qr_DadosCompP2SNGPC_PACIENTE_IDADE: TFloatField
      FieldName = 'P2SNGPC_PACIENTE_IDADE'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_PACIENTE_IDADE'
    end
    object Qr_DadosCompP2SNGPC_PACIENTE_CIDADE: TStringField
      FieldName = 'P2SNGPC_PACIENTE_CIDADE'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_PACIENTE_CIDADE'
      Size = 60
    end
    object Qr_DadosCompP2SNGPC_PACIENTE_UF: TStringField
      FieldName = 'P2SNGPC_PACIENTE_UF'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_PACIENTE_UF'
      Size = 2
    end
    object Qr_DadosCompP2SNGPC_USO_PROLOGANDO: TStringField
      FieldName = 'P2SNGPC_USO_PROLOGANDO'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_USO_PROLOGANDO'
      Size = 1
    end
    object Qr_DadosCompP2SNGPC_PACIENTE_SEXO: TFloatField
      FieldName = 'P2SNGPC_PACIENTE_SEXO'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_PACIENTE_SEXO'
    end
    object Qr_DadosCompP2SNGPC_ENVIAR: TStringField
      FieldName = 'P2SNGPC_ENVIAR'
      Origin = 'SG_ASSOC.CADP02_SNGPC.P2SNGPC_ENVIAR'
      Size = 1
    end
  end
end
