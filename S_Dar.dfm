inherited Frm_Dar: TFrm_Dar
  Left = 269
  Top = 131
  Width = 790
  Height = 551
  Caption = 'Manuten'#231#227'o no arquivo de Duplicatas a Receber'
  Font.Style = []
  FormStyle = fsNormal
  KeyPreview = True
  OldCreateOrder = True
  Visible = False
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 34
    Width = 782
    Height = 58
    inherited lbl_emp: TLabel
      Left = 745
      Width = 36
      Height = 56
    end
    inherited Pesquisapor: TLabel
      Left = 10
      Top = 17
      Width = 75
      Alignment = taRightJustify
      AutoSize = False
    end
    object Label53: TLabel [2]
      Left = 495
      Top = 1
      Width = 120
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Listar Somente'
      Color = 16765864
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label54: TLabel [3]
      Left = 617
      Top = 1
      Width = 120
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Ordem'
      Color = 16765864
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label62: TLabel [4]
      Left = 10
      Top = 34
      Width = 75
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Periodo de:'
      FocusControl = CAMPO
    end
    object Label63: TLabel [5]
      Left = 237
      Top = 37
      Width = 6
      Height = 13
      Caption = #224
      FocusControl = CAMPO
    end
    object Label64: TLabel [6]
      Left = 395
      Top = 39
      Width = 49
      Height = 13
      Caption = 'Qual data:'
      FocusControl = CAMPO
    end
    object sbt_salva_conf: TSpeedButton [7]
      Left = 743
      Top = 33
      Width = 23
      Height = 22
      Hint = 'Salvar Configura'#231#227'o'
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
      OnClick = sbt_salva_confClick
    end
    inherited BBnAtu: TBitBtn
      Left = 388
      Top = 6
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Left = 89
      Top = 15
      Width = 119
      ItemIndex = 0
      Text = 'N'#250'mero'
      OnExit = CAMPOExit
      Items.Strings = (
        'N'#250'mero'
        'C'#243'd.Cliente'
        'C'#243'd.Vendedor'
        'Dt.Emissao'
        'Dt.Vcto.'
        'Razao Social'
        'Denomina'#231#227'o'
        'Nosso N'#250'mero'
        'Chave do Pedido'
        'Valor'
        'Nota de Origem')
    end
    inherited Edit1: TMaskEdit
      Top = 15
      Width = 174
      Height = 19
      Ctl3D = False
      EditMask = '##############;1; '
      MaxLength = 14
      ParentCtl3D = False
      Text = '              '
      OnExit = Edit1Exit
    end
    object cb_listar: TComboBox
      Left = 496
      Top = 15
      Width = 122
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'todas'
      OnClick = cb_listarClick
      Items.Strings = (
        'todas'
        'em abertas'
        'pagas')
    end
    object cb_ordem: TComboBox
      Left = 618
      Top = 15
      Width = 122
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = 'Padr'#227'o(Nenhuma)'
      Items.Strings = (
        'Padr'#227'o(Nenhuma)'
        'Emissao'
        'Numero'
        'Vencimento')
    end
    object edt_datini: TDateEdit
      Left = 89
      Top = 34
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 5
      OnExit = edt_datiniExit
    end
    object edt_datfin: TDateEdit
      Left = 265
      Top = 33
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 6
      OnExit = edt_datfinExit
    end
    object cb_tipopesq: TComboBox
      Left = 460
      Top = 34
      Width = 122
      Height = 21
      BevelKind = bkSoft
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 3
      ParentCtl3D = False
      Sorted = True
      TabOrder = 7
      Text = 'Vencimento'
      OnClick = cb_listarClick
      Items.Strings = (
        'Baixa'
        'Emissao'
        'Pagamento'
        'Vencimento')
    end
    object bbWhatsApp: TBitBtn
      Left = 588
      Top = 35
      Width = 89
      Height = 25
      Caption = 'WhatsApp'
      TabOrder = 8
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
  end
  inherited PC1: TPageControl
    Top = 92
    Width = 782
    Height = 393
    OnChange = PC1Change
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 5
        Top = 8
        Width = 61
        Height = 13
        Caption = 'N'#250'mero........'
        FocusControl = db_numero
      end
      object Label4: TLabel
        Left = 6
        Top = 96
        Width = 56
        Height = 13
        Caption = 'Cliente........'
        FocusControl = db_codcli
      end
      object Label7: TLabel
        Left = 6
        Top = 113
        Width = 58
        Height = 13
        Caption = 'Vendedor....'
        FocusControl = db_codven
      end
      object Label6: TLabel
        Left = 418
        Top = 135
        Width = 71
        Height = 13
        Caption = 'Vencimento.....'
        FocusControl = db_dtvcto
      end
      object Label3: TLabel
        Left = 418
        Top = 117
        Width = 69
        Height = 13
        Caption = 'Emiss'#227'o..........'
        FocusControl = db_dtemis
      end
      object Label5: TLabel
        Left = 6
        Top = 172
        Width = 57
        Height = 13
        Caption = 'Valor...........'
        FocusControl = db_valor
      end
      object Label9: TLabel
        Left = 6
        Top = 191
        Width = 62
        Height = 13
        Caption = 'Icms Retido..'
        FocusControl = db_icmsr
      end
      object Label10: TLabel
        Left = 417
        Top = 172
        Width = 75
        Height = 13
        Caption = 'Valor do Frete...'
        FocusControl = db_valfre
      end
      object Label14: TLabel
        Left = 5
        Top = 26
        Width = 60
        Height = 13
        Caption = 'Pedido.........'
        FocusControl = db_nped
      end
      object Label2: TLabel
        Left = 542
        Top = 221
        Width = 85
        Height = 13
        Caption = 'Nota(s) de Origem'
        FocusControl = db_nfacum
      end
      object Label15: TLabel
        Left = 277
        Top = 172
        Width = 55
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor NF:'
        FocusControl = db_totnf
      end
      object Label27: TLabel
        Left = 5
        Top = 43
        Width = 62
        Height = 13
        Caption = 'Esp'#233'cie........'
      end
      object Label33: TLabel
        Left = 417
        Top = 97
        Width = 70
        Height = 13
        Caption = 'Fantasia..........'
      end
      object Label34: TLabel
        Left = 127
        Top = 8
        Width = 45
        Height = 13
        Caption = 'Parcela...'
        FocusControl = db_numero
      end
      object Label18: TLabel
        Left = 277
        Top = 191
        Width = 55
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor do IP:'
        FocusControl = db_icmsr
      end
      object Label45: TLabel
        Left = 4
        Top = 61
        Width = 101
        Height = 13
        Caption = 'Forma de Pagamento'
      end
      object Label50: TLabel
        Left = 206
        Top = 3
        Width = 263
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Tipo do Documento'
        Color = 16744576
        FocusControl = db_numero
        ParentColor = False
      end
      object Label55: TLabel
        Left = 205
        Top = 45
        Width = 39
        Height = 13
        Caption = 'Parcela:'
      end
      object Label56: TLabel
        Left = 274
        Top = 45
        Width = 5
        Height = 13
        Caption = '/'
      end
      object Label57: TLabel
        Left = 6
        Top = 132
        Width = 59
        Height = 13
        Caption = 'Acessor.......'
        FocusControl = db_codven
      end
      object Label65: TLabel
        Left = -23
        Top = 151
        Width = 115
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Competencia Tipo:'
      end
      object DBText1: TDBText
        Left = 267
        Top = 151
        Width = 115
        Height = 13
        Alignment = taRightJustify
        DataField = 'competencia_obs'
        DataSource = Src_Dar
      end
      object lbl_competencia_barra: TLabel
        Left = 425
        Top = 151
        Width = 5
        Height = 13
        Caption = '/'
      end
      object Label66: TLabel
        Left = 148
        Top = 171
        Width = 57
        Height = 13
        Caption = 'Acrescimos:'
        FocusControl = DBE_CRVALOR_ACRES
      end
      object Label67: TLabel
        Left = 328
        Top = 43
        Width = 34
        Height = 13
        Caption = 'Chave:'
      end
      object DBText2: TDBText
        Left = 368
        Top = 43
        Width = 65
        Height = 17
        Alignment = taRightJustify
        DataField = 'CRCHAVE_ID'
        DataSource = Src_Dar
      end
      object Label68: TLabel
        Left = 434
        Top = 43
        Width = 5
        Height = 13
        Caption = '/'
      end
      object DBText3: TDBText
        Left = 440
        Top = 43
        Width = 27
        Height = 17
        DataField = 'CRCHAVE_ID_ANO'
        DataSource = Src_Dar
      end
      object db_numero: TDBEdit
        Left = 64
        Top = 5
        Width = 61
        Height = 19
        Hint = 'N'#250'mero do T'#237'tulo'
        Ctl3D = False
        DataField = 'CRNUMERO'
        DataSource = Src_Dar
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
      end
      object db_desd: TDBEdit
        Left = 168
        Top = 5
        Width = 30
        Height = 19
        Hint = 'Parcela/Desdobramento do T'#237'tulo'
        Ctl3D = False
        DataField = 'CRDESD'
        DataSource = Src_Dar
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object db_razaocli: TDBEdit
        Left = 123
        Top = 93
        Width = 291
        Height = 19
        TabStop = False
        Color = 16759260
        Ctl3D = False
        DataField = 'razaocli'
        DataSource = Src_Dar
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 12
      end
      object db_codcli: TDBEdit
        Left = 64
        Top = 93
        Width = 61
        Height = 19
        Hint = 'C'#243'digo do Cliente. '#13#10'Para consultar digite o'#13#10'Nome Desejado'
        Ctl3D = False
        DataField = 'CRCODCLI'
        DataSource = Src_Dar
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnExit = db_codcliExit
        OnKeyPress = db_codcliKeyPress
      end
      object db_codven: TDBEdit
        Left = 64
        Top = 111
        Width = 61
        Height = 19
        Hint = 'C'#243'digo do Vendedor'#13#10'Para consultar Digite'#13#10'o Nome do Mesmo'
        Ctl3D = False
        DataField = 'CRCODVEN'
        DataSource = Src_Dar
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        OnExit = db_codvenExit
        OnKeyPress = db_codvenKeyPress
      end
      object db_nomven: TDBEdit
        Left = 124
        Top = 111
        Width = 290
        Height = 19
        TabStop = False
        Color = 16759260
        Ctl3D = False
        DataField = 'nomven'
        DataSource = Src_Dar
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 15
      end
      object db_dtvcto: TDBEdit
        Left = 488
        Top = 131
        Width = 100
        Height = 19
        Hint = 'Data de Vencimento do titulo'
        Ctl3D = False
        DataField = 'CRDTVCTO'
        DataSource = Src_Dar
        MaxLength = 10
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
      end
      object db_dtemis: TDBEdit
        Left = 488
        Top = 113
        Width = 100
        Height = 19
        Hint = 'Data de Emiss'#227'o do T'#237'tulo'
        Ctl3D = False
        DataField = 'CRDTEMIS'
        DataSource = Src_Dar
        MaxLength = 10
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
        OnEnter = db_dtemisEnter
        OnExit = db_dtemisExit
      end
      object db_valor: TDBEdit
        Left = 64
        Top = 168
        Width = 80
        Height = 19
        Hint = 'Valor do Titulo'
        Ctl3D = False
        DataField = 'CRVALOR'
        DataSource = Src_Dar
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 24
        OnEnter = db_valorEnter
        OnExit = db_valorExit
        OnKeyPress = db_totnfKeyPress
      end
      object db_icmsr: TDBEdit
        Left = 64
        Top = 186
        Width = 80
        Height = 19
        Hint = 'Valor do Icms Substitui'#231#227'o Tributaria'#13#10'do t'#237'tulo'
        Ctl3D = False
        DataField = 'CRICMSR'
        DataSource = Src_Dar
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 28
      end
      object db_valfre: TDBEdit
        Left = 488
        Top = 170
        Width = 100
        Height = 19
        Hint = 'Valor do Frete'
        Ctl3D = False
        DataField = 'CRVALFRE'
        DataSource = Src_Dar
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 30
      end
      object db_nped: TDBEdit
        Left = 64
        Top = 23
        Width = 61
        Height = 19
        TabStop = False
        Color = 16759260
        Ctl3D = False
        DataField = 'CRNPED'
        DataSource = Src_Dar
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 2
      end
      object db_ordem: TDBEdit
        Left = 124
        Top = 23
        Width = 27
        Height = 19
        TabStop = False
        Color = 16759260
        Ctl3D = False
        DataField = 'CRORDEM'
        DataSource = Src_Dar
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object db_nfacum: TDBEdit
        Left = 540
        Top = 237
        Width = 239
        Height = 19
        Hint = 'N'#250'mero das Notas Fiscais de Origem'#13#10'no Caso de Acumuladas'
        Ctl3D = False
        DataField = 'CRNFACUM'
        DataSource = Src_Dar
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 34
      end
      object db_totnf: TDBEdit
        Left = 332
        Top = 168
        Width = 80
        Height = 19
        Hint = 'Total das Notas Fiscais do t'#237'tulo'
        Ctl3D = False
        DataField = 'CRTOTNF'
        DataSource = Src_Dar
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 26
        OnKeyPress = db_totnfKeyPress
      end
      object db_denom: TDBEdit
        Left = 488
        Top = 95
        Width = 277
        Height = 19
        TabStop = False
        Color = 16759260
        Ctl3D = False
        DataField = 'denomcli'
        DataSource = Src_Dar
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 13
      end
      object db_especie: TDBEdit
        Left = 64
        Top = 41
        Width = 61
        Height = 19
        Hint = 'Esp'#233'cie do Documento'
        Ctl3D = False
        DataField = 'CRESPECIE'
        DataSource = Src_Dar
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object dbcb_aceite: TDBCheckBox
        Left = 147
        Top = 45
        Width = 58
        Height = 17
        Hint = 'Se Marcado '#233' '#13#10'pq houve aceite'#13#10'Caso Contr'#225'rio n'#227'o'
        Caption = 'Aceite'
        DataField = 'CRACEITE'
        DataSource = Src_Dar
        TabOrder = 6
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object gb_chd: TGroupBox
        Left = 487
        Top = 0
        Width = 276
        Height = 94
        Caption = 'Sobre cheque Devolvido:'
        TabOrder = 36
        object Label37: TLabel
          Left = 155
          Top = 16
          Width = 34
          Height = 13
          Caption = 'Banco:'
        end
        object Label38: TLabel
          Left = 22
          Top = 35
          Width = 42
          Height = 13
          Caption = 'Ag'#234'ncia:'
        end
        object Label39: TLabel
          Left = 157
          Top = 37
          Width = 31
          Height = 13
          Caption = 'Conta:'
        end
        object Label40: TLabel
          Left = 8
          Top = 17
          Width = 57
          Height = 13
          Caption = 'No.Cheque:'
        end
        object Label51: TLabel
          Left = 7
          Top = 56
          Width = 263
          Height = 13
          Alignment = taCenter
          AutoSize = False
          Caption = 'Nome do Emitente'
          Color = 16744576
          FocusControl = db_numero
          ParentColor = False
        end
        object db_chd_banco: TDBEdit
          Left = 195
          Top = 16
          Width = 67
          Height = 19
          Hint = 'se for Cheque devolvido'#13#10'C'#243'digo do Banco do Mesmo'
          Ctl3D = False
          DataField = 'CRCHD_BANCO'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
        end
        object db_chd_agencia: TDBEdit
          Left = 67
          Top = 34
          Width = 68
          Height = 19
          Hint = 'Se cheque devolvido'#13#10'Ag'#234'ncia do Mesmo'
          Ctl3D = False
          DataField = 'CRCHD_AGENCIA'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object db_chd_cc: TDBEdit
          Left = 195
          Top = 34
          Width = 67
          Height = 19
          Hint = 'Se cheque devolvido'#13#10'Conta Corrente do Mesmo'
          Ctl3D = False
          DataField = 'CRCHD_CC'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object db_chd_numero: TDBEdit
          Left = 67
          Top = 16
          Width = 68
          Height = 19
          Hint = 'Se cheque devolvido'#13#10'N'#250'mero do Mesmo'
          Ctl3D = False
          DataField = 'CRCHD_NUMERO'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object db_chd_emitente: TDBEdit
          Left = 8
          Top = 70
          Width = 262
          Height = 19
          Hint = 'Se cheque devolvido'#13#10'nome do emitente do Mesmo'
          Ctl3D = False
          DataField = 'CRCHD_EMITENTE'
          DataSource = DM1.Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
      end
      object db_totipi: TDBEdit
        Left = 333
        Top = 186
        Width = 80
        Height = 19
        Hint = 'Valor do IPI'
        Ctl3D = False
        DataField = 'CRTOTIPI'
        DataSource = Src_Dar
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 29
      end
      object gb_multa: TGroupBox
        Left = 1
        Top = 255
        Width = 527
        Height = 36
        Caption = 'Juros/multas:'
        TabOrder = 33
        object Label16: TLabel
          Left = 5
          Top = 14
          Width = 108
          Height = 13
          Caption = 'Juros por dia de Atraso'
        end
        object Label19: TLabel
          Left = 184
          Top = 15
          Width = 91
          Height = 13
          Caption = 'Valor Mora/Multa...'
        end
        object Label20: TLabel
          Left = 332
          Top = 15
          Width = 24
          Height = 13
          Caption = 'Ap'#243's'
        end
        object Label21: TLabel
          Left = 419
          Top = 14
          Width = 98
          Height = 13
          Caption = 'dia(s) do vencimento'
        end
        object db_jurd: TDBEdit
          Left = 117
          Top = 12
          Width = 67
          Height = 19
          Hint = 'Juros por dia de Atraso'
          Ctl3D = False
          DataField = 'CRJURD'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnKeyPress = db_totnfKeyPress
        end
        object db_multa: TDBEdit
          Left = 279
          Top = 11
          Width = 50
          Height = 19
          Hint = 'Valor da Multa por'#13#10'Atraso no Pagamento'
          Ctl3D = False
          DataField = 'CRMULTA'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnKeyPress = db_totnfKeyPress
        end
        object db_qtddm: TDBEdit
          Left = 362
          Top = 11
          Width = 50
          Height = 19
          Hint = 'Aplicar a Multa ap'#243's'#13#10'Quantos dias de '#13#10'Vencido'
          Ctl3D = False
          DataField = 'CRQTDDM'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnKeyPress = db_totnfKeyPress
        end
      end
      object gb_descfin: TGroupBox
        Left = 1
        Top = 217
        Width = 297
        Height = 39
        Caption = 'Desconto Financeiro - Condicional'
        TabOrder = 31
        object Label12: TLabel
          Left = 3
          Top = 16
          Width = 70
          Height = 13
          Caption = 'Desconto de...'
        end
        object Label13: TLabel
          Left = 131
          Top = 17
          Width = 52
          Height = 13
          Caption = 'p/Pgto.At'#233
        end
        object db_descf: TDBEdit
          Left = 68
          Top = 14
          Width = 58
          Height = 19
          Hint = 'Valor do Desconto financeiro'
          Ctl3D = False
          DataField = 'CRDESCF'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnKeyPress = db_totnfKeyPress
        end
        object db_dtdescf: TDBDateEdit
          Left = 188
          Top = 12
          Width = 100
          Height = 21
          DataField = 'CRDTDESCF'
          DataSource = Src_Dar
          Ctl3D = False
          DialogTitle = 'Digite  ou Selecione a Data'
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 1
        end
      end
      object gb_descdant: TGroupBox
        Left = 313
        Top = 218
        Width = 215
        Height = 38
        Caption = 'Desconto Antecipa'#231#227'o'
        TabOrder = 32
        object Label24: TLabel
          Left = 3
          Top = 16
          Width = 116
          Height = 13
          Caption = 'Por dia de antecipa'#231#227'o..'
        end
        object db_descd: TDBEdit
          Left = 122
          Top = 13
          Width = 78
          Height = 19
          Hint = 'Desconto por dia de Antecipa'#231#227'o'
          Ctl3D = False
          DataField = 'CRDESCD'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
      object dbcb_emiblq: TDBCheckBox
        Left = 601
        Top = 149
        Width = 138
        Height = 17
        Hint = 'Se Marcado ja Emitiu Boleto Bancario'
        TabStop = False
        Caption = 'Emitiu Boleto Banc'#225'rio'
        DataField = 'CREMIBLQ'
        DataSource = Src_Dar
        TabOrder = 23
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object dbcb_emidup: TDBCheckBox
        Left = 602
        Top = 166
        Width = 138
        Height = 17
        Hint = 'Se Marcado ja Emitiu Duplicata'
        TabStop = False
        Caption = 'Emitiu Duplicata'
        DataField = 'CREMIDUP'
        DataSource = Src_Dar
        TabOrder = 27
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object dbrg_status: TDBRadioGroup
        Left = 602
        Top = 181
        Width = 172
        Height = 40
        Hint = 'Situa'#231#227'o do titulo'
        Caption = 'Situa'#231'ao do Titulo'
        Columns = 2
        Ctl3D = False
        DataField = 'CRSTATUS'
        DataSource = DM1.Src_Dar
        Enabled = False
        Items.Strings = (
          'Em Aberto'
          'Pago Parcial'
          'Pago Total')
        ParentCtl3D = False
        ParentShowHint = False
        ReadOnly = True
        ShowHint = True
        TabOrder = 35
        Values.Strings = (
          '0'
          '1'
          '2')
      end
      object db_codfpgto: TDBEdit
        Left = 5
        Top = 75
        Width = 61
        Height = 19
        Hint = 'C'#243'digo da Forma de Pagamentos. '
        Ctl3D = False
        DataField = 'CRCODFPGTO'
        DataSource = Src_Dar
        Enabled = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnExit = db_codfpgtoExit
        OnKeyPress = db_codfpgtoKeyPress
      end
      object db_nomfpgto: TDBEdit
        Left = 65
        Top = 75
        Width = 137
        Height = 19
        TabStop = False
        Color = 16759260
        Ctl3D = False
        DataField = 'CRNOMFPGTO'
        DataSource = Src_Dar
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 10
      end
      object DBCB_EXTRA: TDBCheckBox
        Left = 152
        Top = 24
        Width = 49
        Height = 17
        Hint = 'Se Marcado '#233' '#13#10'pq houve aceite'#13#10'Caso Contr'#225'rio n'#227'o'
        Caption = 'Extra'
        DataField = 'CRCODEMP'
        DataSource = Src_Dar
        TabOrder = 4
        ValueChecked = '101'
        ValueUnchecked = '1'
      end
      object DBE_numparc: TDBEdit
        Left = 246
        Top = 42
        Width = 26
        Height = 19
        Hint = 'Numero sequencial  desta parcela'
        Ctl3D = False
        DataField = 'CRNUMPARC'
        DataSource = Src_Dar
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnExit = DBE_numparcExit
      end
      object DBE_CRQTDPARC: TDBEdit
        Left = 282
        Top = 42
        Width = 26
        Height = 19
        Hint = 'Quantidade de Parcelas'
        Ctl3D = False
        DataField = 'CRQTDPARC'
        DataSource = Src_Dar
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnExit = DBE_CRQTDPARCExit
      end
      object db_codacess: TDBEdit
        Left = 64
        Top = 129
        Width = 61
        Height = 19
        Ctl3D = False
        DataField = 'CRCODASSE'
        DataSource = Src_Dar
        ParentCtl3D = False
        TabOrder = 17
        OnExit = db_codacessExit
        OnKeyPress = db_codacessKeyPress
      end
      object db_nomeacess: TDBEdit
        Left = 124
        Top = 129
        Width = 289
        Height = 19
        TabStop = False
        Color = 16759260
        Ctl3D = False
        DataField = 'NOMEACESS'
        DataSource = Src_Dar
        ParentCtl3D = False
        TabOrder = 18
      end
      object gb_obs: TGroupBox
        Left = 0
        Top = 295
        Width = 774
        Height = 70
        Align = alBottom
        Caption = 'Observa'#231#245'es:'
        TabOrder = 37
        object DBMEMO_CAOBS: TDBMemo
          Left = 2
          Top = 15
          Width = 770
          Height = 53
          Align = alClient
          Ctl3D = False
          DataField = 'CROBS'
          DataSource = Src_CR_Obs
          ParentCtl3D = False
          TabOrder = 0
          OnChange = DBMEMO_CAOBSChange
        end
      end
      object DB_CACOMPETENCIA_TIPO: TRxDBComboBox
        Left = 97
        Top = 147
        Width = 169
        Height = 21
        Style = csDropDownList
        Ctl3D = False
        DataField = 'CRCOMPETENCIA_TIPO'
        DataSource = Src_Dar
        EnableValues = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        Items.Strings = (
          '0-Mensal'
          '1-Anual'
          '2-Bimestral'
          '3-trimestral'
          '4-semestral')
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 20
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6')
        OnExit = DB_CACOMPETENCIA_TIPOExit
      end
      object edt_competencia_mes: TEdit
        Left = 387
        Top = 149
        Width = 38
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 21
        Text = 'edt_competencia_mes'
        OnExit = edt_competencia_mesExit
      end
      object edt_competencia_ano: TEdit
        Left = 435
        Top = 149
        Width = 38
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 22
        Text = 'edt_competencia_mes'
        OnExit = edt_competencia_anoExit
      end
      object DBE_CRVALOR_ACRES: TDBEdit
        Left = 201
        Top = 167
        Width = 80
        Height = 19
        Hint = 'Valor do Titulo'
        Ctl3D = False
        DataField = 'CRVALOR_ACRES'
        DataSource = Src_Dar
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 25
        OnExit = db_valorExit
        OnKeyPress = db_totnfKeyPress
      end
      object RxDBCB_dup: TRxDBComboBox
        Left = 206
        Top = 16
        Width = 265
        Height = 21
        Style = csDropDownList
        Color = 13565951
        Ctl3D = False
        DataField = 'CRDUP'
        DataSource = Src_Dar
        EnableValues = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ItemHeight = 13
        Items.Strings = (
          'Normal'
          'Cheque Devolvido'
          'Cheque S/fundos'
          'Juros'
          'Nota Promissoria'
          'Nota de Credito'
          'Cheques Pre-Datado'
          'Requisi'#231#227'o'
          'Financeira 1'
          'Financeira 2'
          'Financeira 3'
          'Financeira 4'
          'Financeira 5'
          'Financeira 6'
          'TV-Titulos Venc.'
          'Outros')
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 38
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10'
          '11'
          '12'
          '13'
          '14'
          '15'
          '16'
          '17'
          '18')
        OnExit = db_codcliExit
      end
    end
    object ts_outras: TTabSheet [1]
      Caption = 'Outras Informa'#231#245'es'
      Enabled = False
      ImageIndex = 1
      object GroupBox3: TGroupBox
        Left = 0
        Top = 0
        Width = 774
        Height = 106
        Align = alTop
        Caption = 'Comiss'#245'es:'
        TabOrder = 0
        object StaticText1: TStaticText
          Left = 4
          Top = 15
          Width = 110
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Vendedor 01'
          TabOrder = 0
        end
        object StaticText2: TStaticText
          Left = 392
          Top = 15
          Width = 110
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Supervisor'
          TabOrder = 1
        end
        object StaticText3: TStaticText
          Left = 525
          Top = 15
          Width = 110
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Televendas'
          TabOrder = 2
        end
        object StaticText4: TStaticText
          Left = 651
          Top = 15
          Width = 110
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Assessor'
          TabOrder = 3
        end
        object StaticText5: TStaticText
          Left = 129
          Top = 15
          Width = 110
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Vendedor 02'
          TabOrder = 4
        end
        object StaticText6: TStaticText
          Left = 261
          Top = 15
          Width = 110
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = 'Vendedor 03'
          TabOrder = 5
        end
        object DBEdit40: TDBEdit
          Left = 4
          Top = 33
          Width = 110
          Height = 21
          TabStop = False
          Color = 16759260
          DataField = 'CRCOMVEN'
          DataSource = Src_Dar
          TabOrder = 6
        end
        object DBEdit41: TDBEdit
          Left = 129
          Top = 33
          Width = 110
          Height = 21
          TabStop = False
          Color = 16759260
          DataField = 'CRCOMV02'
          DataSource = Src_Dar
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit42: TDBEdit
          Left = 260
          Top = 33
          Width = 110
          Height = 21
          TabStop = False
          Color = 16759260
          DataField = 'CRCOMV03'
          DataSource = Src_Dar
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit43: TDBEdit
          Left = 392
          Top = 33
          Width = 110
          Height = 21
          TabStop = False
          Color = 16759260
          DataField = 'CRCOMSUP'
          DataSource = Src_Dar
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit44: TDBEdit
          Left = 525
          Top = 34
          Width = 110
          Height = 21
          TabStop = False
          Color = 16759260
          DataField = 'CRCOMTEL'
          DataSource = Src_Dar
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit45: TDBEdit
          Left = 651
          Top = 33
          Width = 110
          Height = 21
          TabStop = False
          Color = 16759260
          DataField = 'CRCOMASSE'
          DataSource = Src_Dar
          ReadOnly = True
          TabOrder = 11
        end
        object DBEdit4: TDBEdit
          Left = 4
          Top = 57
          Width = 110
          Height = 21
          TabStop = False
          Color = 16759260
          DataField = 'CRLOTCV'
          DataSource = Src_Dar
          TabOrder = 12
        end
        object DBEdit5: TDBEdit
          Left = 128
          Top = 57
          Width = 110
          Height = 21
          TabStop = False
          Color = 16759260
          DataField = 'CRLOTCV02'
          DataSource = Src_Dar
          TabOrder = 13
        end
        object DBEdit6: TDBEdit
          Left = 260
          Top = 57
          Width = 110
          Height = 21
          TabStop = False
          Color = 16759260
          DataField = 'CRLOTCV03'
          DataSource = Src_Dar
          TabOrder = 14
        end
        object DBEdit7: TDBEdit
          Left = 391
          Top = 57
          Width = 110
          Height = 21
          TabStop = False
          Color = 16759260
          DataField = 'CRLOTCS'
          DataSource = Src_Dar
          TabOrder = 15
        end
        object DBEdit8: TDBEdit
          Left = 525
          Top = 57
          Width = 110
          Height = 21
          TabStop = False
          Color = 16759260
          DataField = 'CRLOTCT'
          DataSource = Src_Dar
          TabOrder = 16
        end
        object DBEdit10: TDBEdit
          Left = 649
          Top = 55
          Width = 110
          Height = 21
          TabStop = False
          Color = 16759260
          DataField = 'CRLOTCASSE'
          DataSource = Src_Dar
          TabOrder = 17
        end
      end
      object gb_pag: TGroupBox
        Left = 428
        Top = 164
        Width = 351
        Height = 150
        Caption = 'Sobre Pagamento:'
        TabOrder = 1
        object Label32: TLabel
          Left = 12
          Top = 107
          Width = 76
          Height = 13
          Caption = 'Banco...............'
        end
        object Label69: TLabel
          Left = 11
          Top = 125
          Width = 81
          Height = 13
          Caption = 'Tarifa Bancaria...'
        end
        object StaticText7: TStaticText
          Left = 10
          Top = 15
          Width = 83
          Height = 16
          AutoSize = False
          Caption = 'Data da Baixa....'
          TabOrder = 1
        end
        object StaticText9: TStaticText
          Left = 10
          Top = 53
          Width = 83
          Height = 16
          AutoSize = False
          Caption = 'Lote da Baixa.....'
          TabOrder = 5
          Visible = False
        end
        object db_lote: TDBEdit
          Left = 91
          Top = 50
          Width = 80
          Height = 19
          TabStop = False
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'CRLOTE'
          DataSource = Src_Dar
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
          Visible = False
        end
        object db_dtbx: TDBEdit
          Left = 91
          Top = 14
          Width = 80
          Height = 19
          TabStop = False
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'CRDTBX'
          DataSource = DM1.Src_Dar
          MaxLength = 10
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          Visible = False
        end
        object StaticText8: TStaticText
          Left = 10
          Top = 34
          Width = 83
          Height = 16
          AutoSize = False
          Caption = 'Data de Pgto......'
          TabOrder = 2
        end
        object db_dtpag: TDBEdit
          Left = 91
          Top = 32
          Width = 80
          Height = 19
          TabStop = False
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'CRDTPAG'
          DataSource = DM1.Src_Dar
          MaxLength = 10
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
          Visible = False
        end
        object StaticText10: TStaticText
          Left = 10
          Top = 71
          Width = 83
          Height = 16
          AutoSize = False
          Caption = 'N'#250'mero NR........'
          TabOrder = 6
        end
        object db_nr: TDBEdit
          Left = 91
          Top = 68
          Width = 80
          Height = 19
          TabStop = False
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'CRNR'
          DataSource = Src_Dar
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 7
        end
        object StaticText11: TStaticText
          Left = 10
          Top = 89
          Width = 83
          Height = 16
          AutoSize = False
          Caption = 'Devolu'#231#227'o.........'
          TabOrder = 8
        end
        object db_devol: TDBEdit
          Left = 91
          Top = 86
          Width = 80
          Height = 19
          TabStop = False
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'CRDEVOL'
          DataSource = Src_Dar
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 9
        end
        object StaticText12: TStaticText
          Left = 182
          Top = 16
          Width = 83
          Height = 16
          AutoSize = False
          Caption = 'Desconto............'
          TabOrder = 10
        end
        object db_desc: TDBEdit
          Left = 263
          Top = 13
          Width = 80
          Height = 19
          TabStop = False
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'CRDESC'
          DataSource = Src_Dar
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 11
        end
        object StaticText13: TStaticText
          Left = 182
          Top = 34
          Width = 83
          Height = 16
          AutoSize = False
          Caption = 'Juros..................'
          TabOrder = 12
        end
        object db_juros: TDBEdit
          Left = 263
          Top = 31
          Width = 80
          Height = 19
          TabStop = False
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'CRJUROS'
          DataSource = Src_Dar
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 13
        end
        object StaticText14: TStaticText
          Left = 182
          Top = 52
          Width = 83
          Height = 16
          AutoSize = False
          Caption = 'Valor Pago.........'
          TabOrder = 14
        end
        object db_valpag: TDBEdit
          Left = 263
          Top = 49
          Width = 80
          Height = 19
          TabStop = False
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'CRVALPAG'
          DataSource = Src_Dar
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 15
        end
        object StaticText15: TStaticText
          Left = 182
          Top = 70
          Width = 83
          Height = 16
          AutoSize = False
          Caption = 'Chave Caixa......'
          TabOrder = 16
        end
        object db_codldr: TDBEdit
          Left = 263
          Top = 67
          Width = 80
          Height = 19
          TabStop = False
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'CRCODLDR'
          DataSource = Src_Dar
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 17
        end
        object StaticText16: TStaticText
          Left = 182
          Top = 87
          Width = 83
          Height = 16
          AutoSize = False
          Caption = 'Usu'#225'rio................'
          TabOrder = 18
        end
        object db_usrbx: TDBEdit
          Left = 263
          Top = 84
          Width = 80
          Height = 19
          TabStop = False
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'CRUSRBX'
          DataSource = Src_Dar
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 19
        end
        object fp_codcaixa: TEdit
          Left = 91
          Top = 104
          Width = 43
          Height = 19
          Color = clMoneyGreen
          Ctl3D = False
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 20
        end
        object fp_desc: TEdit
          Left = 133
          Top = 104
          Width = 121
          Height = 19
          Color = clMoneyGreen
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 21
        end
        object dbc_dtbx: TDBEdit
          Left = 91
          Top = 14
          Width = 80
          Height = 19
          TabStop = False
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'dtbx'
          DataSource = Src_Dar
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 22
        end
        object dbc_dtpag: TDBEdit
          Left = 91
          Top = 32
          Width = 80
          Height = 19
          TabStop = False
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'dtpag'
          DataSource = Src_Dar
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 23
        end
        object DBCheckBox1: TDBCheckBox
          Left = 260
          Top = 107
          Width = 108
          Height = 14
          Hint = 'se Marcado '#233' pq Foi'#13#10' Recebido pelo SGE_FRENTE'
          Caption = 'Frente'
          DataField = 'CRRECFRENTE'
          DataSource = DM1.Src_Dar
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 24
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object DBEdit16: TDBEdit
          Left = 91
          Top = 122
          Width = 100
          Height = 19
          Hint = 'Valor da Tarifa Bancaria'#13#10'que o cliente Paga'
          Color = clMoneyGreen
          Ctl3D = False
          DataField = 'CRTARBAN'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 25
          OnKeyPress = db_totnfKeyPress
        end
      end
      object GroupBox4: TGroupBox
        Left = 6
        Top = 161
        Width = 207
        Height = 86
        Caption = 'Situa'#231#227'o SPC/SERASA:'
        TabOrder = 2
        object Label22: TLabel
          Left = 10
          Top = 18
          Width = 124
          Height = 13
          Caption = 'Pendente at'#233' (SPC)..........'
        end
        object Label23: TLabel
          Left = 9
          Top = 36
          Width = 123
          Height = 13
          Caption = 'Negativo em (SPC)...........'
        end
        object Label28: TLabel
          Left = 9
          Top = 54
          Width = 121
          Height = 13
          Caption = 'Negativo em (SERASA)...'
        end
        object db_spc_dtpen: TDBEdit
          Left = 129
          Top = 14
          Width = 73
          Height = 19
          Hint = 'Data Negativa'#231#227'o'
          Ctl3D = False
          DataField = 'spc_dtpen'
          DataSource = DM1.Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          Visible = False
        end
        object db_spc_dtneg: TDBEdit
          Left = 129
          Top = 32
          Width = 73
          Height = 19
          Hint = 'Data Negativa'#231#227'o'
          Ctl3D = False
          DataField = 'CRSPC_DTNEG'
          DataSource = DM1.Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          Visible = False
        end
        object db_serasa_dtneg: TDBEdit
          Left = 129
          Top = 50
          Width = 73
          Height = 19
          Hint = 'Data Negativa'#231#227'o'
          Ctl3D = False
          DataField = 'CRSERASA_DTNEG'
          DataSource = DM1.Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          Visible = False
        end
        object dbc_spc_dtpen: TDBEdit
          Left = 129
          Top = 14
          Width = 73
          Height = 19
          Hint = 'Data Negativa'#231#227'o'
          Ctl3D = False
          DataField = 'SPC_DTPEN'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object dbc_spc_dtneg: TDBEdit
          Left = 129
          Top = 32
          Width = 73
          Height = 19
          Hint = 'Data Negativa'#231#227'o'
          Ctl3D = False
          DataField = 'spc_dtneg'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object dbc_serasa_dtneg: TDBEdit
          Left = 129
          Top = 50
          Width = 73
          Height = 19
          Hint = 'Data Negativa'#231#227'o'
          Ctl3D = False
          DataField = 'serasa_dtneg'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
      end
      object gb_caucao: TGroupBox
        Left = 215
        Top = 161
        Width = 209
        Height = 86
        Caption = 'Cau'#231#227'o do T'#237'tulo:'
        TabOrder = 3
        object Label35: TLabel
          Left = 8
          Top = 34
          Width = 124
          Height = 13
          Caption = 'Lote Caucao....................:'
        end
        object db_bcocaucao: TDBEdit
          Left = 128
          Top = 31
          Width = 73
          Height = 19
          Hint = 'C'#243'digo do Financeira que foi Caucionado'
          Ctl3D = False
          DataField = 'CRLOTE_CAUCAO'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
        end
      end
      object StaticText20: TStaticText
        Left = 8
        Top = 255
        Width = 83
        Height = 16
        AutoSize = False
        Caption = 'Data Inc/alt:'
        TabOrder = 4
      end
      object DBEdit1: TDBEdit
        Left = 74
        Top = 253
        Width = 77
        Height = 19
        TabStop = False
        Color = clMoneyGreen
        Ctl3D = False
        DataField = 'CRDTALT'
        DataSource = Src_Dar
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 5
      end
      object StaticText21: TStaticText
        Left = 158
        Top = 256
        Width = 34
        Height = 16
        AutoSize = False
        Caption = 'Hora:'
        TabOrder = 6
      end
      object DBEdit2: TDBEdit
        Left = 188
        Top = 253
        Width = 80
        Height = 19
        TabStop = False
        Color = clMoneyGreen
        Ctl3D = False
        DataField = 'CRHRALT'
        DataSource = Src_Dar
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit3: TDBEdit
        Left = 325
        Top = 254
        Width = 76
        Height = 19
        TabStop = False
        Color = clMoneyGreen
        Ctl3D = False
        DataField = 'CRCODUSR'
        DataSource = Src_Dar
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 8
      end
      object StaticText22: TStaticText
        Left = 273
        Top = 254
        Width = 49
        Height = 16
        AutoSize = False
        Caption = 'Usuario:'
        TabOrder = 9
      end
    end
    object tsCobBancaria: TTabSheet [2]
      Caption = 'Cobran'#231'a Bancaria/Fluxo Caixa'
      Enabled = False
      ImageIndex = 4
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 774
        Height = 95
        Align = alTop
        Caption = 'Instru'#231#245'es Boleto Banc'#225'rio:'
        TabOrder = 0
        object DBEdit36: TDBEdit
          Left = 4
          Top = 16
          Width = 637
          Height = 19
          Hint = 'Instru'#231#245'es bancaria Linha 01'
          Ctl3D = False
          DataField = 'CRINST01'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
        object DBEdit37: TDBEdit
          Left = 4
          Top = 34
          Width = 637
          Height = 19
          Hint = 'Instru'#231#245'es bancaria Linha 02'
          Ctl3D = False
          DataField = 'CRINST02'
          DataSource = Src_Dar
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBEdit38: TDBEdit
          Left = 4
          Top = 52
          Width = 637
          Height = 19
          Hint = 'Instru'#231#245'es bancaria Linha 03'
          Ctl3D = False
          DataField = 'CRINST03'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object DBEdit39: TDBEdit
          Left = 4
          Top = 70
          Width = 637
          Height = 19
          Hint = 'Instru'#231#245'es bancaria Linha 04'
          Ctl3D = False
          DataField = 'CRINST04'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
      end
      object gb_dadoscob: TGroupBox
        Left = 0
        Top = 95
        Width = 774
        Height = 94
        Align = alTop
        Caption = 'Dados Sobre Cobran'#231'a'
        TabOrder = 1
        object Label8: TLabel
          Left = 9
          Top = 18
          Width = 76
          Height = 13
          Caption = 'Banco...............'
          Color = clBtnFace
          ParentColor = False
        end
        object Label11: TLabel
          Left = 9
          Top = 37
          Width = 79
          Height = 13
          Caption = 'Nosso N'#250'mero...'
          FocusControl = db_nosnum
        end
        object Label30: TLabel
          Left = 250
          Top = 36
          Width = 16
          Height = 13
          Caption = 'Dig'
          FocusControl = db_nosnum
        end
        object Label25: TLabel
          Left = 9
          Top = 56
          Width = 77
          Height = 13
          Caption = 'Linha digit'#225'vel...'
          FocusControl = db_nosnum
        end
        object Label26: TLabel
          Left = 8
          Top = 74
          Width = 78
          Height = 13
          Caption = 'C'#243'digo Barras....'
          FocusControl = db_nosnum
        end
        object Label29: TLabel
          Left = 541
          Top = 11
          Width = 126
          Height = 13
          Caption = 'Tarifa Paga Pelo Cliente....'
          Color = clBtnFace
          ParentColor = False
        end
        object Label31: TLabel
          Left = 543
          Top = 29
          Width = 123
          Height = 13
          Caption = 'Custo Banc'#225'rio Total........'
          Color = clBtnFace
          ParentColor = False
        end
        object Label46: TLabel
          Left = 519
          Top = 61
          Width = 72
          Height = 13
          Caption = 'Tarifa Protesto:'
          Color = clBtnFace
          ParentColor = False
        end
        object Label47: TLabel
          Left = 519
          Top = 79
          Width = 72
          Height = 13
          Caption = 'Custa Protesto:'
          Color = clBtnFace
          ParentColor = False
        end
        object Label48: TLabel
          Left = 668
          Top = 60
          Width = 14
          Height = 13
          Caption = 'em'
          Color = clBtnFace
          ParentColor = False
        end
        object Label49: TLabel
          Left = 668
          Top = 79
          Width = 14
          Height = 13
          Caption = 'em'
          Color = clBtnFace
          ParentColor = False
        end
        object Label52: TLabel
          Left = 329
          Top = 36
          Width = 39
          Height = 13
          Caption = 'Carteira:'
          FocusControl = db_nosnum
        end
        object db_codbco: TDBEdit
          Left = 86
          Top = 15
          Width = 60
          Height = 19
          Hint = 
            'Codigo do Banco '#13#10'para Recebimento'#13#10'Para consultar digite o '#13#10'No' +
            'me do Mesmo'
          Ctl3D = False
          DataField = 'CRCODBCO'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = db_codbcoExit
          OnKeyPress = db_codbcoKeyPress
        end
        object db_bco: TDBEdit
          Left = 145
          Top = 15
          Width = 260
          Height = 19
          Ctl3D = False
          DataField = 'nombco'
          DataSource = Src_Dar
          Enabled = False
          ParentColor = True
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object db_nosnum: TDBEdit
          Left = 86
          Top = 33
          Width = 155
          Height = 19
          Hint = 'Nosso N'#250'mero Sem o D'#237'gito'
          Ctl3D = False
          DataField = 'CRNOSNUM'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object db_dnosnum: TDBEdit
          Left = 281
          Top = 33
          Width = 23
          Height = 19
          Hint = 'Digito do Nosso N'#250'mero'
          Ctl3D = False
          DataField = 'CRDNOSNUM'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object db_coddig: TDBEdit
          Left = 86
          Top = 51
          Width = 319
          Height = 19
          Hint = 'Linha Digitavel'#13#10'(Boleto Banc'#225'rio)'
          Ctl3D = False
          DataField = 'CRCODDIG'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object db_codbar: TDBEdit
          Left = 86
          Top = 69
          Width = 319
          Height = 19
          Hint = 'N'#250'mero que Representam'#13#10'o C'#243'digo de barras do Boleto'
          Ctl3D = False
          DataField = 'CRCODBAR'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object dbrg_tdb: TDBRadioGroup
          Left = 408
          Top = 10
          Width = 105
          Height = 62
          Hint = 'Tipo da Cobran'#231'a'#13#10'do Titulo'
          Caption = 'Tipo cobran'#231'a'
          DataField = 'CRTCB'
          DataSource = Src_Dar
          Items.Strings = (
            'Carteira'
            'Banco'
            'Cartorio'
            'Juridica')
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          Values.Strings = (
            '0'
            '1'
            '2'
            '3')
        end
        object dbcb_tipcob: TDBCheckBox
          Left = 409
          Top = 74
          Width = 108
          Height = 14
          Hint = 'se Marcado '#233' '#13#10'pq o T'#237'tulo foi '#13#10'descontado'
          Caption = 'T'#237'tulo Descontado'
          DataField = 'CRTIPCOB'
          DataSource = Src_Dar
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
        object db_tarban: TDBEdit
          Left = 664
          Top = 8
          Width = 100
          Height = 19
          Hint = 'Valor da Tarifa Bancaria'#13#10'que o cliente Paga'
          Ctl3D = False
          DataField = 'CRTARBAN'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 9
          OnKeyPress = db_totnfKeyPress
        end
        object db_cusbco: TDBEdit
          Left = 664
          Top = 26
          Width = 100
          Height = 19
          Hint = 'Custo da Cobran'#231'a Bancaria'#13#10'Total'
          Ctl3D = False
          DataField = 'CRCUSBCO'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnKeyPress = db_totnfKeyPress
        end
        object dbe_tarprot: TDBEdit
          Left = 595
          Top = 57
          Width = 68
          Height = 19
          Hint = 'Custo da Cobran'#231'a Bancaria'#13#10'Total'
          Ctl3D = False
          DataField = 'CRTARPROT'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
          OnKeyPress = db_totnfKeyPress
        end
        object DBE_tarprot_data: TDBEdit
          Left = 689
          Top = 57
          Width = 75
          Height = 19
          Hint = 'Data de Vencimento do titulo'
          Ctl3D = False
          DataField = 'CRTARPROT_DATA'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 13
        end
        object DBE_cusprot: TDBEdit
          Left = 595
          Top = 75
          Width = 68
          Height = 19
          Hint = 'Custo da Cobran'#231'a Bancaria'#13#10'Total'
          Ctl3D = False
          DataField = 'CRCUSPROT'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 14
          OnKeyPress = db_totnfKeyPress
        end
        object DBE_cusprot_data: TDBEdit
          Left = 689
          Top = 75
          Width = 75
          Height = 19
          Hint = 'Data de Vencimento do titulo'
          Ctl3D = False
          DataField = 'CRCUSPROT_DATA'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 15
        end
        object DBE_codcar: TDBEdit
          Left = 377
          Top = 33
          Width = 28
          Height = 19
          Hint = 'Digito o C'#243'digo da Carteira p/cobranca'
          Ctl3D = False
          DataField = 'CRCODCAR'
          DataSource = Src_Dar
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object DBCB_TITPROT: TDBCheckBox
          Left = 545
          Top = 44
          Width = 108
          Height = 14
          Hint = 'se Marcado '#233' '#13#10'pq o T'#237'tulo foi '#13#10'Protestado'
          Caption = 'T'#237'tulo Protestado'
          DataField = 'CRTITPROT'
          DataSource = Src_Dar
          ParentShowHint = False
          ShowHint = True
          TabOrder = 11
          ValueChecked = '1'
          ValueUnchecked = '0'
        end
      end
      object GroupBox10: TGroupBox
        Left = 0
        Top = 189
        Width = 774
        Height = 105
        Align = alTop
        Caption = 'Dados Padr'#227'o Para Lan'#231'amento do Fluxo de Caixa:'
        TabOrder = 2
        object Label41: TLabel
          Left = 17
          Top = 60
          Width = 79
          Height = 13
          Caption = 'Centro de Custo:'
        end
        object Label42: TLabel
          Left = 27
          Top = 39
          Width = 70
          Height = 13
          Caption = 'Departamento:'
        end
        object Label43: TLabel
          Left = 13
          Top = 81
          Width = 82
          Height = 13
          Caption = 'Desc.movimento:'
        end
        object Label44: TLabel
          Left = 10
          Top = 19
          Width = 85
          Height = 13
          Caption = 'C'#243'digo do Banco:'
          FocusControl = DBE_CodCta
        end
        object lbl_obs: TLabel
          Left = 539
          Top = 27
          Width = 74
          Height = 47
          Alignment = taCenter
          AutoSize = False
          Caption = '[SHIFT+TAB] Para Campo Anterior'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16711808
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
          WordWrap = True
        end
        object DBE_CODDEP: TDBEdit
          Left = 116
          Top = 36
          Width = 68
          Height = 21
          Ctl3D = True
          DataField = 'CRCODDEP'
          DataSource = Src_Dar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnExit = DBE_CODDEPExit
          OnKeyDown = DBE_CODDEPKeyDown
        end
        object DBE_CODCCU: TDBEdit
          Left = 116
          Top = 58
          Width = 68
          Height = 21
          Ctl3D = True
          DataField = 'CRCODCC'
          DataSource = Src_Dar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          OnExit = DBE_CODCCUExit
          OnKeyDown = DBE_CODCCUKeyDown
        end
        object DBE_DESCMOV: TDBEdit
          Left = 116
          Top = 81
          Width = 417
          Height = 21
          Ctl3D = True
          DataField = 'CRDESCMV'
          DataSource = Src_Dar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
        end
        object DBE_CodCta: TDBEdit
          Left = 116
          Top = 14
          Width = 68
          Height = 21
          Hint = 'c'#243'digo do Banco do '#13#10'T'#237'tulo. Para Consultar'#13#10'Digite o Nome'
          Ctl3D = True
          DataField = 'CRCODCTA'
          DataSource = Src_Dar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentCtl3D = False
          ParentFont = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = DBE_CodCtaExit
          OnKeyPress = DBE_CodCtaKeyPress
        end
        object DBCB_NOMBCO: TDBComboBox
          Left = 183
          Top = 14
          Width = 351
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          Color = 13565951
          Ctl3D = True
          DataField = 'CRNOMCTA'
          DataSource = Src_Dar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentCtl3D = False
          ParentFont = False
          Sorted = True
          TabOrder = 1
          OnEnter = DBCB_NOMBCOEnter
          OnExit = DBCB_NOMBCOExit
          OnKeyDown = DBCB_NOMBCOKeyDown
        end
        object DBCB_NOMDEP: TDBComboBox
          Left = 183
          Top = 36
          Width = 351
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          Color = 13565951
          Ctl3D = True
          DataField = 'CRNOMDEP'
          DataSource = Src_Dar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentCtl3D = False
          ParentFont = False
          Sorted = True
          TabOrder = 3
          OnEnter = DBCB_NOMDEPEnter
          OnExit = DBCB_NOMDEPExit
          OnKeyDown = DBE_CODDEPKeyDown
        end
        object DBCB_NOMCCU: TDBComboBox
          Left = 183
          Top = 59
          Width = 320
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          Color = 13565951
          Ctl3D = True
          DataField = 'CRNOMCC'
          DataSource = Src_Dar
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentCtl3D = False
          ParentFont = False
          Sorted = True
          TabOrder = 5
          OnEnter = DBCB_NOMCCUEnter
          OnExit = DBCB_NOMCCUExit
          OnKeyDown = DBE_CODCCUKeyDown
        end
        object DBEdit9: TDBEdit
          Left = 503
          Top = 58
          Width = 31
          Height = 21
          Color = 16760799
          Ctl3D = True
          DataField = 'CRNATDC'
          DataSource = Src_Dar
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
        end
      end
    end
    inherited tsTab: TTabSheet
      ImageIndex = 4
      inherited DBGrid1: TDBGrid
        Width = 774
        Height = 340
        DataSource = Src_Dar
        FixedColor = 14811135
        Font.Style = []
        ParentFont = False
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CRNUMERO'
            Title.Alignment = taCenter
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRDESD'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'valdev'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRVALOR'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtemis'
            Title.Alignment = taCenter
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtvcto'
            Title.Alignment = taCenter
            Width = 69
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'razaocli'
            Title.Alignment = taCenter
            Width = 209
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cnpj'
            Width = 109
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtpag'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'situacao'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tipodoc'
            Width = 104
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRVALPAG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRCODEMP'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 340
        Width = 774
        Height = 25
        Align = alBottom
        TabOrder = 1
        object StaticText17: TStaticText
          Left = 235
          Top = 3
          Width = 115
          Height = 20
          Alignment = taCenter
          AutoSize = False
          BevelKind = bkFlat
          BorderStyle = sbsSunken
          Caption = 'T'#237'tulos Pagos'
          Color = 15461355
          ParentColor = False
          TabOrder = 0
        end
        object StaticText18: TStaticText
          Left = 3
          Top = 3
          Width = 115
          Height = 20
          Alignment = taCenter
          AutoSize = False
          BevelKind = bkFlat
          BorderStyle = sbsSunken
          Caption = 'T'#237'tulos em Atraso'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
        object StaticText19: TStaticText
          Left = 118
          Top = 3
          Width = 115
          Height = 20
          Alignment = taCenter
          AutoSize = False
          BevelKind = bkFlat
          BorderStyle = sbsSunken
          Caption = 'Pagamento Parcial'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 2
        end
        object StaticText23: TStaticText
          Left = 352
          Top = 3
          Width = 115
          Height = 20
          Alignment = taCenter
          AutoSize = False
          BevelKind = bkFlat
          BorderStyle = sbsSunken
          Caption = 'Cartorio/Juridico'
          Color = 14548923
          ParentColor = False
          TabOrder = 3
        end
        object StaticText24: TStaticText
          Left = 468
          Top = 3
          Width = 115
          Height = 20
          Alignment = taCenter
          AutoSize = False
          BevelKind = bkFlat
          BorderStyle = sbsSunken
          Caption = 'T'#237'tulos Protestado'
          Color = 33023
          ParentColor = False
          TabOrder = 4
        end
        object StaticText25: TStaticText
          Left = 584
          Top = 2
          Width = 115
          Height = 20
          Alignment = taCenter
          AutoSize = False
          BevelKind = bkFlat
          BorderStyle = sbsSunken
          Caption = 'Nota de Credito'
          Color = clGreen
          ParentColor = False
          TabOrder = 5
        end
      end
    end
    object tsImagem: TTabSheet
      Caption = 'Imagem'
      ImageIndex = 4
      object Label17: TLabel
        Left = 1
        Top = 8
        Width = 75
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'N'#250'mero:'
        FocusControl = DBEdit11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label58: TLabel
        Left = 186
        Top = 8
        Width = 75
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Parcela:'
        FocusControl = DBEdit11
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label59: TLabel
        Left = 1
        Top = 25
        Width = 75
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Emiss'#227'o:'
        FocusControl = DBEdit13
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label60: TLabel
        Left = 186
        Top = 25
        Width = 75
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vencimento:'
        FocusControl = DBEdit14
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label61: TLabel
        Left = 1
        Top = 43
        Width = 75
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Valor:'
        FocusControl = DBEdit15
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object GroupBox5: TGroupBox
        Left = 536
        Top = 0
        Width = 238
        Height = 365
        Align = alRight
        Caption = 'Documento Digitalizado:'
        TabOrder = 0
        object DBGrid3: TDBGrid
          Left = 2
          Top = 15
          Width = 234
          Height = 314
          Align = alClient
          DataSource = Src_Dap_imagem
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDblClick = DBGrid3DblClick
          OnKeyDown = DBGrid3KeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'RI_OBS'
              Width = 163
              Visible = True
            end>
        end
        object Panel5: TPanel
          Left = 2
          Top = 329
          Width = 234
          Height = 34
          Align = alBottom
          TabOrder = 1
          object sbn_nova: TSpeedButton
            Left = 2
            Top = 0
            Width = 51
            Height = 33
            Caption = 'Novo'
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
            OnClick = sbn_novaClick
          end
          object sbn_alterar: TSpeedButton
            Left = 58
            Top = 0
            Width = 60
            Height = 33
            Caption = 'Alterar'
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
            OnClick = sbn_alterarClick
          end
          object sbnRenomear: TSpeedButton
            Left = 117
            Top = 1
            Width = 60
            Height = 33
            Caption = 'Renomear'
            Glyph.Data = {
              76010000424D7601000000000000760000002800000020000000100000000100
              04000000000000010000120B0000120B00001000000000000000000000000000
              800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333330000000
              00003333377777777777333330FFFFFFFFF03FF3F7FFFF33FFF7003000000FF0
              00F077F7777773F77737E00FBFBFB0FFFFF07773333FF7FF33F7E0FBFB00000F
              F0F077F333777773F737E0BFBFBFBFB0FFF077F3333FFFF733F7E0FBFB00000F
              F0F077F333777773F737E0BFBFBFBFB0FFF077F33FFFFFF733F7E0FB0000000F
              F0F077FF777777733737000FB0FFFFFFFFF07773F7F333333337333000FFFFFF
              FFF0333777F3FFF33FF7333330F000FF0000333337F777337777333330FFFFFF
              0FF0333337FFFFFF7F37333330CCCCCC0F033333377777777F73333330FFFFFF
              0033333337FFFFFF773333333000000003333333377777777333}
            Layout = blGlyphTop
            NumGlyphs = 2
            OnClick = sbnRenomearClick
          end
          object sbn_excluir: TSpeedButton
            Left = 176
            Top = 1
            Width = 56
            Height = 33
            Caption = 'excluir'
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
            OnClick = sbn_excluirClick
          end
        end
      end
      object DBEdit11: TDBEdit
        Left = 75
        Top = 5
        Width = 61
        Height = 19
        Hint = 'N'#250'mero do T'#237'tulo'
        Color = 16766442
        Ctl3D = False
        DataField = 'CRNUMERO'
        DataSource = Src_Dar
        Enabled = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object DBEdit12: TDBEdit
        Left = 265
        Top = 5
        Width = 30
        Height = 19
        Hint = 'Parcela/Desdobramento do T'#237'tulo'
        Color = 16766442
        Ctl3D = False
        DataField = 'CRDESD'
        DataSource = Src_Dar
        Enabled = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object DBEdit13: TDBEdit
        Left = 75
        Top = 23
        Width = 100
        Height = 19
        Hint = 'Data de Emiss'#227'o do T'#237'tulo'
        Color = 16766442
        Ctl3D = False
        DataField = 'CRDTEMIS'
        DataSource = Src_Dar
        Enabled = False
        MaxLength = 10
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object DBEdit14: TDBEdit
        Left = 265
        Top = 23
        Width = 100
        Height = 19
        Hint = 'Data de Vencimento do titulo'
        Color = 16766442
        Ctl3D = False
        DataField = 'CRDTVCTO'
        DataSource = Src_Dar
        Enabled = False
        MaxLength = 10
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
      end
      object DBEdit15: TDBEdit
        Left = 75
        Top = 41
        Width = 100
        Height = 19
        Hint = 'Valor do Titulo'
        Color = 16766442
        Ctl3D = False
        DataField = 'CRVALOR'
        DataSource = Src_Dar
        Enabled = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnExit = db_valorExit
        OnKeyPress = db_totnfKeyPress
      end
    end
    object tsEventosCobranca: TTabSheet
      Caption = 'Eventos Cobranca'
      ImageIndex = 5
      object gb_emessa: TGroupBox
        Left = 0
        Top = 0
        Width = 774
        Height = 108
        Align = alTop
        Caption = 'Remessas:'
        TabOrder = 0
        object dbgrid_remessa: TDBGrid
          Left = 2
          Top = 15
          Width = 770
          Height = 91
          Align = alClient
          DataSource = src_remessa
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'RECHAVE'
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RECODBCO'
              Title.Alignment = taCenter
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bcbanco'
              Title.Alignment = taCenter
              Width = 127
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LAYOUT'
              Title.Alignment = taCenter
              Width = 49
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REDATREM'
              Title.Alignment = taCenter
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RECODCOM'
              Title.Alignment = taCenter
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RECODCAR'
              Title.Alignment = taCenter
              Width = 42
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RECODVARCAR'
              Title.Alignment = taCenter
              Width = 67
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RECODPROT'
              Title.Alignment = taCenter
              Width = 72
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RECODPROT02'
              Title.Alignment = taCenter
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RECODPROT03'
              Title.Alignment = taCenter
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'REPROTESTO_QTDD'
              Title.Alignment = taCenter
              Width = 115
              Visible = True
            end>
        end
      end
      object gb_retorno: TGroupBox
        Left = 0
        Top = 108
        Width = 774
        Height = 85
        Align = alClient
        Caption = 'Retornos:'
        TabOrder = 1
        object DBGrid_retorno: TDBGrid
          Left = 2
          Top = 15
          Width = 770
          Height = 68
          Align = alClient
          DataSource = src_retorno
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'RET_DATHORARQ'
              Title.Alignment = taCenter
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RET_DATALIQ'
              Title.Alignment = taCenter
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RET_DATACRED'
              Title.Alignment = taCenter
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RET_VALTAR'
              Title.Alignment = taCenter
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RET_VALIOF'
              Title.Alignment = taCenter
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RET_VALABAT'
              Title.Alignment = taCenter
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RET_VALDESC'
              Title.Alignment = taCenter
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RET_VALLANC'
              Title.Alignment = taCenter
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RET_VALJURMOR'
              Title.Alignment = taCenter
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RET_VALOUTREC'
              Title.Alignment = taCenter
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RET_AGENCIAREC'
              Title.Alignment = taCenter
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'RET_CODBCOREC'
              Title.Alignment = taCenter
              Width = 60
              Visible = True
            end>
        end
      end
      object gb_comissoes: TGroupBox
        Left = 0
        Top = 270
        Width = 774
        Height = 95
        Align = alBottom
        Caption = 'Comiss'#245'es:'
        TabOrder = 2
        object DBGrid_comissoes: TDBGrid
          Left = 2
          Top = 15
          Width = 770
          Height = 78
          Align = alClient
          DataSource = src_comissoes
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'CL1CHAVE'
              Title.Alignment = taCenter
              Width = 94
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_LOTE'
              Title.Alignment = taCenter
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPOCOM'
              Title.Alignment = taCenter
              Width = 242
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'BASE_COMISSAO'
              Title.Alignment = taCenter
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_COMISSAO'
              Title.Alignment = taCenter
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CL2DESD'
              Title.Alignment = taCenter
              Width = 73
              Visible = True
            end>
        end
      end
      object GroupBox7: TGroupBox
        Left = 0
        Top = 193
        Width = 774
        Height = 77
        Align = alBottom
        Caption = 'Outros dados:'
        TabOrder = 3
        object Label70: TLabel
          Left = 1
          Top = 36
          Width = 80
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Pasta Arquivo:'
          FocusControl = DBE_RET_PASTAARQ
        end
        object Label71: TLabel
          Left = 1
          Top = 17
          Width = 80
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Computador:'
          FocusControl = DBEdit17
        end
        object Label72: TLabel
          Left = 1
          Top = 54
          Width = 80
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = ' Arquivo:'
          FocusControl = DBEdit18
        end
        object Label73: TLabel
          Left = 385
          Top = 17
          Width = 80
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Natureza:'
          FocusControl = DBEdit19
        end
        object Label74: TLabel
          Left = 391
          Top = 35
          Width = 80
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Nome A'#231#227'o:'
          FocusControl = DBEdit20
        end
        object Label75: TLabel
          Left = 398
          Top = 53
          Width = 80
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Natureza:'
          FocusControl = DBEdit21
        end
        object DBE_RET_PASTAARQ: TDBEdit
          Left = 81
          Top = 34
          Width = 300
          Height = 19
          Ctl3D = False
          DataField = 'RET_PASTAARQ'
          DataSource = src_retorno
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit17: TDBEdit
          Left = 81
          Top = 16
          Width = 300
          Height = 19
          Ctl3D = False
          DataField = 'RET_COMPUTADOR'
          DataSource = src_retorno
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit18: TDBEdit
          Left = 81
          Top = 52
          Width = 300
          Height = 19
          Ctl3D = False
          DataField = 'RET_NOMEARQ'
          DataSource = src_retorno
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit19: TDBEdit
          Left = 465
          Top = 16
          Width = 300
          Height = 19
          Ctl3D = False
          DataField = 'RET_NATREC'
          DataSource = src_retorno
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit20: TDBEdit
          Left = 465
          Top = 34
          Width = 300
          Height = 19
          Ctl3D = False
          DataField = 'RET_NOMACAO'
          DataSource = src_retorno
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
        end
        object DBEdit21: TDBEdit
          Left = 465
          Top = 52
          Width = 300
          Height = 19
          Ctl3D = False
          DataField = 'RET_NOMNATREC'
          DataSource = src_retorno
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 5
        end
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 0
    Width = 782
    Height = 34
    Align = alTop
    Caption = ''
    inherited INCLUIR: TBitBtn
      Left = 1
      Top = 6
      Width = 95
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited ALTERAR: TBitBtn
      Left = 95
      Top = 6
      Width = 95
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited EXCLUIR: TBitBtn
      Left = 189
      Top = 6
      Width = 95
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited GRAVAR: TBitBtn
      Left = 283
      Top = 6
      Width = 95
      Height = 26
      Cursor = crHandPoint
      OnClick = GRAVARClick
      Layout = blGlyphLeft
    end
    inherited CANCELAR: TBitBtn
      Left = 377
      Top = 6
      Width = 95
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    object DBNavigator2: TDBNavigator
      Left = 471
      Top = 6
      Width = 220
      Height = 26
      Cursor = crHandPoint
      DataSource = Src_Dar
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 5
    end
    object btnSair: TBitBtn
      Left = 691
      Top = 6
      Width = 97
      Height = 26
      Cursor = crHandPoint
      Caption = '&Sair'
      TabOrder = 6
      OnClick = btnSairClick
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
  inherited GroupBox2: TGroupBox
    Top = 485
    Width = 782
    Height = 35
    Caption = ''
    object SB_ExportarTitulo: TSpeedButton [0]
      Left = 75
      Top = 6
      Width = 79
      Height = 26
      Cursor = crHandPoint
      Hint = 'Exporta para o Arquivo de cheques para deposito'
      Caption = 'Exp p/Dep'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SB_ExportarTituloClick
    end
    object SB_DIVIDE: TSpeedButton [1]
      Left = 2
      Top = 6
      Width = 72
      Height = 26
      Cursor = crHandPoint
      Hint = 'divide o titulo em varios'
      Caption = 'Div Titulo'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SB_DIVIDEClick
    end
    object sbnforma: TSpeedButton [2]
      Left = 152
      Top = 6
      Width = 78
      Height = 26
      Cursor = crHandPoint
      Hint = 'Click aqui para Ver as Formas dos Pagamentos'
      Caption = 'Forma Pgto'
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
      ParentShowHint = False
      ShowHint = True
      OnClick = sbnformaClick
    end
    object sb_emidup: TSpeedButton [3]
      Left = 229
      Top = 6
      Width = 77
      Height = 26
      Hint = 'Click aqui para Emitir a Duplicata'
      Caption = 'Duplicata'
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
      ParentShowHint = False
      ShowHint = True
      OnClick = sb_emidupClick
    end
    object sb_emiblq: TSpeedButton [4]
      Left = 306
      Top = 6
      Width = 81
      Height = 26
      Hint = 'Click aqui para Emitir o Boleto Bancario'
      Caption = 'Emitir Boleto'
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
      ParentShowHint = False
      ShowHint = True
      OnClick = sb_emiblqClick
    end
    object sbBolJPeg: TSpeedButton [5]
      Left = 387
      Top = 6
      Width = 87
      Height = 26
      Cursor = crHandPoint
      Hint = 'Click aqui para Salvar Boleto com PDF'
      Caption = 'Salvar Boleto'
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
      ParentShowHint = False
      ShowHint = True
      OnClick = sbBolJPegClick
    end
    object sbt_emitirrecibo: TSpeedButton [6]
      Left = 474
      Top = 6
      Width = 103
      Height = 26
      Cursor = crHandPoint
      Hint = 'divide o titulo em varios'
      Caption = 'Recibo Padr'#227'o'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = sbt_emitirreciboClick
    end
    object sbnRecTerc: TSpeedButton [7]
      Left = 577
      Top = 6
      Width = 106
      Height = 26
      Cursor = crHandPoint
      Caption = 'Recibo 3o'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = sbnRecTercClick
    end
    inherited DBNavigator1: TDBNavigator
      Left = 649
      Top = 41
      Width = 136
      Height = 30
      Visible = False
      OnClick = DBNavigator1Click
    end
    inherited SAIR: TBitBtn
      Left = 460
      Top = 43
      Width = 95
      Height = 30
      Visible = False
      Layout = blGlyphLeft
    end
    object CB_SUBSTNOSNUM: TCheckBox
      Left = 679
      Top = 15
      Width = 107
      Height = 15
      Caption = 'Sub Nosso Num'
      TabOrder = 2
    end
  end
  object Src_Dar: TDataSource
    DataSet = Tb_Dar
    OnDataChange = Src_DarDataChange
    Left = 760
    Top = 136
  end
  object Tb_CR_imagem: TADOQuery
    Connection = DM1_ADO.ADOConnection1
    Parameters = <
      item
        Name = 'ROWID'
        DataType = ftString
        Size = -1
        Value = ''
      end>
    SQL.Strings = (
      'Select * from CADDAR_IMAGEM'
      ' where  RI_ROWID=:ROWID'
      ' order by RI_SEQ '
      '')
    Left = 352
    Top = 55
    object Tb_CR_imagemRI_ROWID: TStringField
      FieldName = 'RI_ROWID'
      Size = 50
    end
    object Tb_CR_imagemRI_SEQ: TFloatField
      FieldName = 'RI_SEQ'
    end
    object Tb_CR_imagemRI_OBS: TStringField
      DisplayLabel = 'Nome da Imagem'
      FieldName = 'RI_OBS'
      Size = 150
    end
    object Tb_CR_imagemRI_IMAGEM: TBlobField
      FieldName = 'RI_IMAGEM'
    end
    object Tb_CR_imagemRI_NOMEORI: TStringField
      FieldName = 'RI_NOMEORI'
      Size = 254
    end
    object Tb_CR_imagemRI_ID_NEW: TFloatField
      FieldName = 'RI_ID_NEW'
    end
    object Tb_CR_imagemRI_ID_DAR_NEW: TFloatField
      FieldName = 'RI_ID_DAR_NEW'
    end
  end
  object Src_Dap_imagem: TDataSource
    DataSet = Tb_CR_imagem
    Left = 284
    Top = 64
  end
  object Tb_Dar: TQuery
    CachedUpdates = True
    AfterInsert = Tb_DarAfterInsert
    BeforePost = Tb_DarBeforePost
    AfterPost = Tb_DarAfterPost
    AfterDelete = C
    OnCalcFields = Tb_DarCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CADDAR.*,ROWID AS IDDAR From CADDAR where '
      'CRCODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_Dar
    Left = 658
    Top = 155
    object Tb_DarCRCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CRCODEMP'
      Origin = 'SG_ASSOC.CADDAR.CRCODEMP'
    end
    object Tb_DarCRNUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CRNUMERO'
      Origin = 'SG_ASSOC.CADDAR.CRNUMERO'
    end
    object Tb_DarCRCODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'CRCODCLI'
      Origin = 'SG_ASSOC.CADDAR.CRCODCLI'
    end
    object Tb_DarCRDTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emissao'
      FieldName = 'CRDTEMIS'
      Origin = 'SG_ASSOC.CADDAR.CRDTEMIS'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_DarCRDESD: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'CRDESD'
      Origin = 'SG_ASSOC.CADDAR.CRDESD'
      Size = 4
    end
    object Tb_DarCRDTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'CRDTVCTO'
      Origin = 'SG_ASSOC.CADDAR.CRDTVCTO'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_DarCRDTPAG: TDateTimeField
      DisplayLabel = 'Dt.Pgto.'
      FieldName = 'CRDTPAG'
      Origin = 'SG_ASSOC.CADDAR.CRDTPAG'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_DarCRDTBX: TDateTimeField
      DisplayLabel = 'Data Baixa'
      FieldName = 'CRDTBX'
      Origin = 'SG_ASSOC.CADDAR.CRDTBX'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_DarCRNPED: TFloatField
      DisplayLabel = 'N'#250'mero do Pedido'
      FieldName = 'CRNPED'
      Origin = 'SG_ASSOC.CADDAR.CRNPED'
    end
    object Tb_DarCRCODVEN: TFloatField
      DisplayLabel = 'C'#243'd.Vendedor'
      FieldName = 'CRCODVEN'
      Origin = 'SG_ASSOC.CADDAR.CRCODVEN'
    end
    object Tb_DarCRLOTE: TFloatField
      DisplayLabel = 'Lote'
      FieldName = 'CRLOTE'
      Origin = 'SG_ASSOC.CADDAR.CRLOTE'
    end
    object Tb_DarCRDTDESCF: TDateTimeField
      DisplayLabel = 'Dt.Lim.Desc.Financ'
      FieldName = 'CRDTDESCF'
      Origin = 'SG_ASSOC.CADDAR.CRDTDESCF'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_DarCRVALFRE: TFloatField
      DisplayLabel = 'Valor do Frete'
      FieldName = 'CRVALFRE'
      Origin = 'SG_ASSOC.CADDAR.CRVALFRE'
      currency = True
    end
    object Tb_DarCRJURD: TFloatField
      DisplayLabel = 'Juros por dia de atraso'
      FieldName = 'CRJURD'
      Origin = 'SG_ASSOC.CADDAR.CRJURD'
      DisplayFormat = '0.00'
    end
    object Tb_DarCRDESCF: TFloatField
      DisplayLabel = 'Desc.Financeiro'
      FieldName = 'CRDESCF'
      Origin = 'SG_ASSOC.CADDAR.CRDESCF'
      DisplayFormat = '0.00'
    end
    object Tb_DarCRICMSR: TFloatField
      DisplayLabel = 'Icms Retido'
      FieldName = 'CRICMSR'
      Origin = 'SG_ASSOC.CADDAR.CRICMSR'
      DisplayFormat = '0.00'
    end
    object Tb_DarCRJUROS: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'CRJUROS'
      Origin = 'SG_ASSOC.CADDAR.CRJUROS'
      DisplayFormat = '0.00'
    end
    object Tb_DarCRDEVOL: TFloatField
      DisplayLabel = 'Devolucao'
      FieldName = 'CRDEVOL'
      Origin = 'SG_ASSOC.CADDAR.CRDEVOL'
      DisplayFormat = '0.00'
    end
    object Tb_DarCRDESC: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'CRDESC'
      Origin = 'SG_ASSOC.CADDAR.CRDESC'
      DisplayFormat = '0.00'
    end
    object Tb_DarCRVALPAG: TFloatField
      DisplayLabel = 'Valor Pago'
      FieldName = 'CRVALPAG'
      Origin = 'SG_ASSOC.CADDAR.CRVALPAG'
      DisplayFormat = '0.00'
    end
    object Tb_DarCRVALOR: TFloatField
      DisplayLabel = 'Valor do T'#237'tulo'
      FieldName = 'CRVALOR'
      Origin = 'SG_ASSOC.CADDAR.CRVALOR'
      DisplayFormat = '0.00'
    end
    object Tb_DarCRNOSNUM: TStringField
      DisplayLabel = 'Numero do titulo no banco'
      FieldName = 'CRNOSNUM'
      Origin = 'SG_ASSOC.CADDAR.CRNOSNUM'
      Size = 30
    end
    object Tb_DarCRDTALT: TDateTimeField
      FieldName = 'CRDTALT'
      Origin = 'SG_ASSOC.CADDAR.CRDTALT'
    end
    object Tb_DarCRUSRALT: TFloatField
      FieldName = 'CRUSRALT'
      Origin = 'SG_ASSOC.CADDAR.CRUSRALT'
    end
    object Tb_DarCRUSRBX: TFloatField
      FieldName = 'CRUSRBX'
      Origin = 'SG_ASSOC.CADDAR.CRUSRBX'
    end
    object Tb_Darrazaocli: TStringField
      DisplayLabel = 'Razao Social'
      FieldKind = fkCalculated
      FieldName = 'razaocli'
      Size = 40
      Calculated = True
    end
    object Tb_Darnomven: TStringField
      DisplayLabel = 'Nome do Vendedor'
      FieldKind = fkCalculated
      FieldName = 'nomven'
      Size = 40
      Calculated = True
    end
    object Tb_Darnombco: TStringField
      DisplayLabel = 'Nome do Banco'
      FieldKind = fkCalculated
      FieldName = 'nombco'
      Size = 40
      Calculated = True
    end
    object Tb_DarCRCODLDR: TFloatField
      FieldName = 'CRCODLDR'
      Origin = 'SG_ASSOC.CADDAR.CRCODLDR'
    end
    object Tb_DarCRDUP: TFloatField
      FieldName = 'CRDUP'
      Origin = 'SG_ASSOC.CADDAR.CRDUP'
    end
    object Tb_DarCRORDEM: TFloatField
      FieldName = 'CRORDEM'
      Origin = 'SG_ASSOC.CADDAR.CRORDEM'
    end
    object Tb_DarCRSTATUS: TFloatField
      FieldName = 'CRSTATUS'
      Origin = 'SG_ASSOC.CADDAR.CRSTATUS'
    end
    object Tb_DarCRCODBCO: TFloatField
      FieldName = 'CRCODBCO'
      Origin = 'SG_ASSOC.CADDAR.CRCODBCO'
    end
    object Tb_DarCREMIDUP: TFloatField
      FieldName = 'CREMIDUP'
      Origin = 'SG_ASSOC.CADDAR.CREMIDUP'
    end
    object Tb_DarCREMIBLQ: TFloatField
      FieldName = 'CREMIBLQ'
      Origin = 'SG_ASSOC.CADDAR.CREMIBLQ'
    end
    object Tb_DarCRTIPCOB: TFloatField
      FieldName = 'CRTIPCOB'
      Origin = 'SG_ASSOC.CADDAR.CRTIPCOB'
    end
    object Tb_DarCRNUMCUP: TFloatField
      FieldName = 'CRNUMCUP'
      Origin = 'SG_ASSOC.CADDAR.CRNUMCUP'
    end
    object Tb_DarCRDATCUP: TDateTimeField
      FieldName = 'CRDATCUP'
      Origin = 'SG_ASSOC.CADDAR.CRDATCUP'
    end
    object Tb_DarCRCOMVEN: TFloatField
      FieldName = 'CRCOMVEN'
      Origin = 'SG_ASSOC.CADDAR.CRCOMVEN'
      DisplayFormat = '0.00'
    end
    object Tb_DarCRCOMTEL: TFloatField
      FieldName = 'CRCOMTEL'
      Origin = 'SG_ASSOC.CADDAR.CRCOMTEL'
      DisplayFormat = '0.00'
    end
    object Tb_DarCRCOMSUP: TFloatField
      FieldName = 'CRCOMSUP'
      Origin = 'SG_ASSOC.CADDAR.CRCOMSUP'
      DisplayFormat = '0.00'
    end
    object Tb_DarCRSEMCOM: TFloatField
      FieldName = 'CRSEMCOM'
      Origin = 'SG_ASSOC.CADDAR.CRSEMCOM'
      DisplayFormat = '0.00'
    end
    object Tb_DarCRLOTCV: TFloatField
      FieldName = 'CRLOTCV'
      Origin = 'SG_ASSOC.CADDAR.CRLOTCV'
    end
    object Tb_DarCRLOTCS: TFloatField
      FieldName = 'CRLOTCS'
      Origin = 'SG_ASSOC.CADDAR.CRLOTCS'
    end
    object Tb_DarCRLOTCT: TFloatField
      FieldName = 'CRLOTCT'
      Origin = 'SG_ASSOC.CADDAR.CRLOTCT'
    end
    object Tb_DarCRMULTA: TFloatField
      FieldName = 'CRMULTA'
      Origin = 'SG_ASSOC.CADDAR.CRMULTA'
    end
    object Tb_DarCRQTDDM: TFloatField
      FieldName = 'CRQTDDM'
      Origin = 'SG_ASSOC.CADDAR.CRQTDDM'
    end
    object Tb_DarCRDESCD: TFloatField
      FieldName = 'CRDESCD'
      Origin = 'SG_ASSOC.CADDAR.CRDESCD'
    end
    object Tb_DarCRCODTLV: TFloatField
      FieldName = 'CRCODTLV'
      Origin = 'SG_ASSOC.CADDAR.CRCODTLV'
    end
    object Tb_DarCRCODORI: TFloatField
      FieldName = 'CRCODORI'
      Origin = 'SG_ASSOC.CADDAR.CRCODORI'
    end
    object Tb_DarCRCODUSR: TFloatField
      FieldName = 'CRCODUSR'
      Origin = 'SG_ASSOC.CADDAR.CRCODUSR'
    end
    object Tb_DarCRHRALT: TStringField
      FieldName = 'CRHRALT'
      Origin = 'SG_ASSOC.CADDAR.CRHRALT'
      Size = 10
    end
    object Tb_DarCRNFACUM: TStringField
      FieldName = 'CRNFACUM'
      Origin = 'SG_ASSOC.CADDAR.CRNFACUM'
      Size = 100
    end
    object Tb_DarCRTOTNF: TFloatField
      FieldName = 'CRTOTNF'
      Origin = 'SG_ASSOC.CADDAR.CRTOTNF'
      DisplayFormat = '0.00'
    end
    object Tb_Dardenomcli: TStringField
      FieldKind = fkCalculated
      FieldName = 'denomcli'
      Size = 40
      Calculated = True
    end
    object Tb_DarCRCOMV02: TFloatField
      FieldName = 'CRCOMV02'
      Origin = 'SG_ASSOC.CADDAR.CRCOMV02'
    end
    object Tb_DarCRCOMV03: TFloatField
      FieldName = 'CRCOMV03'
      Origin = 'SG_ASSOC.CADDAR.CRCOMV03'
    end
    object Tb_DarCRLOTCV02: TFloatField
      FieldName = 'CRLOTCV02'
      Origin = 'SG_ASSOC.CADDAR.CRLOTCV02'
    end
    object Tb_DarCRLOTCV03: TFloatField
      FieldName = 'CRLOTCV03'
      Origin = 'SG_ASSOC.CADDAR.CRLOTCV03'
    end
    object Tb_DarCRCODV02: TFloatField
      FieldName = 'CRCODV02'
      Origin = 'SG_ASSOC.CADDAR.CRCODV02'
    end
    object Tb_DarCRCODV03: TFloatField
      FieldName = 'CRCODV03'
      Origin = 'SG_ASSOC.CADDAR.CRCODV03'
    end
    object Tb_DarCRCODCV: TFloatField
      FieldName = 'CRCODCV'
      Origin = 'SG_ASSOC.CADDAR.CRCODCV'
    end
    object Tb_DarCRLOTSEQ_CP: TFloatField
      FieldName = 'CRLOTSEQ_CP'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CP'
    end
    object Tb_DarCRCODECF: TFloatField
      FieldName = 'CRCODECF'
      Origin = 'SG_ASSOC.CADDAR.CRCODECF'
    end
    object Tb_DarCRLOTSEQ_LB: TFloatField
      FieldName = 'CRLOTSEQ_LB'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_LB'
    end
    object Tb_DarCRLOTSEQ_FC: TFloatField
      FieldName = 'CRLOTSEQ_FC'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_FC'
    end
    object Tb_DarCRLOTSEQ_CV: TFloatField
      FieldName = 'CRLOTSEQ_CV'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CV'
    end
    object Tb_DarCRLOTSEQ_CV02: TFloatField
      FieldName = 'CRLOTSEQ_CV02'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CV02'
    end
    object Tb_DarCRLOTSEQ_CV03: TFloatField
      FieldName = 'CRLOTSEQ_CV03'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CV03'
    end
    object Tb_DarCRLOTSEQ_CS: TFloatField
      FieldName = 'CRLOTSEQ_CS'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CS'
    end
    object Tb_DarCRLOTSEQ_CT: TFloatField
      FieldName = 'CRLOTSEQ_CT'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CT'
    end
    object Tb_DarCRTOTDI01: TFloatField
      DisplayLabel = 'Total do Desconto 01 dos '#237'tens'
      FieldName = 'CRTOTDI01'
      Origin = 'SG_ASSOC.CADDAR.CRTOTDI01'
    end
    object Tb_DarCRTOTDI02: TFloatField
      DisplayLabel = 'Total do Desconto 02 dos '#237'tens'
      FieldName = 'CRTOTDI02'
      Origin = 'SG_ASSOC.CADDAR.CRTOTDI02'
    end
    object Tb_DarCRTOTDI03: TFloatField
      DisplayLabel = 'Total do Desconto 03 dos '#237'tens'
      FieldName = 'CRTOTDI03'
      Origin = 'SG_ASSOC.CADDAR.CRTOTDI03'
    end
    object Tb_DarCRTOTDIVL: TFloatField
      DisplayLabel = 'Total do Desconto em valor dos '#237'tens'
      FieldName = 'CRTOTDIVL'
      Origin = 'SG_ASSOC.CADDAR.CRTOTDIVL'
    end
    object Tb_DarCRVALDES01: TFloatField
      DisplayLabel = 'Total do Desconto 01 do cabecalho'
      FieldName = 'CRVALDES01'
      Origin = 'SG_ASSOC.CADDAR.CRVALDES01'
    end
    object Tb_DarCRVALDES02: TFloatField
      DisplayLabel = 'Total do Desconto 02 do Cabe'#231'alho'
      FieldName = 'CRVALDES02'
      Origin = 'SG_ASSOC.CADDAR.CRVALDES02'
    end
    object Tb_DarCRVLRDES: TFloatField
      DisplayLabel = 'Valor do desconto do Cabe'#231'alho'
      FieldName = 'CRVLRDES'
      Origin = 'SG_ASSOC.CADDAR.CRVLRDES'
    end
    object Tb_DarCRTARBAN: TFloatField
      FieldName = 'CRTARBAN'
      Origin = 'SG_ASSOC.CADDAR.CRTARBAN'
    end
    object Tb_DarCRDNOSNUM: TStringField
      FieldName = 'CRDNOSNUM'
      Origin = 'SG_ASSOC.CADDAR.CRDNOSNUM'
      Size = 1
    end
    object Tb_DarCRACEITE: TStringField
      FieldName = 'CRACEITE'
      Origin = 'SG_ASSOC.CADDAR.CRACEITE'
      Size = 1
    end
    object Tb_DarCRESPECIE: TStringField
      DisplayLabel = 'Especie'
      FieldName = 'CRESPECIE'
      Origin = 'SG_ASSOC.CADDAR.CRESPECIE'
      Size = 2
    end
    object Tb_DarCRCODBAR: TStringField
      DisplayLabel = 'C'#243'digo de barras'
      FieldName = 'CRCODBAR'
      Origin = 'SG_ASSOC.CADDAR.CRCODBAR'
      Size = 60
    end
    object Tb_DarCRCODDIG: TStringField
      DisplayLabel = 'C'#243'digo digitavel da Boleta'
      FieldName = 'CRCODDIG'
      Origin = 'SG_ASSOC.CADDAR.CRCODDIG'
      Size = 60
    end
    object Tb_DarCRLEMAT: TFloatField
      DisplayLabel = 'Lote de Envio para Matriz'
      FieldName = 'CRLEMAT'
      Origin = 'SG_ASSOC.CADDAR.CRLEMAT'
    end
    object Tb_DarCRCODASSE: TFloatField
      DisplayLabel = 'C'#243'digo do Assessor'
      FieldName = 'CRCODASSE'
      Origin = 'SG_ASSOC.CADDAR.CRCODASSE'
    end
    object Tb_DarCRCOMASSE: TFloatField
      DisplayLabel = 'Comiss'#227'o do Assessor'
      FieldName = 'CRCOMASSE'
      Origin = 'SG_ASSOC.CADDAR.CRCOMASSE'
    end
    object Tb_DarCRLOTSEQ_CASSE: TFloatField
      DisplayLabel = 'Lote Seq.Comiss'#227'o do Assessor'
      FieldName = 'CRLOTSEQ_CASSE'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CASSE'
    end
    object Tb_DarCRLOTCASSE: TFloatField
      DisplayLabel = 'Lote de Comiss'#227'o do Assessor'
      FieldName = 'CRLOTCASSE'
      Origin = 'SG_ASSOC.CADDAR.CRLOTCASSE'
    end
    object Tb_DarCRINST01: TStringField
      DisplayLabel = 'Instru'#231#245'es Linha 01'
      FieldName = 'CRINST01'
      Origin = 'SG_ASSOC.CADDAR.CRINST01'
      Size = 60
    end
    object Tb_DarCRINST02: TStringField
      DisplayLabel = 'Instru'#231#245'es Linha 02'
      FieldName = 'CRINST02'
      Origin = 'SG_ASSOC.CADDAR.CRINST02'
      Size = 60
    end
    object Tb_DarCRINST03: TStringField
      DisplayLabel = 'Instru'#231#245'es Linha 03'
      FieldName = 'CRINST03'
      Origin = 'SG_ASSOC.CADDAR.CRINST03'
      Size = 60
    end
    object Tb_DarCRINST04: TStringField
      DisplayLabel = 'Instru'#231#245'es Linha 04'
      FieldName = 'CRINST04'
      Origin = 'SG_ASSOC.CADDAR.CRINST04'
      Size = 60
    end
    object Tb_DarCRQTDPARC: TFloatField
      FieldName = 'CRQTDPARC'
      Origin = 'SG_ASSOC.CADDAR.CRQTDPARC'
    end
    object Tb_DarCRNUMPARC: TFloatField
      FieldName = 'CRNUMPARC'
      Origin = 'SG_ASSOC.CADDAR.CRNUMPARC'
    end
    object Tb_DarCRVALSEG: TFloatField
      FieldName = 'CRVALSEG'
      Origin = 'SG_ASSOC.CADDAR.CRVALSEG'
    end
    object Tb_DarCRTOTCGRU: TFloatField
      FieldName = 'CRTOTCGRU'
      Origin = 'SG_ASSOC.CADDAR.CRTOTCGRU'
    end
    object Tb_DarCRTOTSGRU: TFloatField
      FieldName = 'CRTOTSGRU'
      Origin = 'SG_ASSOC.CADDAR.CRTOTSGRU'
    end
    object Tb_DarCRTBCOCOB: TFloatField
      FieldName = 'CRTBCOCOB'
      Origin = 'SG_ASSOC.CADDAR.CRTBCOCOB'
    end
    object Tb_DarCREMIBOR: TFloatField
      FieldName = 'CREMIBOR'
      Origin = 'SG_ASSOC.CADDAR.CREMIBOR'
    end
    object Tb_DarCRCHD_BANCO: TFloatField
      FieldName = 'CRCHD_BANCO'
      Origin = 'SG_ASSOC.CADDAR.CRCHD_BANCO'
    end
    object Tb_DarCRCHD_AGENCIA: TStringField
      FieldName = 'CRCHD_AGENCIA'
      Origin = 'SG_ASSOC.CADDAR.CRCHD_AGENCIA'
      Size = 5
    end
    object Tb_DarCRCHD_CC: TStringField
      FieldName = 'CRCHD_CC'
      Origin = 'SG_ASSOC.CADDAR.CRCHD_CC'
      Size = 15
    end
    object Tb_DarCRCHD_NUMERO: TFloatField
      FieldName = 'CRCHD_NUMERO'
      Origin = 'SG_ASSOC.CADDAR.CRCHD_NUMERO'
    end
    object Tb_DarCRTCB: TFloatField
      FieldName = 'CRTCB'
      Origin = 'SG_ASSOC.CADDAR.CRTCB'
    end
    object Tb_DarCRCAUCAO: TFloatField
      FieldName = 'CRCAUCAO'
      Origin = 'SG_ASSOC.CADDAR.CRCAUCAO'
    end
    object Tb_DarCRBCOCAU: TFloatField
      FieldName = 'CRBCOCAU'
      Origin = 'SG_ASSOC.CADDAR.CRBCOCAU'
    end
    object Tb_DarCRDTCAU: TDateTimeField
      FieldName = 'CRDTCAU'
      Origin = 'SG_ASSOC.CADDAR.CRDTCAU'
    end
    object Tb_DarCRSPC_DTPEN: TDateTimeField
      FieldName = 'CRSPC_DTPEN'
      Origin = 'SG_ASSOC.CADDAR.CRSPC_DTPEN'
    end
    object Tb_DarCRSPC_DTNEG: TDateTimeField
      FieldName = 'CRSPC_DTNEG'
      Origin = 'SG_ASSOC.CADDAR.CRSPC_DTNEG'
    end
    object Tb_DarCRSERASA_DTNEG: TDateTimeField
      FieldName = 'CRSERASA_DTNEG'
      Origin = 'SG_ASSOC.CADDAR.CRSERASA_DTNEG'
    end
    object Tb_DarCRNR: TFloatField
      FieldName = 'CRNR'
      Origin = 'SG_ASSOC.CADDAR.CRNR'
    end
    object Tb_DarCRCODV04: TFloatField
      FieldName = 'CRCODV04'
      Origin = 'SG_ASSOC.CADDAR.CRCODV04'
    end
    object Tb_DarCRCOMV04: TFloatField
      FieldName = 'CRCOMV04'
      Origin = 'SG_ASSOC.CADDAR.CRCOMV04'
    end
    object Tb_DarCRLOTSEQ_CV04: TFloatField
      FieldName = 'CRLOTSEQ_CV04'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_CV04'
    end
    object Tb_DarCRLOTCV04: TFloatField
      FieldName = 'CRLOTCV04'
      Origin = 'SG_ASSOC.CADDAR.CRLOTCV04'
    end
    object Tb_DarCRTOTIPI: TFloatField
      FieldName = 'CRTOTIPI'
      Origin = 'SG_ASSOC.CADDAR.CRTOTIPI'
    end
    object Tb_DarCRCUSBCO: TFloatField
      FieldName = 'CRCUSBCO'
      Origin = 'SG_ASSOC.CADDAR.CRCUSBCO'
    end
    object Tb_Dartipodoc: TStringField
      DisplayLabel = 'Tipo do Documento'
      FieldKind = fkCalculated
      FieldName = 'tipodoc'
      Size = 30
      Calculated = True
    end
    object Tb_Darsituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'situacao'
      Calculated = True
    end
    object Tb_DarCRCODCTA: TFloatField
      FieldName = 'CRCODCTA'
      Origin = 'SG_ASSOC.CADDAR.CRCODCTA'
    end
    object Tb_DarCRCODCC: TStringField
      FieldName = 'CRCODCC'
      Origin = 'SG_ASSOC.CADDAR.CRCODCC'
      Size = 16
    end
    object Tb_DarCRCODDEP: TStringField
      FieldName = 'CRCODDEP'
      Origin = 'SG_ASSOC.CADDAR.CRCODDEP'
      Size = 5
    end
    object Tb_DarCRDESCMV: TStringField
      DisplayWidth = 60
      FieldName = 'CRDESCMV'
      Origin = 'SG_ASSOC.CADDAR.CRDESCMV'
      Size = 60
    end
    object Tb_DarCRNOMCC: TStringField
      FieldName = 'CRNOMCC'
      Origin = 'SG_ASSOC.CADDAR.CRNOMCC'
      Size = 40
    end
    object Tb_DarCRNOMDEP: TStringField
      FieldName = 'CRNOMDEP'
      Origin = 'SG_ASSOC.CADDAR.CRNOMDEP'
      Size = 40
    end
    object Tb_DarCRNOMCTA: TStringField
      FieldName = 'CRNOMCTA'
      Origin = 'SG_ASSOC.CADDAR.CRNOMCTA'
      Size = 40
    end
    object Tb_DarCRNATDC: TStringField
      FieldName = 'CRNATDC'
      Origin = 'SG_ASSOC.CADDAR.CRNATDC'
      Size = 1
    end
    object Tb_Dardtemis: TDateField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldKind = fkCalculated
      FieldName = 'dtemis'
      Calculated = True
    end
    object Tb_Dardtvcto: TDateField
      DisplayLabel = 'Dt.Vcto.'
      FieldKind = fkCalculated
      FieldName = 'dtvcto'
      Calculated = True
    end
    object Tb_Dardtpag: TDateField
      DisplayLabel = 'Dt.Pgto.'
      FieldKind = fkCalculated
      FieldName = 'dtpag'
      Calculated = True
    end
    object Tb_Dardtbx: TDateField
      DisplayLabel = 'Dt.Baixa'
      FieldKind = fkCalculated
      FieldName = 'dtbx'
      Calculated = True
    end
    object Tb_Dardtdescf: TDateField
      DisplayLabel = 'Dt.Desc.Fin'
      FieldKind = fkCalculated
      FieldName = 'dtdescf'
      Calculated = True
    end
    object Tb_Dardatcup: TDateField
      DisplayLabel = 'Dt.Cupom'
      FieldKind = fkCalculated
      FieldName = 'datcup'
      Calculated = True
    end
    object Tb_Darspc_dtpen: TDateField
      DisplayLabel = 'Dt.SPC Neg'
      FieldKind = fkCalculated
      FieldName = 'spc_dtpen'
      Calculated = True
    end
    object Tb_Darspc_dtneg: TDateField
      DisplayLabel = 'Dt.SPC.Neg'
      FieldKind = fkCalculated
      FieldName = 'spc_dtneg'
      Calculated = True
    end
    object Tb_Darserasa_dtneg: TDateField
      DisplayLabel = 'Dt.Serasa Neg'
      FieldKind = fkCalculated
      FieldName = 'serasa_dtneg'
      Calculated = True
    end
    object Tb_Dardtcau: TDateField
      DisplayLabel = 'Dt.Cau'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'dtcau'
      Calculated = True
    end
    object Tb_DarCRCOMIS_EXTRA: TFloatField
      FieldName = 'CRCOMIS_EXTRA'
      Origin = 'SG_ASSOC.CADDAR.CRCOMIS_EXTRA'
    end
    object Tb_DarCRSEQ: TFloatField
      FieldName = 'CRSEQ'
      Origin = 'SG_ASSOC.CADDAR.CRSEQ'
    end
    object Tb_DarCRPFPGTO: TFloatField
      FieldName = 'CRPFPGTO'
      Origin = 'SG_ASSOC.CADDAR.CRPFPGTO'
    end
    object Tb_DarCRTABPV: TStringField
      FieldName = 'CRTABPV'
      Origin = 'SG_ASSOC.CADDAR.CRTABPV'
      Size = 2
    end
    object Tb_DarCRCODPV: TFloatField
      FieldName = 'CRCODPV'
      Origin = 'SG_ASSOC.CADDAR.CRCODPV'
    end
    object Tb_DarCRVINC02: TFloatField
      FieldName = 'CRVINC02'
      Origin = 'SG_ASSOC.CADDAR.CRVINC02'
    end
    object Tb_DarCRCODFPGTO: TFloatField
      FieldName = 'CRCODFPGTO'
      Origin = 'SG_ASSOC.CADDAR.CRCODFPGTO'
    end
    object Tb_DarCRNOMFPGTO: TStringField
      FieldName = 'CRNOMFPGTO'
      Origin = 'SG_ASSOC.CADDAR.CRNOMFPGTO'
      Size = 40
    end
    object Tb_DarCRFIN_CODFIN: TFloatField
      FieldName = 'CRFIN_CODFIN'
      Origin = 'SG_ASSOC.CADDAR.CRFIN_CODFIN'
    end
    object Tb_DarCRLANCFIN: TFloatField
      FieldName = 'CRLANCFIN'
      Origin = 'SG_ASSOC.CADDAR.CRLANCFIN'
    end
    object Tb_DarCRRECFRENTE: TFloatField
      FieldName = 'CRRECFRENTE'
      Origin = 'SG_ASSOC.CADDAR.CRRECFRENTE'
    end
    object Tb_DarCRDATPED: TDateTimeField
      FieldName = 'CRDATPED'
      Origin = 'SG_ASSOC.CADDAR.CRDATPED'
    end
    object Tb_DarCRCX_CODCAI: TFloatField
      FieldName = 'CRCX_CODCAI'
      Origin = 'SG_ASSOC.CADDAR.CRCX_CODCAI'
    end
    object Tb_DarCRCX_LOTMOV: TFloatField
      FieldName = 'CRCX_LOTMOV'
      Origin = 'SG_ASSOC.CADDAR.CRCX_LOTMOV'
    end
    object Tb_DarCRCHD_EMITENTE: TStringField
      FieldName = 'CRCHD_EMITENTE'
      Origin = 'SG_ASSOC.CADDAR.CRCHD_EMITENTE'
      Size = 40
    end
    object Tb_DarCRJURDEB: TFloatField
      FieldName = 'CRJURDEB'
      Origin = 'SG_ASSOC.CADDAR.CRJURDEB'
    end
    object Tb_DarCRJURDEB_SAC: TFloatField
      FieldName = 'CRJURDEB_SAC'
      Origin = 'SG_ASSOC.CADDAR.CRJURDEB_SAC'
    end
    object Tb_Darvaldev: TFloatField
      DisplayLabel = 'Valor Devido'
      FieldKind = fkCalculated
      FieldName = 'valdev'
      Calculated = True
    end
    object Tb_DarCRTARPROT: TFloatField
      FieldName = 'CRTARPROT'
      Origin = 'SG_ASSOC.CADDAR.CRTARPROT'
    end
    object Tb_DarCRTARPROT_DATA: TDateTimeField
      FieldName = 'CRTARPROT_DATA'
      Origin = 'SG_ASSOC.CADDAR.CRTARPROT_DATA'
    end
    object Tb_DarCRCUSPROT: TFloatField
      FieldName = 'CRCUSPROT'
      Origin = 'SG_ASSOC.CADDAR.CRCUSPROT'
    end
    object Tb_DarCRCUSPROT_DATA: TDateTimeField
      FieldName = 'CRCUSPROT_DATA'
      Origin = 'SG_ASSOC.CADDAR.CRCUSPROT_DATA'
    end
    object Tb_DarCRCODCAR: TFloatField
      FieldName = 'CRCODCAR'
      Origin = 'SG_ASSOC.CADDAR.CRCODCAR'
    end
    object Tb_DarCRLOTSEQ_EC: TFloatField
      FieldName = 'CRLOTSEQ_EC'
      Origin = 'SG_ASSOC.CADDAR.CRLOTSEQ_EC'
    end
    object Tb_DarCRLOTE_EC: TFloatField
      FieldName = 'CRLOTE_EC'
      Origin = 'SG_ASSOC.CADDAR.CRLOTE_EC'
    end
    object Tb_DarCRTITPROT: TFloatField
      FieldName = 'CRTITPROT'
      Origin = 'SG_ASSOC.CADDAR.CRTITPROT'
    end
    object Tb_Darcnpj: TFloatField
      DisplayLabel = 'CNPJ'
      FieldKind = fkCalculated
      FieldName = 'cnpj'
      Calculated = True
    end
    object Tb_DarNOMEACESS: TStringField
      FieldKind = fkLookup
      FieldName = 'NOMEACESS'
      LookupDataSet = DM2.Tb_Assessor
      LookupKeyFields = 'CACODASS'
      LookupResultField = 'CARAZAO'
      KeyFields = 'CRCODASSE'
      Size = 40
      Lookup = True
    end
    object Tb_DarCRNPED_NIVEL: TFloatField
      FieldName = 'CRNPED_NIVEL'
      Origin = 'SG_ASSOC.CADDAR.CRNPED_NIVEL'
    end
    object Tb_DarIDDAR: TStringField
      FieldName = 'IDDAR'
      Size = 18
    end
    object Tb_DarCRCOMPETENCIA_DTINICIO: TDateTimeField
      FieldName = 'CRCOMPETENCIA_DTINICIO'
    end
    object Tb_Darcompetencia_obs: TStringField
      FieldKind = fkCalculated
      FieldName = 'competencia_obs'
      Size = 200
      Calculated = True
    end
    object Tb_DarCRCOMPETENCIA_TIPO: TFloatField
      FieldName = 'CRCOMPETENCIA_TIPO'
    end
    object Tb_DarCRVALOR_ACRES: TFloatField
      FieldName = 'CRVALOR_ACRES'
    end
    object Tb_DarCRCHAVE_ID: TFloatField
      FieldName = 'CRCHAVE_ID'
    end
    object Tb_DarCRCHAVE_ID_ANO: TFloatField
      FieldName = 'CRCHAVE_ID_ANO'
    end
    object Tb_DarCRDATAINCLUSAO: TDateTimeField
      FieldName = 'CRDATAINCLUSAO'
    end
    object Tb_DarCRQTDAJUSTE: TFloatField
      FieldName = 'CRQTDAJUSTE'
    end
    object Tb_DarCRID_PED01_NEW: TFloatField
      FieldName = 'CRID_PED01_NEW'
    end
    object Tb_DarCRID_NEW: TFloatField
      FieldName = 'CRID_NEW'
    end
    object Tb_DarCRID_LDR_NEW: TFloatField
      FieldName = 'CRID_LDR_NEW'
    end
    object Tb_DarCRLOTE_CAUCAO: TFloatField
      FieldName = 'CRLOTE_CAUCAO'
    end
  end
  object U_Dar: TUpdateSQL
    ModifySQL.Strings = (
      'update CADDAR'
      'set'
      '  CRCODEMP = :CRCODEMP,'
      '  CRCODECF = :CRCODECF,'
      '  CRNUMERO = :CRNUMERO,'
      '  CRDESD = :CRDESD,'
      '  CRDUP = :CRDUP,'
      '  CRCODCLI = :CRCODCLI,'
      '  CRNUMCUP = :CRNUMCUP,'
      '  CRDATCUP = :CRDATCUP,'
      '  CRVALOR = :CRVALOR,'
      '  CRVALOR_ACRES = :CRVALOR_ACRES,'
      '  CRTOTNF = :CRTOTNF,'
      '  CRDTEMIS = :CRDTEMIS,'
      '  CRDTVCTO = :CRDTVCTO,'
      '  CRDTPAG = :CRDTPAG,'
      '  CRDTBX = :CRDTBX,'
      '  CRLOTSEQ_CP = :CRLOTSEQ_CP,'
      '  CRNPED = :CRNPED,'
      '  CRORDEM = :CRORDEM,'
      '  CRVALPAG = :CRVALPAG,'
      '  CRCODVEN = :CRCODVEN,'
      '  CRCODASSE = :CRCODASSE,'
      '  CRCODV02 = :CRCODV02,'
      '  CRCODV03 = :CRCODV03,'
      '  CRCODTLV = :CRCODTLV,'
      '  CRCODCV = :CRCODCV,'
      '  CRSTATUS = :CRSTATUS,'
      '  CRDESC = :CRDESC,'
      '  CRDEVOL = :CRDEVOL,'
      '  CRJUROS = :CRJUROS,'
      '  CRCODBCO = :CRCODBCO,'
      '  CRLOTSEQ_LB = :CRLOTSEQ_LB,'
      '  CRLOTE = :CRLOTE,'
      '  CRICMSR = :CRICMSR,'
      '  CRDESCF = :CRDESCF,'
      '  CRDTDESCF = :CRDTDESCF,'
      '  CRJURD = :CRJURD,'
      '  CRDESCD = :CRDESCD,'
      '  CRMULTA = :CRMULTA,'
      '  CRTARBAN = :CRTARBAN,'
      '  CRQTDDM = :CRQTDDM,'
      '  CREMIDUP = :CREMIDUP,'
      '  CREMIBLQ = :CREMIBLQ,'
      '  CRVALFRE = :CRVALFRE,'
      '  CRNOSNUM = :CRNOSNUM,'
      '  CRDNOSNUM = :CRDNOSNUM,'
      '  CRACEITE = :CRACEITE,'
      '  CRESPECIE = :CRESPECIE,'
      '  CRCODBAR = :CRCODBAR,'
      '  CRCODDIG = :CRCODDIG,'
      '  CRNFACUM = :CRNFACUM,'
      '  CRTIPCOB = :CRTIPCOB,'
      '  CRDTALT = :CRDTALT,'
      '  CRUSRALT = :CRUSRALT,'
      '  CRUSRBX = :CRUSRBX,'
      '  CRCOMVEN = :CRCOMVEN,'
      '  CRCOMV02 = :CRCOMV02,'
      '  CRCOMV03 = :CRCOMV03,'
      '  CRCOMTEL = :CRCOMTEL,'
      '  CRCOMSUP = :CRCOMSUP,'
      '  CRCOMASSE = :CRCOMASSE,'
      '  CRSEMCOM = :CRSEMCOM,'
      '  CRLOTSEQ_FC = :CRLOTSEQ_FC,'
      '  CRCODLDR = :CRCODLDR,'
      '  CRLOTSEQ_CV = :CRLOTSEQ_CV,'
      '  CRLOTCV = :CRLOTCV,'
      '  CRLOTSEQ_CV02 = :CRLOTSEQ_CV02,'
      '  CRLOTCV02 = :CRLOTCV02,'
      '  CRLOTSEQ_CV03 = :CRLOTSEQ_CV03,'
      '  CRLOTCV03 = :CRLOTCV03,'
      '  CRLOTSEQ_CS = :CRLOTSEQ_CS,'
      '  CRLOTCS = :CRLOTCS,'
      '  CRLOTSEQ_CASSE = :CRLOTSEQ_CASSE,'
      '  CRLOTCASSE = :CRLOTCASSE,'
      '  CRCODORI = :CRCODORI,'
      '  CRLOTSEQ_CT = :CRLOTSEQ_CT,'
      '  CRLOTCT = :CRLOTCT,'
      '  CRCODUSR = :CRCODUSR,'
      '  CRHRALT = :CRHRALT,'
      '  CRTOTDI01 = :CRTOTDI01,'
      '  CRTOTDI02 = :CRTOTDI02,'
      '  CRTOTDI03 = :CRTOTDI03,'
      '  CRTOTDIVL = :CRTOTDIVL,'
      '  CRVALDES01 = :CRVALDES01,'
      '  CRVALDES02 = :CRVALDES02,'
      '  CRVLRDES = :CRVLRDES,'
      '  CRLEMAT = :CRLEMAT,'
      '  CRINST01 = :CRINST01,'
      '  CRINST02 = :CRINST02,'
      '  CRINST03 = :CRINST03,'
      '  CRINST04 = :CRINST04,'
      '  CRQTDPARC = :CRQTDPARC,'
      '  CRNUMPARC = :CRNUMPARC,'
      '  CRVALSEG = :CRVALSEG,'
      '  CRTBCOCOB = :CRTBCOCOB,'
      '  CRTOTCGRU = :CRTOTCGRU,'
      '  CRTOTSGRU = :CRTOTSGRU,'
      '  CRCODV04 = :CRCODV04,'
      '  CRNR = :CRNR,'
      '  CRCUSBCO = :CRCUSBCO,'
      '  CRCOMV04 = :CRCOMV04,'
      '  CRLOTSEQ_CV04 = :CRLOTSEQ_CV04,'
      '  CRLOTCV04 = :CRLOTCV04,'
      '  CRTOTIPI = :CRTOTIPI,'
      '  CREMIBOR = :CREMIBOR,'
      '  CRCHD_BANCO = :CRCHD_BANCO,'
      '  CRCHD_AGENCIA = :CRCHD_AGENCIA,'
      '  CRCHD_CC = :CRCHD_CC,'
      '  CRCHD_NUMERO = :CRCHD_NUMERO,'
      '  CRTCB = :CRTCB,'
      '  CRCAUCAO = :CRCAUCAO,'
      '  CRBCOCAU = :CRBCOCAU,'
      '  CRDTCAU = :CRDTCAU,'
      '  CRSPC_DTPEN = :CRSPC_DTPEN,'
      '  CRSPC_DTNEG = :CRSPC_DTNEG,'
      '  CRSERASA_DTNEG = :CRSERASA_DTNEG,'
      '  CRCODCTA = :CRCODCTA,'
      '  CRNOMCTA = :CRNOMCTA,'
      '  CRCODCC = :CRCODCC,'
      '  CRNOMCC = :CRNOMCC,'
      '  CRNATDC = :CRNATDC,'
      '  CRCODDEP = :CRCODDEP,'
      '  CRNOMDEP = :CRNOMDEP,'
      '  CRDESCMV = :CRDESCMV,'
      '  CRSEQ = :CRSEQ,'
      '  CRDATPED = :CRDATPED,'
      '  CRJURDEB = :CRJURDEB,'
      '  CRJURDEB_SAC = :CRJURDEB_SAC,'
      '  CRCOMIS_EXTRA = :CRCOMIS_EXTRA,'
      '  CRCX_CODCAI = :CRCX_CODCAI,'
      '  CRCX_LOTMOV = :CRCX_LOTMOV,'
      '  CRCHD_EMITENTE = :CRCHD_EMITENTE,'
      '  CRFIN_CODFIN = :CRFIN_CODFIN,'
      '  CRPFPGTO = :CRPFPGTO,'
      '  CRTABPV = :CRTABPV,'
      '  CRCODPV = :CRCODPV,'
      '  CRVINC02 = :CRVINC02,'
      '  CRCODFPGTO = :CRCODFPGTO,'
      '  CRLANCFIN = :CRLANCFIN,'
      '  CRRECFRENTE = :CRRECFRENTE,'
      '  CRNOMFPGTO = :CRNOMFPGTO,'
      '  CRCODCAR = :CRCODCAR,'
      '  CRTITPROT = :CRTITPROT,'
      '  CRTARPROT = :CRTARPROT,'
      '  CRTARPROT_DATA = :CRTARPROT_DATA,'
      '  CRCUSPROT = :CRCUSPROT,'
      '  CRCUSPROT_DATA = :CRCUSPROT_DATA,'
      '  CRLOTSEQ_EC = :CRLOTSEQ_EC,'
      '  CRLOTE_EC = :CRLOTE_EC'
      '  ,CRCOMPETENCIA_DTINICIO = :CRCOMPETENCIA_DTINICIO'
      '  ,CRCOMPETENCIA_TIPO = :CRCOMPETENCIA_TIPO'
      '  ,CRCHAVE_ID_ANO=:CRCHAVE_ID_ANO'
      '  ,CRCHAVE_ID=:CRCHAVE_ID'
      '  ,CRQTDAJUSTE=:CRQTDAJUSTE'
      '  ,CRDATAINCLUSAO=:CRDATAINCLUSAO'
      '  ,CRID_NEW = :CRID_NEW'
      '  ,CRLOTE_CAUCAO = :CRLOTE_CAUCAO'
      ''
      'where'
      '  CRCODEMP = :OLD_CRCODEMP and'
      '  CRCODECF = :OLD_CRCODECF and'
      '  CRNUMERO = :OLD_CRNUMERO and'
      '  CRDESD = :OLD_CRDESD and'
      '  CRDUP = :OLD_CRDUP and'
      '  CRCODCLI = :OLD_CRCODCLI and'
      '  CRNUMCUP = :OLD_CRNUMCUP and'
      '  CRDTEMIS = :OLD_CRDTEMIS and'
      '  CRSTATUS = :OLD_CRSTATUS')
    InsertSQL.Strings = (
      'insert into CADDAR'
      '  (CRCODEMP, CRCODECF, CRNUMERO, CRDESD, CRDUP, CRCODCLI, '
      'CRNUMCUP, CRDATCUP, '
      
        '   CRVALOR,CRVALOR_ACRES, CRTOTNF, CRDTEMIS, CRDTVCTO, CRDTPAG, ' +
        'CRDTBX, '
      'CRLOTSEQ_CP, '
      '   CRNPED, CRORDEM, CRVALPAG, CRCODVEN, CRCODASSE, CRCODV02, '
      'CRCODV03, '
      '   CRCODTLV, CRCODCV, CRSTATUS,  CRDESC, CRDEVOL, CRJUROS, '
      'CRCODBCO, '
      '   CRLOTSEQ_LB, CRLOTE, CRICMSR, CRDESCF, CRDTDESCF, CRJURD, '
      'CRDESCD, CRMULTA, '
      '   CRTARBAN, CRQTDDM, CREMIDUP, CREMIBLQ, CRVALFRE, CRNOSNUM, '
      'CRDNOSNUM, '
      '   CRACEITE, CRESPECIE, CRCODBAR, CRCODDIG, CRNFACUM, CRTIPCOB, '
      'CRDTALT, '
      '   CRUSRALT, CRUSRBX, CRCOMVEN, CRCOMV02, CRCOMV03, CRCOMTEL, '
      'CRCOMSUP, '
      '   CRCOMASSE, CRSEMCOM, CRLOTSEQ_FC, CRCODLDR, CRLOTSEQ_CV, '
      'CRLOTCV, CRLOTSEQ_CV02, '
      '   CRLOTCV02, CRLOTSEQ_CV03, CRLOTCV03, CRLOTSEQ_CS, CRLOTCS,'
      'CRLOTSEQ_CASSE, '
      
        '   CRLOTCASSE, CRCODORI, CRLOTSEQ_CT, CRLOTCT, CRCODUSR, CRHRALT' +
        ', '
      'CRTOTDI01, '
      '   CRTOTDI02, CRTOTDI03, CRTOTDIVL, CRVALDES01, CRVALDES02, '
      'CRVLRDES, CRLEMAT, '
      
        '   CRINST01, CRINST02, CRINST03, CRINST04, CRQTDPARC, CRNUMPARC,' +
        ' '
      'CRVALSEG, '
      '   CRTBCOCOB, CRTOTCGRU, CRTOTSGRU, CRCODV04, CRNR, CRCUSBCO, '
      'CRCOMV04, '
      '   CRLOTSEQ_CV04, CRLOTCV04, CRTOTIPI, CREMIBOR, CRCHD_BANCO, '
      'CRCHD_AGENCIA, '
      '   CRCHD_CC, CRCHD_NUMERO, CRTCB, CRCAUCAO, CRBCOCAU, CRDTCAU,'
      'CRSPC_DTPEN, '
      '   CRSPC_DTNEG, CRSERASA_DTNEG, CRCODCTA, CRNOMCTA, CRCODCC, '
      'CRNOMCC, CRNATDC, '
      '   CRCODDEP, CRNOMDEP, CRDESCMV, CRSEQ, CRDATPED, CRJURDEB, '
      'CRJURDEB_SAC, '
      '   CRCOMIS_EXTRA, CRCX_CODCAI, CRCX_LOTMOV, CRCHD_EMITENTE, '
      'CRFIN_CODFIN,'
      '   CRPFPGTO, CRTABPV, CRCODPV, CRVINC02, CRCODFPGTO, CRLANCFIN,'
      'CRRECFRENTE,'
      '   CRNOMFPGTO, CRCODCAR, CRTITPROT, CRTARPROT, CRTARPROT_DATA,'
      'CRCUSPROT,'
      '   CRCUSPROT_DATA, CRLOTSEQ_EC, CRLOTE_EC'
      ',CRCOMPETENCIA_DTINICIO'
      ',CRCOMPETENCIA_TIPO'
      ',CRCHAVE_ID_ANO'
      ',CRCHAVE_ID'
      ',CRQTDAJUSTE'
      ',CRDATAINCLUSAO'
      ',CRID_NEW'
      ',CRLOTE_CAUCAO '
      '   )'
      'values'
      '  (:CRCODEMP, :CRCODECF, :CRNUMERO, :CRDESD, :CRDUP, :CRCODCLI,'
      ':CRNUMCUP,'
      
        '   :CRDATCUP, :CRVALOR, :CRVALOR_ACRES, :CRTOTNF, :CRDTEMIS, :CR' +
        'DTVCTO, :CRDTPAG,'
      ':CRDTBX,'
      '   :CRLOTSEQ_CP, :CRNPED, :CRORDEM, :CRVALPAG, :CRCODVEN, '
      ':CRCODASSE, :CRCODV02, '
      '   :CRCODV03, :CRCODTLV, :CRCODCV, :CRSTATUS, :CRDESC,'
      ':CRDEVOL,'
      
        '   :CRJUROS, :CRCODBCO, :CRLOTSEQ_LB, :CRLOTE, :CRICMSR, :CRDESC' +
        'F, '
      ':CRDTDESCF, '
      '   :CRJURD, :CRDESCD, :CRMULTA, :CRTARBAN, :CRQTDDM, :CREMIDUP, '
      ':CREMIBLQ, '
      '   :CRVALFRE, :CRNOSNUM, :CRDNOSNUM, :CRACEITE, :CRESPECIE, '
      ':CRCODBAR, '
      
        '   :CRCODDIG, :CRNFACUM, :CRTIPCOB, :CRDTALT, :CRUSRALT, :CRUSRB' +
        'X, '
      ':CRCOMVEN, '
      '   :CRCOMV02, :CRCOMV03, :CRCOMTEL, :CRCOMSUP, :CRCOMASSE, '
      ':CRSEMCOM, :CRLOTSEQ_FC, '
      
        '   :CRCODLDR, :CRLOTSEQ_CV, :CRLOTCV, :CRLOTSEQ_CV02, :CRLOTCV02' +
        ','
      ':CRLOTSEQ_CV03, '
      '   :CRLOTCV03, :CRLOTSEQ_CS, :CRLOTCS, :CRLOTSEQ_CASSE, '
      ':CRLOTCASSE, :CRCODORI, '
      '   :CRLOTSEQ_CT, :CRLOTCT, :CRCODUSR, :CRHRALT, :CRTOTDI01,'
      ':CRTOTDI02, '
      '   :CRTOTDI03, :CRTOTDIVL, :CRVALDES01, :CRVALDES02, :CRVLRDES, '
      ':CRLEMAT, '
      
        '   :CRINST01, :CRINST02, :CRINST03, :CRINST04, :CRQTDPARC, :CRNU' +
        'MPARC, '
      
        '   :CRVALSEG, :CRTBCOCOB, :CRTOTCGRU, :CRTOTSGRU, :CRCODV04, :CR' +
        'NR, '
      ':CRCUSBCO,'
      '   :CRCOMV04, :CRLOTSEQ_CV04, :CRLOTCV04, :CRTOTIPI, :CREMIBOR, '
      ':CRCHD_BANCO, '
      '   :CRCHD_AGENCIA, :CRCHD_CC, :CRCHD_NUMERO, :CRTCB, :CRCAUCAO, '
      ':CRBCOCAU, '
      '   :CRDTCAU, :CRSPC_DTPEN, :CRSPC_DTNEG, :CRSERASA_DTNEG, '
      ':CRCODCTA, :CRNOMCTA, '
      
        '   :CRCODCC, :CRNOMCC, :CRNATDC, :CRCODDEP, :CRNOMDEP, :CRDESCMV' +
        ', '
      ':CRSEQ, '
      '   :CRDATPED, :CRJURDEB, :CRJURDEB_SAC, :CRCOMIS_EXTRA,'
      ':CRCX_CODCAI, :CRCX_LOTMOV, '
      
        '   :CRCHD_EMITENTE, :CRFIN_CODFIN, :CRPFPGTO, :CRTABPV, :CRCODPV' +
        ', '
      ':CRVINC02, '
      
        '   :CRCODFPGTO, :CRLANCFIN, :CRRECFRENTE, :CRNOMFPGTO, :CRCODCAR' +
        ', '
      ':CRTITPROT, '
      '   :CRTARPROT, :CRTARPROT_DATA, :CRCUSPROT, :CRCUSPROT_DATA, '
      ':CRLOTSEQ_EC,'
      '   :CRLOTE_EC'
      ',:CRCOMPETENCIA_DTINICIO'
      ',:CRCOMPETENCIA_TIPO'
      ',:CRCHAVE_ID_ANO'
      ',:CRCHAVE_ID'
      ',:CRQTDAJUSTE'
      ',:CRDATAINCLUSAO'
      ',:CRID_NEW'
      ',:CRLOTE_CAUCAO'
      '   )')
    DeleteSQL.Strings = (
      'delete from CADDAR'
      'where'
      '  CRCODEMP = :OLD_CRCODEMP and'
      '  CRCODECF = :OLD_CRCODECF and'
      '  CRNUMERO = :OLD_CRNUMERO and'
      '  CRDESD = :OLD_CRDESD and'
      '  CRDUP = :OLD_CRDUP and'
      '  CRCODCLI = :OLD_CRCODCLI and'
      '  CRNUMCUP = :OLD_CRNUMCUP and'
      '  CRDTEMIS = :OLD_CRDTEMIS and'
      '  CRSTATUS = :OLD_CRSTATUS')
    Left = 685
    Top = 173
  end
  object Tb_CR_Obs: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'CACODEMP'
      ',CANUMERO'
      ',CADESD'
      ',CACODFOR'
      ',CADTEMIS'
      ',CASEQ'
      ',CAVALOR'
      ',CADUP'
      ',CADTVCTO'
      ',CASTATUS'
      ',CAVALDES'
      ',CADTDESC'
      ',CADESC'
      ',CADEVOL'
      ',CAJUROS'
      ',CABANCO'
      ',CALOTSEQ_LB'
      ',CALOTE'
      ',CALOTSEQ_CP'
      ',CACHAVEP'
      ',CADTBX'
      ',CADTPAG'
      ',CAVALPAG'
      ',CAUSRBAI'
      ',CACAIXA'
      ',CALOTSEQ_FC'
      ',CACODLDR'
      ',CAOBS'
      ',CACODUSR'
      ',CADTINC'
      ',CADTALT'
      ',CAHRALT'
      ',CANOSNUM'
      ',CATEMBOL'
      ',CALEMAT'
      ',CACODCTA'
      ',CANOMCTA'
      ',CACODCC'
      ',CANOMCC'
      ',CANATDC'
      ',CACODDEP'
      ',CANOMDEP'
      ',CADESCMV'
      ',CAQTDPARC'
      ',CANUMPARC'
      ',CASERIE'
      ',CAMODELO'
      ',CACFO'
      ',CADTENT'
      ',CAVALORNF'
      ',CABASEN'
      ',CAALIQ'
      ',CAICMSN'
      ',CANETIPO'
      ',CANUMERONF'
      ',CADATHOR_REP'
      ',CACHAVEP_NIVEL'
      ',CAVALOR_ACRES'
      ',ROWID AS IDDAP FROM CADDAP where'
      'CACODEMP is null')
    UpdateMode = upWhereKeyOnly
    UpdateObject = U_CR_Obs
    Left = 483
    Top = 193
    object Tb_CR_ObsCROBS: TMemoField
      FieldName = 'CROBS'
      BlobType = ftMemo
    end
  end
  object U_CR_Obs: TUpdateSQL
    Left = 519
    Top = 169
  end
  object Src_CR_Obs: TDataSource
    DataSet = Tb_CR_Obs
    Left = 554
    Top = 177
  end
  object src_remessa: TDataSource
    DataSet = qr_remessa
    Left = 212
    Top = 156
  end
  object src_retorno: TDataSource
    DataSet = qr_retorno
    Left = 268
    Top = 156
  end
  object qr_remessa: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT RECODEMP,RELOTSEQ,RECHAVE,RECODBCO'
      
        ',CASE WHEN RELAYOUT=0 THEN '#39'CNAB400'#39' else '#39'CNAB240'#39' end AS LAYOU' +
        'T'
      ',REORDEM'
      ',RECODEMP_DUP'
      ',RECODECF'
      ',RENUMDUP'
      ',REDESD'
      ',RETIPO'
      ',REDTEMIS'
      ',REVALDUP'
      ',RECODCLI'
      ',RENOSNUM'
      ',REDNOSNUM'
      ',REDATREM'
      ',RECODCOM'
      ',RECODCAR'
      ',RECODVARCAR'
      ',RECODPROT'
      ',RECODPROT02'
      ',RECODPROT03'
      ',REPROTESTO_QTDD'
      ',REDTVCTO'
      ',REDESCF'
      ',REDTDESCF'
      'from CADREMBCO')
    Left = 212
    Top = 196
    object qr_remessaRECODEMP: TFloatField
      FieldName = 'RECODEMP'
    end
    object qr_remessaRELOTSEQ: TFloatField
      FieldName = 'RELOTSEQ'
    end
    object qr_remessaRECHAVE: TFloatField
      DisplayLabel = 'Chave Remessa'
      FieldName = 'RECHAVE'
    end
    object qr_remessaRECODBCO: TFloatField
      DisplayLabel = 'Cod.Bco'
      FieldName = 'RECODBCO'
    end
    object qr_remessaLAYOUT: TStringField
      DisplayLabel = 'Layout'
      FieldName = 'LAYOUT'
      Size = 10
    end
    object qr_remessaREORDEM: TFloatField
      FieldName = 'REORDEM'
    end
    object qr_remessaRECODEMP_DUP: TFloatField
      FieldName = 'RECODEMP_DUP'
    end
    object qr_remessaRECODECF: TFloatField
      FieldName = 'RECODECF'
    end
    object qr_remessaRENUMDUP: TFloatField
      FieldName = 'RENUMDUP'
    end
    object qr_remessaREDESD: TStringField
      FieldName = 'REDESD'
      Size = 2
    end
    object qr_remessaRETIPO: TFloatField
      FieldName = 'RETIPO'
    end
    object qr_remessaREDTEMIS: TDateTimeField
      FieldName = 'REDTEMIS'
    end
    object qr_remessaREVALDUP: TFloatField
      FieldName = 'REVALDUP'
    end
    object qr_remessaRECODCLI: TFloatField
      FieldName = 'RECODCLI'
    end
    object qr_remessaRENOSNUM: TStringField
      FieldName = 'RENOSNUM'
    end
    object qr_remessaREDNOSNUM: TStringField
      FieldName = 'REDNOSNUM'
      Size = 1
    end
    object qr_remessaREDATREM: TDateTimeField
      DisplayLabel = 'Data Remessa'
      FieldName = 'REDATREM'
    end
    object qr_remessaRECODCOM: TFloatField
      DisplayLabel = 'Comando'
      FieldName = 'RECODCOM'
    end
    object qr_remessaRECODCAR: TFloatField
      DisplayLabel = 'Carteira'
      FieldName = 'RECODCAR'
    end
    object qr_remessaRECODVARCAR: TFloatField
      DisplayLabel = 'Variacao'
      FieldName = 'RECODVARCAR'
    end
    object qr_remessaRECODPROT: TFloatField
      DisplayLabel = 'Cod.Prot.01'
      FieldName = 'RECODPROT'
    end
    object qr_remessaRECODPROT02: TFloatField
      DisplayLabel = 'Cod.Prot.02'
      FieldName = 'RECODPROT02'
    end
    object qr_remessaRECODPROT03: TFloatField
      DisplayLabel = 'Cod.Prot.03'
      FieldName = 'RECODPROT03'
    end
    object qr_remessaREPROTESTO_QTDD: TFloatField
      DisplayLabel = 'Qtd.dias p/Proesto'
      FieldName = 'REPROTESTO_QTDD'
    end
    object qr_remessaREDESCF: TFloatField
      DisplayLabel = 'Desconto Financeiro'
      FieldName = 'REDESCF'
    end
    object qr_remessaREDTDESCF: TDateTimeField
      DisplayLabel = 'Dt..Desconto'
      FieldName = 'REDTDESCF'
    end
    object qr_remessaREDTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'REDTVCTO'
    end
    object qr_remessabcbanco: TStringField
      DisplayLabel = 'Nome do Banco'
      FieldName = 'bcbanco'
      Size = 100
    end
  end
  object qr_retorno: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 276
    Top = 196
    object qr_retornoRET_NOMEARQ: TStringField
      DisplayLabel = 'Acao'
      FieldName = 'RET_NOMEARQ'
      Size = 254
    end
    object qr_retornoRET_DATHORARQ: TDateTimeField
      DisplayLabel = 'Data Arq'
      FieldName = 'RET_DATHORARQ'
    end
    object qr_retornoRET_PASTAARQ: TStringField
      DisplayLabel = 'Pasta Arquivo'
      FieldName = 'RET_PASTAARQ'
      Size = 254
    end
    object qr_retornoRET_COMPUTADOR: TStringField
      DisplayLabel = 'Computador'
      FieldName = 'RET_COMPUTADOR'
      Size = 254
    end
    object qr_retornoRET_ID_SEQ: TFloatField
      DisplayLabel = 'Id Seq'
      FieldName = 'RET_ID_SEQ'
    end
    object qr_retornoRET_CHAVETIT_ID_ANO: TFloatField
      DisplayLabel = 'Chave Id'
      FieldName = 'RET_CHAVETIT_ID_ANO'
    end
    object qr_retornoRET_CODEMP_TIT: TFloatField
      DisplayLabel = 'C'#243'd.Empresa'
      FieldName = 'RET_CODEMP_TIT'
    end
    object qr_retornoRET_CHAVETIT_ID: TFloatField
      DisplayLabel = 'Chave Titulo'
      FieldName = 'RET_CHAVETIT_ID'
    end
    object qr_retornoRET_CODACAO: TFloatField
      DisplayLabel = 'C'#243'd.Acao'
      FieldName = 'RET_CODACAO'
    end
    object qr_retornoRET_DATALIQ: TDateTimeField
      DisplayLabel = 'Data Liquidacao'
      FieldName = 'RET_DATALIQ'
    end
    object qr_retornoRET_DATACRED: TDateTimeField
      DisplayLabel = 'Data Credito'
      FieldName = 'RET_DATACRED'
    end
    object qr_retornoRET_VALTAR: TFloatField
      DisplayLabel = 'Valor Tafira'
      FieldName = 'RET_VALTAR'
    end
    object qr_retornoRET_VALIOF: TFloatField
      DisplayLabel = 'Valor IOF'
      FieldName = 'RET_VALIOF'
    end
    object qr_retornoRET_VALABAT: TFloatField
      DisplayLabel = 'Valor Abatimento'
      FieldName = 'RET_VALABAT'
    end
    object qr_retornoRET_VALDESC: TFloatField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'RET_VALDESC'
    end
    object qr_retornoRET_VALLANC: TFloatField
      DisplayLabel = 'Valor Lancamento'
      FieldName = 'RET_VALLANC'
    end
    object qr_retornoRET_VALJURMOR: TFloatField
      DisplayLabel = 'Juros de Mora'
      FieldName = 'RET_VALJURMOR'
    end
    object qr_retornoRET_VALOUTREC: TFloatField
      DisplayLabel = 'Outros Recebimento'
      FieldName = 'RET_VALOUTREC'
    end
    object qr_retornoRET_AGENCIAREC: TFloatField
      DisplayLabel = 'Agencia Rec'
      FieldName = 'RET_AGENCIAREC'
    end
    object qr_retornoRET_CODBCOREC: TFloatField
      DisplayLabel = 'Banco Rec'
      FieldName = 'RET_CODBCOREC'
    end
    object qr_retornoRET_NOMNATREC: TStringField
      DisplayLabel = 'Natureza Recimento'
      FieldName = 'RET_NOMNATREC'
      Size = 254
    end
    object qr_retornoRET_NATREC: TFloatField
      DisplayLabel = 'Nat Recebimento'
      FieldName = 'RET_NATREC'
    end
    object qr_retornoRET_NOMACAO: TStringField
      DisplayLabel = 'Nome da a'#231#227'o'
      FieldName = 'RET_NOMACAO'
      Size = 254
    end
  end
  object src_comissoes: TDataSource
    DataSet = qr_comissoes
    Left = 324
    Top = 148
  end
  object qr_comissoes: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 324
    Top = 188
    object qr_comissoesTIPOCOM: TStringField
      DisplayLabel = 'Tipo de Comiss'#227'o'
      FieldName = 'TIPOCOM'
      Size = 100
    end
    object qr_comissoesVALOR_COMISSAO: TFloatField
      DisplayLabel = 'Valor da Comiss'#227'o'
      FieldName = 'VALOR_COMISSAO'
    end
    object qr_comissoesBASE_COMISSAO: TFloatField
      DisplayLabel = 'Base de Comiss'#227'o'
      FieldName = 'BASE_COMISSAO'
    end
    object qr_comissoesDATA_LOTE: TDateTimeField
      DisplayLabel = 'Data do Lote'
      FieldName = 'DATA_LOTE'
    end
    object qr_comissoesCL2DESD: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'CL2DESD'
      Size = 2
    end
    object qr_comissoesCL1CHAVE: TFloatField
      DisplayLabel = 'Chave do Lote'
      FieldName = 'CL1CHAVE'
    end
  end
end
