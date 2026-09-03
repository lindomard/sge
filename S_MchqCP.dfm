inherited Frm_MChqCP: TFrm_MChqCP
  Left = 199
  Top = 68
  Width = 800
  Height = 499
  Caption = 'Manuten'#231#227'o no arquivo de cheques de Propria Emiss'#227'o'
  KeyPreview = True
  OldCreateOrder = True
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 35
    Width = 784
    inherited lbl_emp: TLabel
      Left = 739
    end
    inherited BBnAtu: TBitBtn
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Color = 14155775
      Items.Strings = (
        'N'#250'mero'
        'Data Dep'#243'sito'
        'Data Emiss'#227'o'
        'Valor'
        'Nome Emitente')
    end
    inherited Edit1: TMaskEdit
      Color = 14155775
      OnExit = Edit1Exit
    end
  end
  inherited PC1: TPageControl
    Top = 64
    Width = 784
    Height = 363
    ActivePage = tsCad
    inherited tsCad: TTabSheet
      object gb_dadosini: TGroupBox
        Left = 0
        Top = 0
        Width = 776
        Height = 335
        Align = alClient
        Caption = 'Dados do Cheque:'
        TabOrder = 0
        object Label1: TLabel
          Left = 55
          Top = 14
          Width = 52
          Height = 13
          Caption = 'N'#250'mero.:'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 267
          Top = 13
          Width = 45
          Height = 13
          Caption = 'Banco.:'
          FocusControl = DBEdit2
        end
        object Label4: TLabel
          Left = 409
          Top = 12
          Width = 38
          Height = 13
          Caption = 'S'#233'rie.:'
          FocusControl = DBEdit4
        end
        object Label6: TLabel
          Left = 362
          Top = 29
          Width = 90
          Height = 13
          Caption = 'Conta Corrente:'
          FocusControl = DBEdit6
        end
        object Label3: TLabel
          Left = 232
          Top = 28
          Width = 55
          Height = 13
          Caption = 'Agencia.:'
          FocusControl = DBEdit3
        end
        object Label5: TLabel
          Left = 23
          Top = 30
          Width = 84
          Height = 13
          Caption = 'Compensa'#231#227'o:'
          FocusControl = DBEdit5
        end
        object Label7: TLabel
          Left = 7
          Top = 48
          Width = 99
          Height = 13
          Caption = 'Fornecedor Dest:'
          FocusControl = DBEdit7
        end
        object Label12: TLabel
          Left = 69
          Top = 66
          Width = 38
          Height = 13
          Caption = 'Valor.:'
          FocusControl = DBEdit13
        end
        object Label13: TLabel
          Left = 232
          Top = 65
          Width = 82
          Height = 13
          Caption = 'Data Emiss'#227'o:'
          FocusControl = DBEdit14
        end
        object Label14: TLabel
          Left = 416
          Top = 65
          Width = 86
          Height = 13
          Caption = 'Dt.P/Deposito:'
          FocusControl = DBEdit15
        end
        object Label22: TLabel
          Left = 602
          Top = 46
          Width = 87
          Height = 13
          Caption = 'Lote de Origem'
        end
        object Label23: TLabel
          Left = 694
          Top = 46
          Width = 44
          Height = 13
          Caption = 'Lancto.'
        end
        object Label17: TLabel
          Left = 28
          Top = 82
          Width = 79
          Height = 13
          Caption = 'Observacoes:'
          FocusControl = DBEdit13
        end
        object DBEdit1: TDBEdit
          Left = 111
          Top = 10
          Width = 90
          Height = 19
          Hint = 'Digite o N'#250'mero do Chque'
          Color = 14155775
          Ctl3D = False
          DataField = 'CHNUMERO'
          DataSource = DM6.Src_ChqCP
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
          OnEnter = DBEdit1Enter
          OnExit = DBEdit1Exit
          OnKeyDown = DBEdit1KeyDown
        end
        object DBEdit2: TDBEdit
          Left = 323
          Top = 10
          Width = 65
          Height = 19
          Hint = 'Digite o C'#243'digo do Banco do Cheque'
          Color = 14155775
          Ctl3D = False
          DataField = 'CHBANCO'
          DataSource = DM6.Src_ChqCP
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
        end
        object DBEdit4: TDBEdit
          Left = 453
          Top = 10
          Width = 90
          Height = 19
          Hint = 'Digite a s'#233'rie do Cheque'
          Color = 14155775
          Ctl3D = False
          DataField = 'CHSERIE'
          DataSource = DM6.Src_ChqCP
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
        object DBEdit6: TDBEdit
          Left = 454
          Top = 28
          Width = 89
          Height = 19
          Hint = 'Digite a Conta Corrente do Cheque'
          Color = 14155775
          Ctl3D = False
          DataField = 'CHCC'
          DataSource = DM6.Src_ChqCP
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 7
        end
        object DBEdit3: TDBEdit
          Left = 289
          Top = 28
          Width = 65
          Height = 19
          Hint = 'Digite a Ag'#234'ncia do Cheque'
          Color = 14155775
          Ctl3D = False
          DataField = 'CHAGENCIA'
          DataSource = DM6.Src_ChqCP
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object DBEdit5: TDBEdit
          Left = 111
          Top = 28
          Width = 56
          Height = 19
          Hint = 'Digite o C'#243'digo da Compensa'#231#227'o do Cheque]'
          Color = 14155775
          Ctl3D = False
          DataField = 'CHCOMP'
          DataSource = DM6.Src_ChqCP
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
        end
        object DBEdit7: TDBEdit
          Left = 111
          Top = 46
          Width = 57
          Height = 19
          Hint = 
            'Digite o C'#243'digo do Cliente'#13#10'Para consultar digite o '#13#10'Nome do Me' +
            'smo'
          Color = 14155775
          Ctl3D = False
          DataField = 'CHCODFOR'
          DataSource = DM6.Src_ChqCP
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 8
          OnExit = DBEdit7Exit
          OnKeyPress = DBEdit7KeyPress
        end
        object DBEdit8: TDBEdit
          Left = 167
          Top = 46
          Width = 433
          Height = 19
          TabStop = False
          Color = 16761312
          Ctl3D = False
          DataField = 'nomfor'
          DataSource = DM6.Src_ChqCP
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit13: TDBEdit
          Left = 111
          Top = 64
          Width = 84
          Height = 19
          Hint = 'Digite o Valor do Cheque'
          Color = 14155775
          Ctl3D = False
          DataField = 'CHVALOR'
          DataSource = DM6.Src_ChqCP
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 10
          OnKeyPress = DBEdit13KeyPress
        end
        object DBEdit14: TDBEdit
          Left = 320
          Top = 64
          Width = 81
          Height = 19
          Hint = 'Digite a data de Emiss'#227'o do Cheque'
          Color = 14155775
          Ctl3D = False
          DataField = 'CHDTEMIS'
          DataSource = DM6.Src_ChqCP
          ParentCtl3D = False
          TabOrder = 11
        end
        object DBEdit15: TDBEdit
          Left = 503
          Top = 64
          Width = 97
          Height = 19
          Hint = 'Digite a Data p/Deposito do Cheque'
          Color = 14155775
          Ctl3D = False
          DataField = 'CHDTDEP'
          DataSource = DM6.Src_ChqCP
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 12
        end
        object DBCB_Deposito: TDBCheckBox
          Left = 547
          Top = 9
          Width = 118
          Height = 17
          Caption = 'Pagar no Balc'#227'o'
          DataField = 'CHDEPOSITO'
          DataSource = DM6.Src_ChqCP
          TabOrder = 4
          ValueChecked = '1'
          ValueUnchecked = '0'
          Visible = False
        end
        object DBCB_EXTRA: TDBCheckBox
          Left = 205
          Top = 11
          Width = 58
          Height = 17
          Hint = 'Se Marcado '#233' '#13#10'pq houve aceite'#13#10'Caso Contr'#225'rio n'#227'o'
          Caption = 'Extra'
          DataField = 'CHCODEMP'
          DataSource = DM6.Src_ChqCP
          TabOrder = 1
          ValueChecked = '101'
          ValueUnchecked = '1'
        end
        object DBEdit24: TDBEdit
          Left = 604
          Top = 64
          Width = 86
          Height = 19
          TabStop = False
          Color = 16761312
          Ctl3D = False
          DataField = 'CHLOTE'
          DataSource = DM6.Src_ChqCP
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 14
        end
        object st_leitor: TStaticText
          Left = 204
          Top = 11
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
          TabOrder = 13
          Visible = False
        end
        object DBEdit25: TDBEdit
          Left = 694
          Top = 64
          Width = 86
          Height = 19
          TabStop = False
          Color = 16761312
          Ctl3D = False
          DataField = 'CHSEQ'
          DataSource = DM6.Src_ChqCP
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 15
        end
        object DBEdit22: TDBEdit
          Left = 111
          Top = 82
          Width = 555
          Height = 19
          Hint = 'Nome do Emitente do Cheque'
          Color = 14155775
          Ctl3D = False
          DataField = 'CHOBSL01'
          DataSource = DM6.Src_ChqCP
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 16
        end
        object DBEdit23: TDBEdit
          Left = 111
          Top = 100
          Width = 555
          Height = 19
          Hint = 'Nome do Emitente do Cheque'
          Color = 14155775
          Ctl3D = False
          DataField = 'CHOBSL02'
          DataSource = DM6.Src_ChqCP
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 17
        end
        object gb_outinf: TGroupBox
          Left = 2
          Top = 181
          Width = 772
          Height = 56
          Align = alBottom
          Caption = 'Outras Informa'#231#245'es:'
          TabOrder = 19
          object Label15: TLabel
            Left = 187
            Top = 39
            Width = 89
            Height = 13
            Caption = 'Data da Baixa.:'
          end
          object Label16: TLabel
            Left = 418
            Top = 37
            Width = 144
            Height = 13
            Caption = 'N'#250'mero do lote de Baixa:'
          end
          object Label19: TLabel
            Left = 7
            Top = 17
            Width = 67
            Height = 13
            Caption = 'Prorrogado:'
          end
          object Label20: TLabel
            Left = 143
            Top = 18
            Width = 43
            Height = 13
            Caption = 'Vez(es)'
          end
          object Label21: TLabel
            Left = 342
            Top = 18
            Width = 161
            Height = 13
            Caption = 'Data para deposito Anterior:'
            FocusControl = DBEdit15
          end
          object DBEdit16: TDBEdit
            Left = 277
            Top = 32
            Width = 101
            Height = 19
            TabStop = False
            Color = 16761312
            Ctl3D = False
            DataField = 'dtbx'
            DataSource = DM6.Src_ChqCP
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit17: TDBEdit
            Left = 566
            Top = 33
            Width = 90
            Height = 19
            TabStop = False
            Color = 16761312
            Ctl3D = False
            DataField = 'CHLOTEBX'
            DataSource = DM6.Src_ChqCP
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 2
          end
          object dbcbstatus: TDBCheckBox
            Left = 9
            Top = 35
            Width = 97
            Height = 17
            Caption = 'Baixado'
            DataField = 'CHSTATUS'
            DataSource = DM6.Src_ChqCP
            Enabled = False
            TabOrder = 3
            ValueChecked = '2'
            ValueUnchecked = '0'
          end
          object DBEdit20: TDBEdit
            Left = 75
            Top = 16
            Width = 61
            Height = 19
            TabStop = False
            Color = 16761312
            Ctl3D = False
            DataField = 'CHPROR_QTDP'
            DataSource = DM6.Src_ChqCP
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 4
          end
          object DBE_DTPAG: TDBDateEdit
            Left = 566
            Top = 15
            Width = 121
            Height = 19
            DataField = 'pro_ultdat'
            DataSource = DM6.Src_ChqCP
            ReadOnly = True
            Color = 16760799
            Ctl3D = False
            DialogTitle = 'Digite  ou Selecione a Data'
            NumGlyphs = 2
            ParentCtl3D = False
            TabOrder = 1
          end
        end
        object gb_fluxocaixa: TGroupBox
          Left = 2
          Top = 237
          Width = 772
          Height = 96
          Align = alBottom
          Caption = 'Dados Padr'#227'o Para Lan'#231'amento do Fluxo de Caixa:'
          TabOrder = 20
          object Label41: TLabel
            Left = 17
            Top = 55
            Width = 96
            Height = 13
            Caption = 'Centro de Custo:'
          end
          object Label42: TLabel
            Left = 27
            Top = 36
            Width = 84
            Height = 13
            Caption = 'Departamento:'
          end
          object Label43: TLabel
            Left = 13
            Top = 76
            Width = 98
            Height = 13
            Caption = 'Desc.movimento:'
          end
          object Label44: TLabel
            Left = 10
            Top = 19
            Width = 102
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
          object Label25: TLabel
            Left = 685
            Top = 14
            Width = 74
            Height = 13
            Caption = 'C'#243'digo Fluxo'
          end
          object DBE_CODDEP: TDBEdit
            Left = 116
            Top = 33
            Width = 68
            Height = 19
            Ctl3D = False
            DataField = 'CHCODDEP'
            DataSource = DM6.Src_ChqCP
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
            Top = 52
            Width = 68
            Height = 19
            Ctl3D = False
            DataField = 'CHCODCC'
            DataSource = DM6.Src_ChqCP
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
            Top = 71
            Width = 417
            Height = 19
            Ctl3D = False
            DataField = 'CHDESCMV'
            DataSource = DM6.Src_ChqCP
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
            Height = 19
            Hint = 'c'#243'digo do Banco do '#13#10'T'#237'tulo. Para Consultar'#13#10'Digite o Nome'
            Ctl3D = False
            DataField = 'CHCODCTA'
            DataSource = DM6.Src_ChqCP
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
            DataField = 'CHNOMCTA'
            DataSource = DM6.Src_ChqCP
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
            Top = 33
            Width = 351
            Height = 21
            AutoDropDown = True
            BevelKind = bkSoft
            Color = 13565951
            Ctl3D = True
            DataField = 'CHNOMDEP'
            DataSource = DM6.Src_ChqCP
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
            OnKeyDown = DBCB_NOMDEPKeyDown
          end
          object DBCB_NOMCCU: TDBComboBox
            Left = 183
            Top = 52
            Width = 320
            Height = 21
            AutoDropDown = True
            BevelKind = bkSoft
            Color = 13565951
            Ctl3D = True
            DataField = 'CHNOMCC'
            DataSource = DM6.Src_ChqCP
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
            OnKeyDown = DBCB_NOMCCUKeyDown
          end
          object DBEdit18: TDBEdit
            Left = 502
            Top = 53
            Width = 31
            Height = 19
            Color = 16760799
            Ctl3D = False
            DataField = 'CHNATDC'
            DataSource = DM6.Src_ChqCP
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -8
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 6
          end
          object DBEdit27: TDBEdit
            Left = 687
            Top = 34
            Width = 86
            Height = 19
            TabStop = False
            Color = 16761312
            Ctl3D = False
            DataField = 'CHCODLDR_DEB'
            DataSource = DM6.Src_ChqCP
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 8
          end
        end
        object gb_dadosemitente: TGroupBox
          Left = 2
          Top = 122
          Width = 772
          Height = 59
          Align = alBottom
          Caption = 'Dados sobre o Emitente do Cheque:'
          TabOrder = 18
          object Label8: TLabel
            Left = 35
            Top = 15
            Width = 41
            Height = 13
            Caption = 'Nome.:'
            FocusControl = DBEdit9
          end
          object Label9: TLabel
            Left = 33
            Top = 35
            Width = 41
            Height = 13
            Caption = 'CNPF.:'
            FocusControl = DBEdit10
          end
          object Label11: TLabel
            Left = 394
            Top = 14
            Width = 55
            Height = 13
            Caption = 'Dt.Nasc.:'
            FocusControl = DBEdit12
          end
          object Label10: TLabel
            Left = 365
            Top = 33
            Width = 86
            Height = 13
            Caption = 'Registro Geral:'
            FocusControl = DBEdit11
          end
          object DBEdit10: TDBEdit
            Left = 78
            Top = 33
            Width = 134
            Height = 19
            Hint = 'CNPJ/CNPF do Emitente do Cheque'
            Color = 14155775
            Ctl3D = False
            DataField = 'CHCPF'
            DataSource = DM6.Src_ChqCP
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 2
          end
          object DBEdit9: TDBEdit
            Left = 78
            Top = 15
            Width = 266
            Height = 19
            Hint = 'Nome do Emitente do Cheque'
            Color = 14155775
            Ctl3D = False
            DataField = 'CHEMIT'
            DataSource = DM6.Src_ChqCP
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
          end
          object DBEdit11: TDBEdit
            Left = 455
            Top = 33
            Width = 169
            Height = 19
            Hint = 'Registro Geral/Incri'#231#227'o do Emitente do Cheque'
            Color = 14155775
            Ctl3D = False
            DataField = 'CHRG'
            DataSource = DM6.Src_ChqCP
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 3
          end
          object DBEdit12: TDBEdit
            Left = 455
            Top = 15
            Width = 81
            Height = 19
            Hint = 'Data de Nascimento do '#13#10'Emitente do Cheque'
            Color = 14155775
            Ctl3D = False
            DataField = 'CHDTNAS'
            DataSource = DM6.Src_ChqCP
            ParentCtl3D = False
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
          end
        end
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 776
        Height = 335
        DataSource = DM6.Src_ChqCP
        FixedColor = 14680063
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CHNUMERO'
            Title.Alignment = taCenter
            Title.Caption = 'N'#250'mero'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHBANCO'
            Title.Alignment = taCenter
            Title.Caption = 'Banco'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHSERIE'
            Title.Alignment = taCenter
            Title.Caption = 'S'#233'rie'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'nomfor'
            Title.Alignment = taCenter
            Title.Caption = 'Nome do Cliente'
            Width = 201
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHVALOR'
            Title.Alignment = taCenter
            Title.Caption = 'Valor'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHDTDEP'
            Title.Alignment = taCenter
            Title.Caption = 'Dt.Depos'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHAGENCIA'
            Title.Alignment = taCenter
            Title.Caption = 'Agencia'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHCOMP'
            Title.Alignment = taCenter
            Title.Caption = 'Compensa'#231#227'o'
            Width = 78
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 0
    Width = 784
    Height = 35
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
      Left = 472
      Top = 6
      Width = 224
      Height = 26
      Cursor = crHandPoint
      DataSource = DM6.Src_ChqCP
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 5
    end
    object btnSair: TBitBtn
      Left = 696
      Top = 6
      Width = 95
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
    Top = 427
    Width = 784
    Height = 34
    Caption = ''
    object sbDetBai: TSpeedButton [0]
      Left = 1
      Top = 6
      Width = 135
      Height = 26
      Caption = 'Detalhes da Baixa'
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
      OnClick = sbDetBaiClick
    end
    object SbDetOri: TSpeedButton [1]
      Left = 136
      Top = 6
      Width = 147
      Height = 26
      Caption = 'Detalhes da Origem'
      Glyph.Data = {
        36060000424D3606000000000000360400002800000020000000100000000100
        08000000000000020000C40E0000C40E00000001000000000000000000008080
        8000000080000080800000800000808000008000000080008000408080004040
        0000FF80000080400000FF00400000408000FFFFFF00C0C0C0000000FF0000FF
        FF0000FF0000FFFF0000FF000000FF00FF0080FFFF0080FF0000FFFF8000FF80
        80008000FF004080FF00C0DCC000F0CAA60004040400080808000C0C0C001111
        1100161616001C1C1C002222220029292900555555004D4D4D00424242003939
        3900807CFF005050FF009300D600FFECCC00C6D6EF00D6E7E70090A9AD000000
        330000006600000099000000CC00003300000033330000336600003399000033
        CC000033FF00006600000066330000666600006699000066CC000066FF000099
        00000099330000996600009999000099CC000099FF0000CC000000CC330000CC
        660000CC990000CCCC0000CCFF0000FF660000FF990000FFCC00330000003300
        330033006600330099003300CC003300FF003333000033333300333366003333
        99003333CC003333FF00336600003366330033666600336699003366CC003366
        FF00339900003399330033996600339999003399CC003399FF0033CC000033CC
        330033CC660033CC990033CCCC0033CCFF0033FF330033FF660033FF990033FF
        CC0033FFFF00660000006600330066006600660099006600CC006600FF006633
        00006633330066336600663399006633CC006633FF0066660000666633006666
        6600666699006666CC00669900006699330066996600669999006699CC006699
        FF0066CC000066CC330066CC990066CCCC0066CCFF0066FF000066FF330066FF
        990066FFCC00CC00FF00FF00CC009999000099339900990099009900CC009900
        000099333300990066009933CC009900FF009966000099663300993366009966
        99009966CC009933FF009999330099996600999999009999CC009999FF0099CC
        000099CC330066CC660099CC990099CCCC0099CCFF0099FF000099FF330099CC
        660099FF990099FFCC0099FFFF00CC00000099003300CC006600CC009900CC00
        CC0099330000CC333300CC336600CC339900CC33CC00CC33FF00CC660000CC66
        330099666600CC669900CC66CC009966FF00CC990000CC993300CC996600CC99
        9900CC99CC00CC99FF00CCCC0000CCCC3300CCCC6600CCCC9900CCCCCC00CCCC
        FF00CCFF0000CCFF330099FF6600CCFF9900CCFFCC00CCFFFF00CC003300FF00
        6600FF009900CC330000FF333300FF336600FF339900FF33CC00FF33FF00FF66
        0000FF663300CC666600FF669900FF66CC00CC66FF00FF990000FF993300FF99
        6600FF999900FF99CC00FF99FF00FFCC0000FFCC3300FFCC6600FFCC9900FFCC
        CC00FFCCFF00FFFF3300CCFF6600FFFF9900FFFFCC006666FF0066FF660066FF
        FF00FF666600FF66FF00FFFF66002100A5005F5F5F0077777700030303030303
        0303030303030303030303030303030303030303030303030303030303030303
        030303030303030303030E0E0E0E0E0E030303030E0E0E0E0E0E000000000003
        0303030300000000000301010101010E0303030301010101010E000E00000003
        03030303000E00000003010E0101010E03030303010E0101010E000E00000003
        03030303000E00000003010E0101010E0E030E0E010E0101010E000000000000
        00030000000000000003010101010101010E010101010101010E00000E000000
        0000000E00000000000301010E0101010101010E01010101010E00000E000000
        0F00000E00000000000301010E0101010F01010E01010101010E00000E000000
        0F00000E00000000000301010E0101010F01010E01010101010E030000000000
        0000000000000000030303010101010101010101010101010E030303000E0000
        0003000E0000000303030303010E0101010E010E0101010E0303030300000000
        00030000000000030303030301010101010E01010101010E0303030303000000
        030303000000030303030303030101010E03030101010E030303030303000E00
        030303000E0003030303030303010E010E0303010E010E030303030303000000
        030303000000030303030303030101010E03030101010E030303030303030303
        0303030303030303030303030303030303030303030303030303}
      NumGlyphs = 2
      OnClick = SbDetOriClick
    end
    inherited DBNavigator1: TDBNavigator
      Left = 9
      Top = 54
      Width = 432
    end
    inherited SAIR: TBitBtn
      Left = 675
      Top = 14
      Width = 110
      Visible = False
    end
  end
end
