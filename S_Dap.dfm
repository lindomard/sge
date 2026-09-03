inherited Frm_Dap: TFrm_Dap
  Left = 217
  Top = 38
  Width = 818
  Height = 674
  Caption = 'Manuten'#231#227'o na tela de contas a pagar'
  FormStyle = fsNormal
  KeyPreview = True
  OldCreateOrder = True
  Visible = False
  OnCloseQuery = FormCloseQuery
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 35
    Width = 810
    Height = 60
    inherited lbl_emp: TLabel
      Left = 765
      Height = 58
    end
    inherited Pesquisapor: TLabel
      Left = 6
      Top = 15
    end
    object Label53: TLabel [2]
      Left = 460
      Top = 2
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
      Left = 583
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
    object sbt_salva_conf: TSpeedButton [4]
      Left = 712
      Top = 16
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
    object Label40: TLabel [5]
      Left = 19
      Top = 34
      Width = 66
      Height = 13
      Caption = 'Periodo de:'
      FocusControl = CAMPO
    end
    object Label41: TLabel [6]
      Left = 227
      Top = 36
      Width = 8
      Height = 13
      Caption = #224
      FocusControl = CAMPO
    end
    object Label42: TLabel [7]
      Left = 385
      Top = 39
      Width = 60
      Height = 13
      Caption = 'Qual data:'
      FocusControl = CAMPO
    end
    object snb_salvardatas: TSpeedButton [8]
      Left = 591
      Top = 35
      Width = 172
      Height = 22
      Hint = 'Salvar Configura'#231#227'o'
      Caption = 'Salvar datas como padr'#227'o'
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
      OnClick = snb_salvardatasClick
    end
    inherited BBnAtu: TBitBtn
      Left = 378
      Top = 10
      Width = 82
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Left = 89
      Top = 12
      Width = 110
      ItemIndex = 0
      Text = 'N'#250'mero'
      OnExit = CAMPOExit
      Items.Strings = (
        'N'#250'mero'
        'C'#243'digo do Fornecedor'
        'Data de Emiss'#227'o'
        'Data de vencimento'
        'Valor'
        'Raz'#227'o Social')
    end
    inherited Edit1: TMaskEdit
      Left = 198
      Top = 11
      Width = 178
      EditMask = '##############;1; '
      MaxLength = 14
      Text = '              '
      OnExit = Edit1Exit
    end
    object cb_listar: TComboBox
      Left = 460
      Top = 15
      Width = 122
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 3
      Text = 'todas'
      OnChange = cb_listarChange
      OnClick = cb_listarClick
      Items.Strings = (
        'todas'
        'em abertas'
        'pagas')
    end
    object cb_ordem: TComboBox
      Left = 583
      Top = 15
      Width = 122
      Height = 21
      BevelKind = bkSoft
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 4
      Text = 'Padr'#227'o(Nenhuma)'
      OnChange = cb_ordemChange
      Items.Strings = (
        'Padr'#227'o(Nenhuma)'
        'Emissao'
        'Numero'
        'Vencimento')
    end
    object edt_datini: TDateEdit
      Left = 89
      Top = 31
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 5
    end
    object edt_datfin: TDateEdit
      Left = 256
      Top = 33
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 6
    end
    object cb_tipopesq: TComboBox
      Left = 460
      Top = 37
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
      OnChange = cb_listarChange
      OnClick = cb_listarClick
      Items.Strings = (
        'Baixa'
        'Emissao'
        'Pagamento'
        'Vencimento')
    end
  end
  inherited PC1: TPageControl
    Top = 95
    Width = 810
    Height = 514
    OnChange = PC1Change
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 63
        Top = 6
        Width = 48
        Height = 13
        Caption = 'N'#250'mero:'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 223
        Top = 6
        Width = 48
        Height = 13
        Caption = 'Parcela:'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 16
        Top = 25
        Width = 95
        Height = 13
        Caption = 'C'#243'd.Fornecedor:'
        FocusControl = DBE_codfor
      end
      object Label4: TLabel
        Left = 11
        Top = 60
        Width = 100
        Height = 13
        Caption = 'Data de Emiss'#227'o:'
      end
      object Label6: TLabel
        Left = 229
        Top = 61
        Width = 106
        Height = 13
        Caption = 'Data Vencimento.:'
      end
      object Label5: TLabel
        Left = 77
        Top = 76
        Width = 34
        Height = 13
        Caption = 'Valor:'
        FocusControl = DBE_valor
      end
      object Label13: TLabel
        Left = 44
        Top = 96
        Width = 67
        Height = 13
        Caption = 'C'#243'd.Banco:'
        FocusControl = DBEdit14
      end
      object Label7: TLabel
        Left = 70
        Top = 115
        Width = 41
        Height = 13
        Caption = 'Status:'
        FocusControl = dbe_status
      end
      object Label8: TLabel
        Left = 19
        Top = 131
        Width = 92
        Height = 13
        Caption = 'Valor Desconto:'
        FocusControl = DBE_valdes
      end
      object Label9: TLabel
        Left = 245
        Top = 131
        Width = 90
        Height = 13
        Caption = 'Data Desconto:'
      end
      object Label11: TLabel
        Left = 300
        Top = 152
        Width = 35
        Height = 13
        Caption = 'Juros:'
        FocusControl = DBEdit11
      end
      object Label10: TLabel
        Left = 13
        Top = 148
        Width = 98
        Height = 13
        Caption = 'Desc.Concedido:'
        FocusControl = DBEdit10
      end
      object Label12: TLabel
        Left = 26
        Top = 166
        Width = 85
        Height = 13
        Caption = 'Situa'#231'ao Pgto:'
      end
      object Label14: TLabel
        Left = 233
        Top = 173
        Width = 102
        Height = 13
        Caption = 'Chave do Pedido:'
      end
      object Label15: TLabel
        Left = 250
        Top = 188
        Width = 83
        Height = 13
        Caption = 'Lote de Baixa:'
      end
      object Label16: TLabel
        Left = 25
        Top = 184
        Width = 85
        Height = 13
        Caption = 'Data da Baixa:'
      end
      object Label18: TLabel
        Left = 30
        Top = 42
        Width = 82
        Height = 13
        Caption = 'Denomina'#231#227'o:'
        FocusControl = DBE_codfor
      end
      object Label19: TLabel
        Left = 223
        Top = 115
        Width = 216
        Height = 13
        Caption = 'Nosso N'#250'mero(N'#250'm.T'#237'tulo no Banco):'
      end
      object Label21: TLabel
        Left = 41
        Top = 204
        Width = 67
        Height = 13
        Caption = 'Valor Pago:'
      end
      object Label50: TLabel
        Left = 445
        Top = 2
        Width = 263
        Height = 13
        Alignment = taCenter
        AutoSize = False
        Caption = 'Tipo do Documento'
        Color = 16744576
        ParentColor = False
      end
      object Label26: TLabel
        Left = 243
        Top = 204
        Width = 90
        Height = 13
        Caption = 'Usu'#225'rio Baixou:'
      end
      object Label27: TLabel
        Left = -9
        Top = 221
        Width = 117
        Height = 13
        Caption = 'Data do Pagamento:'
      end
      object Label55: TLabel
        Left = 445
        Top = 44
        Width = 48
        Height = 13
        Caption = 'Parcela:'
      end
      object Label56: TLabel
        Left = 514
        Top = 44
        Width = 7
        Height = 13
        Caption = '/'
      end
      object Label39: TLabel
        Left = 267
        Top = 76
        Width = 69
        Height = 13
        Caption = 'Acrescimos:'
        FocusControl = DBE_CAVALOR_ACRES
      end
      object Label38: TLabel
        Left = 445
        Top = 98
        Width = 115
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Data de Inclus'#227'o..:'
      end
      object Label17: TLabel
        Left = 445
        Top = 61
        Width = 115
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Competencia Tipo:'
      end
      object DBText1: TDBText
        Left = 445
        Top = 77
        Width = 115
        Height = 13
        Alignment = taRightJustify
        DataField = 'competencia_obs'
        DataSource = Src_Dap
      end
      object lbl_competencia_barra: TLabel
        Left = 603
        Top = 77
        Width = 7
        Height = 13
        Caption = '/'
      end
      object Label67: TLabel
        Left = 292
        Top = 221
        Width = 41
        Height = 13
        Caption = 'Chave:'
      end
      object DBText2: TDBText
        Left = 332
        Top = 221
        Width = 65
        Height = 17
        Alignment = taRightJustify
        DataField = 'CACHAVE_ID'
        DataSource = Src_CP
      end
      object Label68: TLabel
        Left = 398
        Top = 222
        Width = 7
        Height = 13
        Caption = '/'
      end
      object DBText3: TDBText
        Left = 404
        Top = 221
        Width = 27
        Height = 17
        DataField = 'CACHAVE_ID_ANO'
        DataSource = Src_CP
      end
      object Label51: TLabel
        Left = 5
        Top = 238
        Width = 128
        Height = 13
        Caption = 'Notas de Referencias:'
        FocusControl = DBEdit19
      end
      object Label52: TLabel
        Left = 44
        Top = 256
        Width = 63
        Height = 13
        Caption = 'C'#243'd.Fpgto:'
        FocusControl = DBE_CADCADFPTO
      end
      object DB_CACOMPETENCIA_TIPO: TRxDBComboBox
        Left = 565
        Top = 57
        Width = 169
        Height = 21
        Style = csDropDownList
        Ctl3D = False
        DataField = 'CACOMPETENCIA_TIPO'
        DataSource = Src_CP
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
        TabOrder = 10
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
      object DBEdit1: TDBEdit
        Left = 115
        Top = 3
        Width = 100
        Height = 19
        Hint = 'N'#250'mero do T'#237'tulo'
        Ctl3D = False
        DataField = 'CANUMERO'
        DataSource = Src_CP
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnKeyDown = DBEdit1KeyDown
      end
      object DBEdit2: TDBEdit
        Left = 330
        Top = 3
        Width = 25
        Height = 19
        Hint = 'Desdobramento/parcela do T'#237'tulo'
        Ctl3D = False
        DataField = 'CADESD'
        DataSource = Src_CP
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
      end
      object DBE_NOMFOR: TDBEdit
        Left = 213
        Top = 21
        Width = 226
        Height = 19
        TabStop = False
        Color = 16760799
        Ctl3D = False
        DataField = 'nomefor'
        DataSource = Src_CP
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
      object DBE_codfor: TDBEdit
        Left = 115
        Top = 21
        Width = 100
        Height = 19
        Hint = 'C'#243'digo do Fornecedor'#13#10'Para Consultar Digite o'#13#10'Nome'
        Ctl3D = False
        DataField = 'CACODFOR'
        DataSource = Src_CP
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnExit = DBE_codforExit
        OnKeyPress = DBE_codforKeyPress
      end
      object DBE_valor: TDBEdit
        Left = 115
        Top = 75
        Width = 100
        Height = 19
        Hint = 'Valor do T'#237'tulo'
        Ctl3D = False
        DataField = 'CAVALOR'
        DataSource = Src_CP
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnKeyPress = DBE_valorKeyPress
      end
      object DBEdit14: TDBEdit
        Left = 115
        Top = 93
        Width = 100
        Height = 19
        Hint = 'c'#243'digo do Banco do '#13#10'T'#237'tulo. Para Consultar'#13#10'Digite o Nome'
        Ctl3D = False
        DataField = 'CABANCO'
        DataSource = Src_CP
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
        OnExit = DBEdit14Exit
        OnKeyPress = DBEdit14KeyPress
      end
      object DBEdit15: TDBEdit
        Left = 214
        Top = 93
        Width = 225
        Height = 19
        TabStop = False
        Color = 16760799
        Ctl3D = False
        DataField = 'nombco'
        DataSource = Src_CP
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 17
      end
      object dbe_status: TDBEdit
        Left = 115
        Top = 111
        Width = 100
        Height = 19
        TabStop = False
        Color = 16760799
        Ctl3D = False
        DataField = 'CASTATUS'
        DataSource = Src_CP
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 18
      end
      object DBE_valdes: TDBEdit
        Left = 115
        Top = 129
        Width = 100
        Height = 19
        Hint = 'Valor do Desconto'
        Ctl3D = False
        DataField = 'CAVALDES'
        DataSource = Src_CP
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 19
        OnKeyPress = DBE_valorKeyPress
      end
      object DBEdit10: TDBEdit
        Left = 115
        Top = 147
        Width = 100
        Height = 19
        TabStop = False
        Color = 16760799
        Ctl3D = False
        DataField = 'CADESC'
        DataSource = Src_CP
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 21
      end
      object DBEdit12: TDBEdit
        Left = 115
        Top = 165
        Width = 100
        Height = 19
        TabStop = False
        Color = 16760799
        Ctl3D = False
        DataField = 'situacao'
        DataSource = Src_CP
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 22
      end
      object DBEdit11: TDBEdit
        Left = 339
        Top = 147
        Width = 100
        Height = 19
        TabStop = False
        Color = 16760799
        Ctl3D = False
        DataField = 'CAJUROS'
        DataSource = Src_CP
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 23
      end
      object DBEdit18: TDBEdit
        Left = 339
        Top = 165
        Width = 100
        Height = 19
        TabStop = False
        Color = 16760799
        Ctl3D = False
        DataField = 'CACHAVEP'
        DataSource = Src_CP
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 24
      end
      object DBEdit16: TDBEdit
        Left = 339
        Top = 183
        Width = 100
        Height = 19
        TabStop = False
        Color = 16760799
        Ctl3D = False
        DataField = 'CALOTE'
        DataSource = Src_CP
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 25
      end
      object DBE_denom: TDBEdit
        Left = 115
        Top = 39
        Width = 324
        Height = 19
        TabStop = False
        Color = 16760799
        Ctl3D = False
        DataField = 'denom'
        DataSource = Src_CP
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 26
      end
      object st_leitor: TStaticText
        Left = 214
        Top = 4
        Width = 122
        Height = 17
        BorderStyle = sbsSunken
        Caption = '<F3>-Para Leitura '#211'ptica'
        Color = clAqua
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        TabOrder = 27
        Visible = False
      end
      object dbe_valpag: TDBEdit
        Left = 115
        Top = 201
        Width = 100
        Height = 19
        TabStop = False
        Color = 16760799
        Ctl3D = False
        DataField = 'CAVALPAG'
        DataSource = Src_CP
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 28
      end
      object dbcbcombol: TDBCheckBox
        Left = 557
        Top = 41
        Width = 162
        Height = 17
        Hint = 'Se Marcado possui boleto banc'#225'rio'#13#10'caso contrario n'#227'o'
        Caption = 'com Boleto Banc'#225'rio'
        DataField = 'CATEMBOL'
        DataSource = Src_CP
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        ValueChecked = '0'
        ValueUnchecked = '1'
      end
      object GroupBox10: TGroupBox
        Left = 0
        Top = 379
        Width = 802
        Height = 107
        Align = alBottom
        Caption = 'Dados Padr'#227'o Para Lan'#231'amento do Fluxo de Caixa:'
        TabOrder = 29
        object Label22: TLabel
          Left = 17
          Top = 60
          Width = 96
          Height = 13
          Caption = 'Centro de Custo:'
        end
        object Label23: TLabel
          Left = 27
          Top = 39
          Width = 84
          Height = 13
          Caption = 'Departamento:'
        end
        object Label24: TLabel
          Left = 13
          Top = 81
          Width = 98
          Height = 13
          Caption = 'Desc.movimento:'
        end
        object Label25: TLabel
          Left = 10
          Top = 19
          Width = 102
          Height = 13
          Caption = 'C'#243'digo do Banco:'
          FocusControl = DBEdit28
        end
        object lbl_obs: TLabel
          Left = 536
          Top = 18
          Width = 192
          Height = 13
          Caption = '[SHIFT+TAB]Para Campo Anterior'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 16711808
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label20: TLabel
          Left = 538
          Top = 85
          Width = 88
          Height = 13
          Caption = 'Fluxo de Caixa:'
        end
        object DBE_CACODDEP: TDBEdit
          Left = 116
          Top = 36
          Width = 68
          Height = 21
          Ctl3D = True
          DataField = 'CACODDEP'
          DataSource = Src_CP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnExit = DBE_CACODDEPExit
          OnKeyDown = DBE_CACODDEPKeyDown
        end
        object DBE_CACODCC: TDBEdit
          Left = 116
          Top = 58
          Width = 68
          Height = 21
          Ctl3D = True
          DataField = 'CACODCC'
          DataSource = Src_CP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          OnExit = DBE_CACODCCExit
          OnKeyDown = DBE_CACODCCKeyDown
        end
        object DBEdit25: TDBEdit
          Left = 116
          Top = 81
          Width = 418
          Height = 21
          Ctl3D = True
          DataField = 'CADESCMV'
          DataSource = Src_CP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
        end
        object DBEdit28: TDBEdit
          Left = 116
          Top = 14
          Width = 68
          Height = 21
          Hint = 'c'#243'digo do Banco do '#13#10'T'#237'tulo. Para Consultar'#13#10'Digite o Nome'
          Ctl3D = True
          DataField = 'CACODCTA'
          DataSource = Src_CP
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnExit = DBEdit28Exit
          OnKeyPress = DBEdit28KeyPress
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
          DataField = 'CANOMCTA'
          DataSource = Src_CP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
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
          DataField = 'CANOMDEP'
          DataSource = Src_CP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          ParentCtl3D = False
          ParentFont = False
          Sorted = True
          TabOrder = 3
          OnEnter = DBCB_NOMDEPEnter
          OnExit = DBCB_NOMDEPExit
          OnKeyDown = DBE_CACODDEPKeyDown
        end
        object DBCB_NOMCCU: TDBComboBox
          Left = 183
          Top = 59
          Width = 318
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          Color = 13565951
          Ctl3D = True
          DataField = 'CANOMCC'
          DataSource = Src_CP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ItemHeight = 13
          ParentCtl3D = False
          ParentFont = False
          Sorted = True
          TabOrder = 5
          OnEnter = DBCB_NOMCCUEnter
          OnExit = DBCB_NOMCCUExit
          OnKeyDown = DBE_CACODCCKeyDown
        end
        object DBEdit9: TDBEdit
          Left = 503
          Top = 58
          Width = 31
          Height = 21
          Color = 16760799
          Ctl3D = True
          DataField = 'CANATDC'
          DataSource = Src_CP
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
        object DBEdit22: TDBEdit
          Left = 631
          Top = 83
          Width = 100
          Height = 19
          TabStop = False
          Color = 16760799
          Ctl3D = False
          DataField = 'CACODLDR'
          DataSource = Src_CP
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 8
        end
      end
      object DBCB_EXTRA: TDBCheckBox
        Left = 365
        Top = 3
        Width = 58
        Height = 17
        Caption = 'Extra'
        DataField = 'CACODEMP'
        DataSource = Src_CP
        TabOrder = 2
        ValueChecked = '101'
        ValueUnchecked = '1'
      end
      object CB_DUP: TComboBox
        Left = 445
        Top = 15
        Width = 264
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 5
        Text = 'Normal'
        OnEnter = CB_DUPEnter
        OnExit = CB_DUPExit
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
          'Financeira 7'
          'Outros')
      end
      object DBEdit7: TDBEdit
        Left = 339
        Top = 201
        Width = 100
        Height = 19
        TabStop = False
        Color = 16760799
        Ctl3D = False
        DataField = 'CAUSRBAI'
        DataSource = Src_CP
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 30
      end
      object DBE_numparc: TDBEdit
        Left = 486
        Top = 41
        Width = 26
        Height = 19
        Hint = 'Numero sequencial  desta parcela'
        Ctl3D = False
        DataField = 'CANUMPARC'
        DataSource = Src_CP
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
      end
      object DBE_CRQTDPARC: TDBEdit
        Left = 522
        Top = 41
        Width = 26
        Height = 19
        Hint = 'Quantidade de Parcelas'
        Ctl3D = False
        DataField = 'CAQTDPARC'
        DataSource = Src_CP
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
      end
      object rg_dadosne: TGroupBox
        Left = 441
        Top = 120
        Width = 300
        Height = 118
        Caption = '&Dados p/Lan'#231'amentos Fiscais:'
        Color = 65408
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 31
        object Label28: TLabel
          Left = 32
          Top = 37
          Width = 34
          Height = 13
          Caption = 'S'#233'rie:'
          FocusControl = dbe_serie
        end
        object Label29: TLabel
          Left = 111
          Top = 37
          Width = 46
          Height = 13
          Caption = 'Modelo:'
          FocusControl = DBE_Modelo
        end
        object Label30: TLabel
          Left = 206
          Top = 38
          Width = 37
          Height = 13
          Caption = 'CFOP:'
          FocusControl = DBE_cfop
        end
        object Label31: TLabel
          Left = 134
          Top = 57
          Width = 66
          Height = 13
          Caption = 'Dt.Entrada:'
          FocusControl = DBE_cfop
        end
        object Label32: TLabel
          Left = 4
          Top = 75
          Width = 63
          Height = 13
          Caption = 'Base Icms:'
          FocusControl = DBE_base
        end
        object Label33: TLabel
          Left = 135
          Top = 76
          Width = 26
          Height = 13
          Caption = 'Aliq:'
          FocusControl = DBEdit3
        end
        object Label34: TLabel
          Left = 204
          Top = 77
          Width = 35
          Height = 13
          Caption = 'ICMS:'
          FocusControl = DBE_ICMS
        end
        object Label35: TLabel
          Left = 12
          Top = 56
          Width = 54
          Height = 13
          Caption = 'Valor NF:'
          FocusControl = DBE_VALORNF
        end
        object Label36: TLabel
          Left = 3
          Top = 97
          Width = 116
          Height = 13
          Caption = 'Tipo do Documento:'
          FocusControl = DBE_base
        end
        object Label37: TLabel
          Left = 1
          Top = 19
          Width = 68
          Height = 13
          Caption = 'N'#250'mero NF:'
          FocusControl = DBE_NUMNF
        end
        object dbe_serie: TDBEdit
          Left = 68
          Top = 36
          Width = 28
          Height = 19
          Hint = 'Digite a S'#233'rie do'#13#10'Documento Fiscal'
          Ctl3D = False
          DataField = 'CASERIE'
          DataSource = Src_CP
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnExit = dbe_serieExit
        end
        object DBE_Modelo: TDBEdit
          Left = 160
          Top = 36
          Width = 37
          Height = 19
          Hint = 'Digite o Modelo do'#13#10'Documento Fiscal'
          Ctl3D = False
          DataField = 'CAMODELO'
          DataSource = Src_CP
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object DBE_cfop: TDBEdit
          Left = 251
          Top = 36
          Width = 46
          Height = 19
          Hint = 'Digite aqui o CFOP do'#13#10'Documento Fiscal'
          Ctl3D = False
          DataField = 'CACFO'
          DataSource = Src_CP
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object DBDateEdit1: TDBDateEdit
          Left = 200
          Top = 54
          Width = 99
          Height = 20
          DataField = 'CADTENT'
          DataSource = Src_CP
          Ctl3D = False
          DialogTitle = 'Digite  ou Selecione a Data'
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 5
        end
        object DBE_base: TDBEdit
          Left = 68
          Top = 72
          Width = 66
          Height = 19
          Hint = 'Digite aqui o Valor da '#13#10'Base de Icms'
          Ctl3D = False
          DataField = 'CABASEN'
          DataSource = Src_CP
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object DBEdit3: TDBEdit
          Left = 161
          Top = 73
          Width = 40
          Height = 19
          Hint = 'Digite aqui o Percentual '#13#10'da Al'#237'quota de Icms'
          Ctl3D = False
          DataField = 'CAALIQ'
          DataSource = Src_CP
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
          OnExit = DBEdit3Exit
        end
        object DBE_ICMS: TDBEdit
          Left = 238
          Top = 73
          Width = 60
          Height = 19
          Hint = 'Digite aqui o Valor do'#13#10'Icms'
          Ctl3D = False
          DataField = 'CAICMSN'
          DataSource = Src_CP
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
        end
        object DBE_VALORNF: TDBEdit
          Left = 68
          Top = 54
          Width = 66
          Height = 19
          Hint = 'Digite o Valor do'#13#10'Documento Fiscal'
          Ctl3D = False
          DataField = 'CAVALORNF'
          DataSource = Src_CP
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object RxDBComboBox1: TRxDBComboBox
          Left = 121
          Top = 92
          Width = 177
          Height = 21
          Style = csDropDownList
          Ctl3D = False
          DataField = 'CANETIPO'
          DataSource = Src_CP
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'Nota Fiscal'
            'Cupom Fiscal'
            'Conhecimento de Frete')
          ParentCtl3D = False
          TabOrder = 9
          Values.Strings = (
            '0'
            '1'
            '2')
        end
        object DBE_NUMNF: TDBEdit
          Left = 68
          Top = 18
          Width = 77
          Height = 19
          Hint = 'Digite o N'#250'mero da NF'
          Ctl3D = False
          DataField = 'CANUMERONF'
          DataSource = Src_CP
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnEnter = DBE_NUMNFEnter
          OnExit = dbe_serieExit
        end
      end
      object DBE_DTPAG: TDBDateEdit
        Left = 115
        Top = 219
        Width = 121
        Height = 19
        DataField = 'CADTPAG'
        DataSource = Src_CP
        ReadOnly = True
        Color = 16760799
        Ctl3D = False
        DialogTitle = 'Digite  ou Selecione a Data'
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 32
      end
      object dbe_datadesc: TDBDateEdit
        Left = 339
        Top = 127
        Width = 100
        Height = 21
        DataField = 'CADTDESC'
        DataSource = Src_CP
        Ctl3D = False
        DialogTitle = 'Digite  ou Selecione a Data'
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 20
      end
      object dbe_dtvcto: TDBDateEdit
        Left = 339
        Top = 57
        Width = 100
        Height = 20
        Hint = 'Data de Vencimento do T'#237'tulo'
        DataField = 'CADTVCTO'
        DataSource = Src_CP
        Ctl3D = False
        DialogTitle = 'Digite  ou Selecione a Data'
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 9
      end
      object dbe_dtemis: TDBDateEdit
        Left = 115
        Top = 57
        Width = 100
        Height = 20
        Hint = 'Data de Emiss'#227'o do Titulo'
        DataField = 'CADTEMIS'
        DataSource = Src_CP
        Ctl3D = False
        DialogTitle = 'Digite  ou Selecione a Data'
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 8
        OnExit = dbe_dtemisExit
      end
      object DBE_CAVALOR_ACRES: TDBEdit
        Left = 339
        Top = 75
        Width = 100
        Height = 19
        Hint = 'Valor do Acrescimo no titulo'
        Ctl3D = False
        DataField = 'CAVALOR_ACRES'
        DataSource = Src_CP
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        OnEnter = DBE_CAVALOR_ACRESEnter
        OnExit = DBE_CAVALOR_ACRESExit
        OnKeyPress = DBE_valorKeyPress
      end
      object gb_obs: TGroupBox
        Left = 0
        Top = 314
        Width = 802
        Height = 65
        Align = alBottom
        Caption = 'Observa'#231#245'es:'
        TabOrder = 33
        object DBMEMO_CAOBS: TDBMemo
          Left = 2
          Top = 15
          Width = 798
          Height = 48
          Align = alClient
          Ctl3D = False
          DataField = 'CAOBS'
          DataSource = Src_CP_Obs
          ParentCtl3D = False
          ScrollBars = ssBoth
          TabOrder = 0
          OnChange = DBMEMO_CAOBSChange
        end
      end
      object DBEdit4: TDBEdit
        Left = 565
        Top = 93
        Width = 169
        Height = 19
        TabStop = False
        Color = clAqua
        Ctl3D = False
        DataField = 'CADTINC'
        DataSource = DM1.Src_CP
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 34
      end
      object DBDateEdit2: TDBDateEdit
        Left = 115
        Top = 183
        Width = 100
        Height = 21
        TabStop = False
        DataField = 'CADTBX'
        DataSource = Src_CP
        ReadOnly = True
        Color = 16760799
        Ctl3D = False
        DialogTitle = 'Digite  ou Selecione a Data'
        NumGlyphs = 2
        ParentCtl3D = False
        TabOrder = 35
      end
      object edt_competencia_mes: TEdit
        Left = 565
        Top = 75
        Width = 38
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 11
        Text = 'edt_competencia_mes'
        OnExit = edt_competencia_mesExit
      end
      object edt_competencia_ano: TEdit
        Left = 613
        Top = 75
        Width = 38
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 12
        Text = 'edt_competencia_mes'
        OnExit = edt_competencia_anoExit
      end
      object DBEdit19: TDBEdit
        Left = 134
        Top = 237
        Width = 609
        Height = 19
        TabStop = False
        Color = 16760799
        Ctl3D = False
        DataField = 'nfReferencia'
        DataSource = Src_CP
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 36
      end
      object DBE_CADCADFPTO: TDBEdit
        Left = 115
        Top = 253
        Width = 100
        Height = 19
        Hint = 'c'#243'digo do Banco do '#13#10'T'#237'tulo. Para Consultar'#13#10'Digite o Nome'
        Ctl3D = False
        DataField = 'CACODFPGTO'
        DataSource = Src_CP
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 37
        OnExit = DBE_CADCADFPTOExit
        OnKeyPress = DBEdit14KeyPress
      end
      object DBE_nomfpgto: TDBEdit
        Left = 214
        Top = 253
        Width = 225
        Height = 19
        TabStop = False
        Color = 16760799
        Ctl3D = False
        DataField = 'nomfpgto'
        DataSource = Src_CP
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 38
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 802
        Height = 405
        DataSource = Src_CP
        FixedColor = 14155775
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CANUMERO'
            Title.Alignment = taCenter
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CADESD'
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
            FieldName = 'CAVALOR'
            Title.Alignment = taCenter
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CADTVCTO'
            Title.Alignment = taCenter
            Width = 78
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomefor'
            Title.Alignment = taCenter
            Width = 195
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cnpj'
            Width = 121
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtPag'
            Width = 79
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nombco'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CADTEMIS'
            Title.Alignment = taCenter
            Width = 106
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'situacao'
            Title.Alignment = taCenter
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tipodoc'
            Title.Alignment = taCenter
            Title.Caption = 'Tipo'
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CACODEMP'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 405
        Width = 802
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
          Font.Style = [fsBold]
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
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 2
        end
      end
    end
    object tsImagem: TTabSheet
      Caption = 'Imagem'
      ImageIndex = 2
      object GroupBox1: TGroupBox
        Left = 564
        Top = 51
        Width = 238
        Height = 435
        Align = alRight
        Caption = 'Documento Digitalizado:'
        TabOrder = 0
        object DBGrid3: TDBGrid
          Left = 2
          Top = 15
          Width = 234
          Height = 384
          Align = alClient
          DataSource = Src_Dap_imagem
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          OnDblClick = DBGrid3DblClick
          OnKeyDown = DBGrid3KeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'PI_OBS'
              Width = 155
              Visible = True
            end>
        end
        object Panel5: TPanel
          Left = 2
          Top = 399
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
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 802
        Height = 51
        Align = alTop
        TabOrder = 1
        object Label44: TLabel
          Left = 50
          Top = 6
          Width = 48
          Height = 13
          Caption = 'N'#250'mero:'
          FocusControl = DBEdit5
        end
        object Label45: TLabel
          Left = 8
          Top = 25
          Width = 95
          Height = 13
          Caption = 'C'#243'd.Fornecedor:'
          FocusControl = DBEdit6
        end
        object Label46: TLabel
          Left = 291
          Top = 5
          Width = 34
          Height = 13
          Caption = 'Valor:'
          FocusControl = DBEdit13
        end
        object Label47: TLabel
          Left = 589
          Top = 5
          Width = 106
          Height = 13
          Caption = 'Data Vencimento.:'
        end
        object Label48: TLabel
          Left = 204
          Top = 6
          Width = 48
          Height = 13
          Caption = 'Parcela:'
          FocusControl = DBEdit17
        end
        object Label49: TLabel
          Left = 428
          Top = 4
          Width = 51
          Height = 13
          Caption = 'Emiss'#227'o:'
        end
        object DBEdit5: TDBEdit
          Left = 99
          Top = 4
          Width = 100
          Height = 19
          Hint = 'N'#250'mero do T'#237'tulo'
          Color = 14671871
          Ctl3D = False
          DataField = 'CANUMERO'
          DataSource = Src_CP
          ParentCtl3D = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 0
          OnKeyDown = DBEdit1KeyDown
        end
        object DBEdit6: TDBEdit
          Left = 99
          Top = 22
          Width = 100
          Height = 19
          Hint = 'C'#243'digo do Fornecedor'#13#10'Para Consultar Digite o'#13#10'Nome'
          Color = 14671871
          Ctl3D = False
          DataField = 'CACODFOR'
          DataSource = Src_CP
          ParentCtl3D = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 1
          OnExit = DBE_codforExit
          OnKeyPress = DBE_codforKeyPress
        end
        object DBEdit8: TDBEdit
          Left = 198
          Top = 22
          Width = 600
          Height = 19
          TabStop = False
          Color = 16760799
          Ctl3D = False
          DataField = 'nomefor'
          DataSource = Src_CP
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
        end
        object DBEdit13: TDBEdit
          Left = 328
          Top = 4
          Width = 100
          Height = 19
          Hint = 'Valor do T'#237'tulo'
          Color = 14671871
          Ctl3D = False
          DataField = 'CAVALOR'
          DataSource = Src_CP
          ParentCtl3D = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 3
          OnKeyPress = DBE_valorKeyPress
        end
        object DBDateEdit3: TDBDateEdit
          Left = 699
          Top = 3
          Width = 100
          Height = 20
          Hint = 'Data de Vencimento do T'#237'tulo'
          DataField = 'CADTVCTO'
          DataSource = Src_CP
          ReadOnly = True
          Color = 14671871
          Ctl3D = False
          DialogTitle = 'Digite  ou Selecione a Data'
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBEdit17: TDBEdit
          Left = 251
          Top = 3
          Width = 25
          Height = 19
          Hint = 'Desdobramento/parcela do T'#237'tulo'
          Color = 14671871
          Ctl3D = False
          DataField = 'CADESD'
          DataSource = Src_CP
          ParentCtl3D = False
          ParentShowHint = False
          ReadOnly = True
          ShowHint = True
          TabOrder = 5
        end
        object DBDateEdit4: TDBDateEdit
          Left = 478
          Top = 3
          Width = 100
          Height = 20
          Hint = 'Data de Emiss'#227'o do Titulo'
          DataField = 'CADTEMIS'
          DataSource = Src_CP
          ReadOnly = True
          Color = 14671871
          Ctl3D = False
          DialogTitle = 'Digite  ou Selecione a Data'
          NumGlyphs = 2
          ParentCtl3D = False
          TabOrder = 6
          OnExit = dbe_dtemisExit
        end
      end
    end
    object tsEspeciaisMaster: TTabSheet
      Caption = 'Especiais Master'
      ImageIndex = 3
      object Label43: TLabel
        Left = 40
        Top = 136
        Width = 343
        Height = 13
        Caption = 'Valor do Acrescimo a Ser Aplicado nos titulos Selecionados:'
      end
      object edt_valacres: TEdit
        Left = 386
        Top = 133
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        Text = '0.00'
        OnExit = edt_valacresExit
      end
      object bbAplicar: TBitBtn
        Left = 136
        Top = 168
        Width = 113
        Height = 25
        Caption = 'Aplicar Agora'
        TabOrder = 1
        OnClick = bbAplicarClick
      end
      object gbProgresso: TGroupBox
        Left = 0
        Top = 359
        Width = 802
        Height = 71
        Align = alBottom
        Caption = 'Progresso do Ajuste:'
        TabOrder = 2
        object Gauge1: TGauge
          Left = 2
          Top = 15
          Width = 798
          Height = 54
          Align = alClient
          Progress = 0
        end
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 0
    Width = 810
    Height = 35
    Align = alTop
    Caption = ''
    object SB_DIVIDE: TSpeedButton [0]
      Left = 447
      Top = 7
      Width = 100
      Height = 26
      Cursor = crHandPoint
      Hint = 'divide o titulo em varios'
      Caption = 'Dividir Titulo'
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
    inherited INCLUIR: TBitBtn
      Left = 1
      Top = 7
      Width = 90
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited ALTERAR: TBitBtn
      Left = 90
      Top = 7
      Width = 90
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited EXCLUIR: TBitBtn
      Left = 179
      Top = 7
      Width = 90
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited GRAVAR: TBitBtn
      Left = 268
      Top = 7
      Width = 90
      Height = 26
      Cursor = crHandPoint
      OnClick = GRAVARClick
      Layout = blGlyphLeft
    end
    inherited CANCELAR: TBitBtn
      Left = 357
      Top = 7
      Width = 90
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    object DBNavigator2: TDBNavigator
      Left = 546
      Top = 7
      Width = 132
      Height = 26
      Cursor = crHandPoint
      DataSource = Src_Dap
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      Left = 677
      Top = 7
      Width = 75
      Height = 26
      Cursor = crHandPoint
      Caption = '&Sair'
      TabOrder = 6
      OnClick = BitBtn1Click
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
    Top = 609
    Width = 810
    Height = 34
    Caption = ''
    object sbnforma: TSpeedButton [0]
      Left = 1
      Top = 7
      Width = 145
      Height = 26
      Cursor = crHandPoint
      Hint = 'Click aqui para Ver as Formas dos Pagamentos'
      Caption = 'Forma de Pagamento'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00337333733373
        3373337F3F7F3F7F3F7F33737373737373733F7F7F7F7F7F7F7F770000000000
        000077777777777777773303333333333333337FFF333333333F370993333333
        3399377773F33333337733033933333339333F7FF7FFFFFFF7FF77077797CCC7
        977777777777777777773303339C333C9333337F3377F3377F33370333C93339
        C333377F33773FF77F33330333C39993C3333F7FFF7F777F7FFF770777C77777
        C77777777777777777773303333C333C3333337F33373FF7333337033333CCC3
        3333377F33337773333333033333333333333F7FFFFFFFFFFFFF770777777777
        7777777777777777777733333333333333333333333333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = sbnformaClick
    end
    object sbRestaurar: TSpeedButton [1]
      Left = 146
      Top = 7
      Width = 132
      Height = 26
      Cursor = crHandPoint
      Hint = 'divide o titulo em varios'
      Caption = 'Restaurar Titulo'
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
      OnClick = sbRestaurarClick
    end
    object sbt_emitirrecibo: TSpeedButton [2]
      Left = 279
      Top = 7
      Width = 132
      Height = 26
      Cursor = crHandPoint
      Hint = 'divide o titulo em varios'
      Caption = 'Emitir Recibo'
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
    object sbnDocumento: TSpeedButton [3]
      Left = 431
      Top = 8
      Width = 132
      Height = 26
      Cursor = crHandPoint
      Hint = 'Imprime em forma de documento'
      Caption = 'Emitir Documento'
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
      OnClick = sbnDocumentoClick
    end
    inherited DBNavigator1: TDBNavigator
      Left = 597
      Top = 1
      Width = 156
      Height = 26
      Visible = False
    end
    inherited SAIR: TBitBtn
      Left = 634
      Top = -4
      Width = 100
      Visible = False
    end
  end
  object Src_Dap: TDataSource
    DataSet = Tb_CP
    OnDataChange = Src_DapDataChange
    Left = 340
    Top = 7
  end
  object Tb_CP_imagem: TADOQuery
    Connection = DM1_ADO.ADOConnection1
    Parameters = <
      item
        Name = 'PI_ID_DAP'
        DataType = ftString
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Select PI_ROWID,PI_SEQ,PI_OBS,PI_NOMEoRI'
      ',PI_ID_DAP from CADDAP_IMAGEM'
      'where  PI_ID_DAP=:PI_ID_DAP'
      ' order by PI_SEQ '
      '')
    Left = 272
    Top = 95
    object Tb_CP_imagemPI_ROWID: TStringField
      FieldName = 'PI_ROWID'
      Size = 50
    end
    object Tb_CP_imagemPI_SEQ: TFloatField
      FieldName = 'PI_SEQ'
    end
    object Tb_CP_imagemPI_OBS: TStringField
      DisplayLabel = 'Nome da Imagem'
      FieldName = 'PI_OBS'
      Size = 150
    end
    object Tb_CP_imagemPI_NOMEORI: TStringField
      FieldName = 'PI_NOMEORI'
      Size = 254
    end
    object Tb_CP_imagemPI_ID_DAP: TFloatField
      FieldName = 'PI_ID_DAP'
    end
  end
  object Src_Dap_imagem: TDataSource
    DataSet = Tb_CP_imagem
    Left = 276
    Top = 24
  end
  object Tb_CP: TQuery
    CachedUpdates = True
    AfterInsert = Tb_CPAfterInsert
    AfterEdit = Tb_CPAfterEdit
    BeforePost = Tb_CPBeforePost
    AfterPost = Tb_CPAfterPost
    AfterDelete = c
    OnCalcFields = Tb_CPCalcFields
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
    UpdateObject = U_CP
    Left = 523
    Top = 89
    object Tb_CPCACODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'CACODEMP'
      Origin = 'SG_ASSOC.CADDAP.CACODEMP'
    end
    object Tb_CPCANUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CANUMERO'
      Origin = 'SG_ASSOC.CADDAP.CANUMERO'
    end
    object Tb_CPCACODFOR: TFloatField
      DisplayLabel = 'C'#243'd.Fornecedor'
      FieldName = 'CACODFOR'
      Origin = 'SG_ASSOC.CADDAP.CACODFOR'
    end
    object Tb_CPCADTEMIS: TDateTimeField
      DisplayLabel = 'Data de Emiss'#227'o'
      FieldName = 'CADTEMIS'
      Origin = 'SG_ASSOC.CADDAP.CADTEMIS'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_CPCADESD: TStringField
      DisplayLabel = 'Desd'
      DisplayWidth = 4
      FieldName = 'CADESD'
      Origin = 'SG_ASSOC.CADDAP.CADESD'
      Size = 4
    end
    object Tb_CPCAVALOR: TFloatField
      DisplayLabel = 'Valor do T'#237'tulo'
      FieldName = 'CAVALOR'
      Origin = 'SG_ASSOC.CADDAP.CAVALOR'
    end
    object Tb_CPCADTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto.'
      FieldName = 'CADTVCTO'
      Origin = 'SG_ASSOC.CADDAP.CADTVCTO'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_CPCAVALDES: TFloatField
      DisplayLabel = 'Valor do Desconto'
      FieldName = 'CAVALDES'
      Origin = 'SG_ASSOC.CADDAP.CAVALDES'
    end
    object Tb_CPCADTDESC: TDateTimeField
      DisplayLabel = 'Data desconto'
      FieldName = 'CADTDESC'
      Origin = 'SG_ASSOC.CADDAP.CADTDESC'
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1; '
    end
    object Tb_CPCADESC: TFloatField
      DisplayLabel = 'Desc.Concedido'
      FieldName = 'CADESC'
      Origin = 'SG_ASSOC.CADDAP.CADESC'
    end
    object Tb_CPCAJUROS: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'CAJUROS'
      Origin = 'SG_ASSOC.CADDAP.CAJUROS'
    end
    object Tb_CPCABANCO: TFloatField
      DisplayLabel = 'Banco'
      FieldName = 'CABANCO'
      Origin = 'SG_ASSOC.CADDAP.CABANCO'
    end
    object Tb_CPCALOTE: TFloatField
      DisplayLabel = 'Lote de Baixa'
      FieldName = 'CALOTE'
      Origin = 'SG_ASSOC.CADDAP.CALOTE'
    end
    object Tb_CPnomefor: TStringField
      DisplayLabel = 'Nome do fornecedor'
      FieldKind = fkCalculated
      FieldName = 'nomefor'
      Size = 40
      Calculated = True
    end
    object Tb_CPCACHAVEP: TFloatField
      FieldName = 'CACHAVEP'
      Origin = 'SG_ASSOC.CADDAP.CACHAVEP'
    end
    object Tb_CPCADTBX: TDateTimeField
      FieldName = 'CADTBX'
      Origin = 'SG_ASSOC.CADDAP.CADTBX'
    end
    object Tb_CPCADTPAG: TDateTimeField
      FieldName = 'CADTPAG'
      Origin = 'SG_ASSOC.CADDAP.CADTPAG'
    end
    object Tb_CPCAUSRBAI: TFloatField
      FieldName = 'CAUSRBAI'
      Origin = 'SG_ASSOC.CADDAP.CAUSRBAI'
    end
    object Tb_CPsituacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'situacao'
      Size = 10
      Calculated = True
    end
    object Tb_CPCACAIXA: TFloatField
      FieldName = 'CACAIXA'
      Origin = 'SG_ASSOC.CADDAP.CACAIXA'
    end
    object Tb_CPCACODLDR: TFloatField
      FieldName = 'CACODLDR'
      Origin = 'SG_ASSOC.CADDAP.CACODLDR'
    end
    object Tb_CPCASTATUS: TFloatField
      FieldName = 'CASTATUS'
      Origin = 'SG_ASSOC.CADDAP.CASTATUS'
    end
    object Tb_CPCAVALPAG: TFloatField
      FieldName = 'CAVALPAG'
      Origin = 'SG_ASSOC.CADDAP.CAVALPAG'
    end
    object Tb_CPnombco: TStringField
      DisplayLabel = 'Nome do Banco'
      FieldKind = fkCalculated
      FieldName = 'nombco'
      Size = 30
      Calculated = True
    end
    object Tb_CPCADUP: TFloatField
      FieldName = 'CADUP'
      Origin = 'SG_ASSOC.CADDAP.CADUP'
    end
    object Tb_CPCADEVOL: TFloatField
      FieldName = 'CADEVOL'
      Origin = 'SG_ASSOC.CADDAP.CADEVOL'
    end
    object Tb_CPCACODUSR: TFloatField
      FieldName = 'CACODUSR'
      Origin = 'SG_ASSOC.CADDAP.CACODUSR'
    end
    object Tb_CPCADTALT: TDateTimeField
      FieldName = 'CADTALT'
      Origin = 'SG_ASSOC.CADDAP.CADTALT'
    end
    object Tb_CPCAHRALT: TStringField
      FieldName = 'CAHRALT'
      Origin = 'SG_ASSOC.CADDAP.CAHRALT'
      Size = 10
    end
    object Tb_CPdenom: TStringField
      FieldKind = fkCalculated
      FieldName = 'denom'
      Size = 40
      Calculated = True
    end
    object Tb_CPCANOSNUM: TStringField
      FieldName = 'CANOSNUM'
      Origin = 'SG_ASSOC.CADDAP.CANOSNUM'
      Size = 30
    end
    object Tb_CPCALOTSEQ_CP: TFloatField
      FieldName = 'CALOTSEQ_CP'
      Origin = 'SG_ASSOC.CADDAP.CALOTSEQ_CP'
    end
    object Tb_CPCALOTSEQ_LB: TFloatField
      FieldName = 'CALOTSEQ_LB'
      Origin = 'SG_ASSOC.CADDAP.CALOTSEQ_LB'
    end
    object Tb_CPCALOTSEQ_FC: TFloatField
      FieldName = 'CALOTSEQ_FC'
      Origin = 'SG_ASSOC.CADDAP.CALOTSEQ_FC'
    end
    object Tb_CPCATEMBOL: TFloatField
      DisplayLabel = 'Tem Boleto Bancario: 0-Sim 1-Nao'
      FieldName = 'CATEMBOL'
      Origin = 'SG_ASSOC.CADDAP.CATEMBOL'
    end
    object Tb_CPCALEMAT: TFloatField
      FieldName = 'CALEMAT'
      Origin = 'SG_ASSOC.CADDAP.CALEMAT'
    end
    object Tb_CPtipodoc: TStringField
      DisplayLabel = 'Tipo do Documento'
      FieldKind = fkCalculated
      FieldName = 'tipodoc'
      Size = 30
      Calculated = True
    end
    object Tb_CPCACODCTA: TFloatField
      FieldName = 'CACODCTA'
      Origin = 'SG_ASSOC.CADDAP.CACODCTA'
    end
    object Tb_CPCACODCC: TStringField
      FieldName = 'CACODCC'
      Origin = 'SG_ASSOC.CADDAP.CACODCC'
      Size = 16
    end
    object Tb_CPCACODDEP: TStringField
      FieldName = 'CACODDEP'
      Origin = 'SG_ASSOC.CADDAP.CACODDEP'
      Size = 5
    end
    object Tb_CPCADESCMV: TStringField
      FieldName = 'CADESCMV'
      Origin = 'SG_ASSOC.CADDAP.CADESCMV'
      Size = 60
    end
    object Tb_CPCANOMCTA: TStringField
      FieldName = 'CANOMCTA'
      Origin = 'SG_ASSOC.CADDAP.CANOMCTA'
      Size = 40
    end
    object Tb_CPCANOMCC: TStringField
      FieldName = 'CANOMCC'
      Origin = 'SG_ASSOC.CADDAP.CANOMCC'
      Size = 40
    end
    object Tb_CPCANOMDEP: TStringField
      FieldName = 'CANOMDEP'
      Origin = 'SG_ASSOC.CADDAP.CANOMDEP'
      Size = 40
    end
    object Tb_CPdatadesc: TStringField
      FieldKind = fkCalculated
      FieldName = 'datadesc'
      Size = 10
      Calculated = True
    end
    object Tb_CPCANATDC: TStringField
      FieldName = 'CANATDC'
      Origin = 'SG_ASSOC.CADDAP.CANATDC'
      Size = 1
    end
    object Tb_CPCASEQ: TFloatField
      FieldName = 'CASEQ'
      Origin = 'SG_ASSOC.CADDAP.CASEQ'
    end
    object Tb_CPCADTINC: TDateTimeField
      FieldName = 'CADTINC'
      Origin = 'SG_ASSOC.CADDAP.CADTINC'
    end
    object Tb_CPvaldev: TFloatField
      DisplayLabel = 'Valor Devido'
      FieldKind = fkCalculated
      FieldName = 'valdev'
      Calculated = True
    end
    object Tb_CPdtPag: TStringField
      DisplayLabel = 'Dt.Pgto.'
      FieldKind = fkCalculated
      FieldName = 'dtPag'
      Size = 10
      Calculated = True
    end
    object Tb_CPCAQTDPARC: TFloatField
      FieldName = 'CAQTDPARC'
      Origin = 'SG_ASSOC.CADDAP.CAQTDPARC'
    end
    object Tb_CPCANUMPARC: TFloatField
      FieldName = 'CANUMPARC'
      Origin = 'SG_ASSOC.CADDAP.CANUMPARC'
    end
    object Tb_CPCASERIE: TStringField
      FieldName = 'CASERIE'
      Origin = 'SG_ASSOC.CADDAP.CASERIE'
      Size = 6
    end
    object Tb_CPCAMODELO: TStringField
      FieldName = 'CAMODELO'
      Origin = 'SG_ASSOC.CADDAP.CAMODELO'
      Size = 3
    end
    object Tb_CPCACFO: TFloatField
      FieldName = 'CACFO'
      Origin = 'SG_ASSOC.CADDAP.CACFO'
    end
    object Tb_CPCADTENT: TDateTimeField
      FieldName = 'CADTENT'
      Origin = 'SG_ASSOC.CADDAP.CADTENT'
    end
    object Tb_CPCAVALORNF: TFloatField
      FieldName = 'CAVALORNF'
      Origin = 'SG_ASSOC.CADDAP.CAVALORNF'
    end
    object Tb_CPCABASEN: TFloatField
      FieldName = 'CABASEN'
      Origin = 'SG_ASSOC.CADDAP.CABASEN'
    end
    object Tb_CPCAALIQ: TFloatField
      FieldName = 'CAALIQ'
      Origin = 'SG_ASSOC.CADDAP.CAALIQ'
    end
    object Tb_CPCAICMSN: TFloatField
      FieldName = 'CAICMSN'
      Origin = 'SG_ASSOC.CADDAP.CAICMSN'
    end
    object Tb_CPCANETIPO: TFloatField
      FieldName = 'CANETIPO'
      Origin = 'SG_ASSOC.CADDAP.CANETIPO'
    end
    object Tb_CPCANUMERONF: TFloatField
      FieldName = 'CANUMERONF'
      Origin = 'SG_ASSOC.CADDAP.CANUMERONF'
    end
    object Tb_CPcnpj: TStringField
      FieldKind = fkCalculated
      FieldName = 'cnpj'
      Calculated = True
    end
    object Tb_CPIDDAP: TStringField
      FieldName = 'IDDAP'
      Size = 18
    end
    object Tb_CPCAVALOR_ACRES: TFloatField
      FieldName = 'CAVALOR_ACRES'
    end
    object Tb_CPCACOMPETENCIA_DTINICIO: TDateTimeField
      FieldName = 'CACOMPETENCIA_DTINICIO'
    end
    object Tb_CPcompetencia_obs: TStringField
      FieldKind = fkCalculated
      FieldName = 'competencia_obs'
      Size = 30
      Calculated = True
    end
    object Tb_CPCACOMPETENCIA_TIPO: TFloatField
      FieldName = 'CACOMPETENCIA_TIPO'
    end
    object Tb_CPCACHAVE_ID: TFloatField
      FieldName = 'CACHAVE_ID'
    end
    object Tb_CPCACHAVE_ID_ANO: TFloatField
      FieldName = 'CACHAVE_ID_ANO'
    end
    object Tb_CPCADATAINCLUSAO: TDateTimeField
      FieldName = 'CADATAINCLUSAO'
    end
    object Tb_CPCAQTDAJUSTE: TFloatField
      FieldName = 'CAQTDAJUSTE'
    end
    object Tb_CPCAID_NEW: TFloatField
      FieldName = 'CAID_NEW'
    end
    object Tb_CPnfReferencia: TStringField
      FieldKind = fkCalculated
      FieldName = 'nfReferencia'
      Size = 254
      Calculated = True
    end
    object Tb_CPnomfpgto: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomfpgto'
      Size = 100
      Calculated = True
    end
    object Tb_CPCACODFPGTO: TFloatField
      FieldName = 'CACODFPGTO'
    end
  end
  object U_CP: TUpdateSQL
    ModifySQL.Strings = (
      'update CADDAP'
      'set'
      '  CACODEMP = :CACODEMP,'
      '  CANUMERO = :CANUMERO,'
      '  CADESD = :CADESD,'
      '  CACODFOR = :CACODFOR,'
      '  CADTEMIS = :CADTEMIS,'
      '  CASEQ = :CASEQ,'
      '  CAVALOR = :CAVALOR,'
      '  CADUP = :CADUP,'
      '  CADTVCTO = :CADTVCTO,'
      '  CASTATUS = :CASTATUS,'
      '  CAVALDES = :CAVALDES,'
      '  CADTDESC = :CADTDESC,'
      '  CADESC = :CADESC,'
      '  CADEVOL = :CADEVOL,'
      '  CAJUROS = :CAJUROS,'
      '  CABANCO = :CABANCO,'
      '  CALOTSEQ_LB = :CALOTSEQ_LB,'
      '  CALOTE = :CALOTE,'
      '  CALOTSEQ_CP = :CALOTSEQ_CP,'
      '  CACHAVEP = :CACHAVEP,'
      '  CADTBX = :CADTBX,'
      '  CADTPAG = :CADTPAG,'
      '  CAVALPAG = :CAVALPAG,'
      '  CAUSRBAI = :CAUSRBAI,'
      '  CACAIXA = :CACAIXA,'
      '  CALOTSEQ_FC = :CALOTSEQ_FC,'
      '  CACODLDR = :CACODLDR,'
      '  CACODUSR = :CACODUSR,'
      '  CADTINC = :CADTINC,'
      '  CADTALT = :CADTALT,'
      '  CAHRALT = :CAHRALT,'
      '  CANOSNUM = :CANOSNUM,'
      '  CATEMBOL = :CATEMBOL,'
      '  CALEMAT = :CALEMAT,'
      '  CACODCTA = :CACODCTA,'
      '  CANOMCTA = :CANOMCTA,'
      '  CACODCC = :CACODCC,'
      '  CANOMCC = :CANOMCC,'
      '  CANATDC = :CANATDC,'
      '  CACODDEP = :CACODDEP,'
      '  CANOMDEP = :CANOMDEP,'
      '  CADESCMV = :CADESCMV,'
      '  CAQTDPARC = :CAQTDPARC,'
      '  CANUMPARC = :CANUMPARC,'
      '  CASERIE = :CASERIE,'
      '  CAMODELO = :CAMODELO,'
      '  CACFO = :CACFO,'
      '  CADTENT = :CADTENT,'
      '  CAVALORNF = :CAVALORNF,'
      '  CANUMERONF = :CANUMERONF,'
      '  CABASEN = :CABASEN,'
      '  CAALIQ = :CAALIQ,'
      '  CAICMSN = :CAICMSN,'
      '  CANETIPO = :CANETIPO,'
      '  CAVALOR_ACRES = :CAVALOR_ACRES'
      '   ,CACOMPETENCIA_DTINICIO=:CACOMPETENCIA_DTINICIO'
      '   ,CACOMPETENCIA_TIPO=:CACOMPETENCIA_TIPO'
      '   ,CACHAVE_ID_ANO=:CACHAVE_ID_ANO'
      '   ,CACHAVE_ID=:CACHAVE_ID'
      '   ,CADATAINCLUSAO=:CADATAINCLUSAO'
      '   ,CAQTDAJUSTE=:CAQTDAJUSTE'
      '   ,CAID_NEW=:CAID_NEW'
      '   ,CACODFPGTO =:CACODFPGTO'
      ''
      ''
      ''
      ''
      'where'
      ''
      '  CACODEMP = :OLD_CACODEMP and'
      '  CANUMERO = :OLD_CANUMERO and'
      '  CADESD = :OLD_CADESD and'
      '  CACODFOR = :OLD_CACODFOR and'
      '  CADTEMIS = :OLD_CADTEMIS and'
      '  CADUP = :OLD_CADUP')
    InsertSQL.Strings = (
      'insert into CADDAP'
      '  (CACODEMP, CANUMERO, CADESD, CACODFOR, CADTEMIS, CASEQ, '
      'CAVALOR, CADUP, '
      '   CADTVCTO, CASTATUS, CAVALDES, CADTDESC, CADESC, CADEVOL, '
      'CAJUROS, CABANCO, '
      '   CALOTSEQ_LB, CALOTE, CALOTSEQ_CP, CACHAVEP, CADTBX, CADTPAG, '
      'CAVALPAG, '
      '   CAUSRBAI, CACAIXA, CALOTSEQ_FC, CACODLDR, CACODUSR, '
      'CADTINC, '
      '   CADTALT, CAHRALT, CANOSNUM, CATEMBOL, CALEMAT, CACODCTA, '
      'CANOMCTA, CACODCC, '
      '   CANOMCC, CANATDC, CACODDEP, CANOMDEP, CADESCMV, CAQTDPARC, '
      'CANUMPARC, '
      '   CASERIE, CAMODELO, CACFO, CADTENT, CAVALORNF, CANUMERONF, '
      'CABASEN, CAALIQ, '
      '   CAICMSN, CANETIPO, CAVALOR_ACRES'
      '   ,CACOMPETENCIA_DTINICIO'
      '   ,CACOMPETENCIA_TIPO'
      '   ,CACHAVE_ID_ANO'
      '   ,CACHAVE_ID'
      '   ,CADATAINCLUSAO'
      '   ,CAQTDAJUSTE'
      '   ,CAID_NEW'
      '   ,CACODFPGTO'
      '   )'
      'values'
      '  (:CACODEMP, :CANUMERO, :CADESD, :CACODFOR, :CADTEMIS, :CASEQ,'
      ':CAVALOR,'
      '   :CADUP, :CADTVCTO, :CASTATUS, :CAVALDES, :CADTDESC, :CADESC,'
      ':CADEVOL,'
      '   :CAJUROS, :CABANCO, :CALOTSEQ_LB, :CALOTE, :CALOTSEQ_CP,'
      ':CACHAVEP,'
      
        '   :CADTBX, :CADTPAG, :CAVALPAG, :CAUSRBAI, :CACAIXA, :CALOTSEQ_' +
        'FC,'
      ':CACODLDR,'
      '    :CACODUSR, :CADTINC, :CADTALT, :CAHRALT, :CANOSNUM,'
      ':CATEMBOL,'
      '   :CALEMAT, :CACODCTA, :CANOMCTA, :CACODCC, :CANOMCC, :CANATDC,'
      ':CACODDEP,'
      '   :CANOMDEP, :CADESCMV, :CAQTDPARC, :CANUMPARC, :CASERIE,'
      ':CAMODELO, :CACFO,'
      
        '   :CADTENT, :CAVALORNF, :CANUMERONF, :CABASEN, :CAALIQ, :CAICMS' +
        'N,'
      ':CANETIPO,'
      '   :CAVALOR_ACRES'
      '   ,:CACOMPETENCIA_DTINICIO'
      '   ,:CACOMPETENCIA_TIPO'
      '   ,:CACHAVE_ID_ANO'
      '   ,:CACHAVE_ID'
      '   ,:CADATAINCLUSAO'
      '   ,:CAQTDAJUSTE'
      '   ,:CAID_NEW'
      '   ,:CACODFPGTO'
      '  )')
    DeleteSQL.Strings = (
      'delete from CADDAP'
      'where'
      '  CACODEMP = :OLD_CACODEMP and'
      '  CANUMERO = :OLD_CANUMERO and'
      '  CADESD = :OLD_CADESD and'
      '  CACODFOR = :OLD_CACODFOR and'
      '  CADTEMIS = :OLD_CADTEMIS and'
      '  CADUP = :OLD_CADUP')
    Left = 551
    Top = 88
  end
  object Src_CP: TDataSource
    DataSet = Tb_CP
    Left = 578
    Top = 89
  end
  object Tb_CP_Obs: TQuery
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
    UpdateObject = U_CP_Obs
    Left = 515
    Top = 113
    object Tb_CP_ObsCAOBS: TMemoField
      FieldName = 'CAOBS'
      BlobType = ftMemo
    end
  end
  object U_CP_Obs: TUpdateSQL
    Left = 543
    Top = 113
  end
  object Src_CP_Obs: TDataSource
    DataSet = Tb_CP_Obs
    Left = 570
    Top = 113
  end
end
