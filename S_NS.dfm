inherited Frm_NS: TFrm_NS
  Left = 134
  Top = 139
  Width = 1053
  Height = 571
  Caption = 'Manuten'#231#227'o no Cadastro de Notas Fiscais de Sa'#237'das'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 29
    Width = 1045
    Height = 34
    inherited lbl_emp: TLabel
      Left = 1000
      Height = 32
    end
    inherited Pesquisapor: TLabel
      Top = 10
    end
    object Label102: TLabel [2]
      Left = 534
      Top = 11
      Width = 36
      Height = 13
      Caption = 'Listar:'
    end
    inherited BBnAtu: TBitBtn
      Left = 393
      Top = 7
      Height = 22
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Top = 8
      Items.Strings = (
        'N'#250'mero Nota'
        'C'#243'digo do Cliente'
        'Data da Nota'
        'Chave Pedido'
        'N'#250'mero Cupom'
        'Data Cupom'
        'N'#250'mero NFCE'
        'Data NFCE')
    end
    inherited Edit1: TMaskEdit
      Top = 8
      OnChange = Edit1Change
      OnExit = Edit1Exit
    end
    object cb_tipodoc: TComboBox
      Left = 584
      Top = 6
      Width = 145
      Height = 21
      ItemHeight = 13
      ItemIndex = 3
      TabOrder = 3
      Text = 'Todos'
      Items.Strings = (
        'N.Fiscal'
        'Cupom'
        'NFCe'
        'Todos')
    end
    object bbvalidar: TBitBtn
      Left = 728
      Top = 8
      Width = 131
      Height = 25
      Caption = 'Validar Ch Acesso'
      TabOrder = 4
      OnClick = bbvalidarClick
    end
  end
  inherited PC1: TPageControl
    Top = 63
    Width = 1045
    Height = 407
    OnChange = PC1Change
    inherited tsCad: TTabSheet
      object Label2: TLabel
        Left = 223
        Top = 1
        Width = 64
        Height = 13
        Caption = 'N'#250'mero NF'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 301
        Top = 1
        Width = 42
        Height = 13
        Caption = 'Modelo'
        FocusControl = dbModelo
      end
      object Label1: TLabel
        Left = 110
        Top = 44
        Width = 137
        Height = 13
        Caption = 'Razao Social do Cliente'
        FocusControl = DBEdit1
      end
      object Label4: TLabel
        Left = 5
        Top = 45
        Width = 101
        Height = 13
        Caption = 'C'#243'digo do Cliente'
        FocusControl = DBEdit4
      end
      object Label6: TLabel
        Left = 4
        Top = 80
        Width = 36
        Height = 13
        Caption = 'CFO 1'
        FocusControl = DBEdit6
      end
      object Label8: TLabel
        Left = 60
        Top = 80
        Width = 115
        Height = 13
        Caption = 'Descricao do CFO 1'
        FocusControl = DBEdit8
      end
      object Label9: TLabel
        Left = 61
        Top = 115
        Width = 115
        Height = 13
        Caption = 'Descricao do CFO 2'
        FocusControl = DBEdit9
      end
      object Label7: TLabel
        Left = 5
        Top = 115
        Width = 36
        Height = 13
        Caption = 'CFO 2'
        FocusControl = DBEdit7
      end
      object Label5: TLabel
        Left = 3
        Top = 153
        Width = 111
        Height = 13
        Caption = 'Data/Hora Emissao'
      end
      object Label10: TLabel
        Left = 206
        Top = 153
        Width = 79
        Height = 13
        Caption = 'Total da Nota'
        FocusControl = DBEdit10
      end
      object Label35: TLabel
        Left = 306
        Top = 153
        Width = 81
        Height = 13
        Caption = 'Valor do Frete'
        FocusControl = DBEdit29
      end
      object Label36: TLabel
        Left = 409
        Top = 153
        Width = 63
        Height = 13
        Caption = 'Chave Ped'
        FocusControl = DBEdit30
      end
      object Label37: TLabel
        Left = 477
        Top = 153
        Width = 37
        Height = 13
        Caption = 'Ordem'
        FocusControl = db_ordem
      end
      object Label52: TLabel
        Left = 355
        Top = 2
        Width = 30
        Height = 13
        Caption = 'S'#233'rie'
        FocusControl = dbSerie
      end
      object Label53: TLabel
        Left = 392
        Top = 3
        Width = 59
        Height = 13
        Caption = 'Sub_S'#233'rie'
        FocusControl = dbSubSerie
      end
      object Label85: TLabel
        Left = 200
        Top = 193
        Width = 79
        Height = 13
        Caption = 'Status da NF:'
        FocusControl = DBEdit4
      end
      object Label93: TLabel
        Left = 456
        Top = 1
        Width = 94
        Height = 13
        Caption = 'Tipo Documento'
      end
      object Label94: TLabel
        Left = 411
        Top = 222
        Width = 81
        Height = 13
        Caption = 'Tipo do Frete:'
      end
      object DBt_info: TDBText
        Left = 4
        Top = 280
        Width = 899
        Height = 17
        DataField = 'info_emissao'
        DataSource = DM1.Src_NS
      end
      object DBRg_EntSai: TDBRadioGroup
        Left = 3
        Top = -1
        Width = 214
        Height = 37
        Caption = 'Tipo do Registro:'
        Columns = 3
        Ctl3D = False
        DataField = 'NSTIPO'
        DataSource = DM1.Src_NS
        Items.Strings = (
          '&Saida'
          '&Entrada'
          'Servi'#231'o')
        ParentCtl3D = False
        TabOrder = 0
        Values.Strings = (
          '0'
          '1'
          '2')
      end
      object DBEdit2: TDBEdit
        Left = 223
        Top = 17
        Width = 69
        Height = 19
        Ctl3D = False
        DataField = 'NSNUMERO'
        DataSource = DM1.Src_NS
        ParentCtl3D = False
        TabOrder = 1
      end
      object dbModelo: TDBEdit
        Left = 305
        Top = 17
        Width = 32
        Height = 19
        Ctl3D = False
        DataField = 'NSMODELO'
        DataSource = DM1.Src_NS
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit1: TDBEdit
        Left = 105
        Top = 61
        Width = 309
        Height = 19
        TabStop = False
        Color = 16753873
        Ctl3D = False
        DataField = 'razcli'
        DataSource = DM1.Src_NS
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit4: TDBEdit
        Left = 5
        Top = 61
        Width = 101
        Height = 19
        Ctl3D = False
        DataField = 'NSCODCLI'
        DataSource = DM1.Src_NS
        ParentCtl3D = False
        TabOrder = 8
        OnExit = DBEdit4Exit
        OnKeyPress = DBEdit4KeyPress
      end
      object DBEdit6: TDBEdit
        Left = 5
        Top = 96
        Width = 56
        Height = 19
        Ctl3D = False
        DataField = 'NSCFO1'
        DataSource = DM1.Src_NS
        ParentCtl3D = False
        TabOrder = 10
        OnExit = DBEdit6Exit
        OnKeyPress = DBEdit6KeyPress
      end
      object DBEdit8: TDBEdit
        Left = 60
        Top = 96
        Width = 354
        Height = 19
        TabStop = False
        Color = 16753873
        Ctl3D = False
        DataField = 'nomcfo1'
        DataSource = DM1.Src_NS
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 11
      end
      object DBEdit9: TDBEdit
        Left = 61
        Top = 130
        Width = 354
        Height = 19
        TabStop = False
        Color = 16753873
        Ctl3D = False
        DataField = 'nomcfo2'
        DataSource = DM1.Src_NS
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 12
      end
      object DBEdit7: TDBEdit
        Left = 5
        Top = 130
        Width = 57
        Height = 19
        Ctl3D = False
        DataField = 'NSCFO2'
        DataSource = DM1.Src_NS
        ParentCtl3D = False
        TabOrder = 13
        OnExit = DBEdit7Exit
        OnKeyPress = DBEdit7KeyPress
      end
      object db_ordem: TDBEdit
        Left = 477
        Top = 168
        Width = 37
        Height = 19
        Ctl3D = False
        DataField = 'NSORDEMP'
        DataSource = DM1.Src_NS
        ParentCtl3D = False
        TabOrder = 17
      end
      object DBEdit30: TDBEdit
        Left = 409
        Top = 168
        Width = 65
        Height = 19
        Ctl3D = False
        DataField = 'NSCHAVEP'
        DataSource = DM1.Src_NS
        ParentCtl3D = False
        TabOrder = 16
      end
      object DBEdit29: TDBEdit
        Left = 306
        Top = 168
        Width = 100
        Height = 19
        Ctl3D = False
        DataField = 'NSFRETE'
        DataSource = DM1.Src_NS
        ParentCtl3D = False
        TabOrder = 15
        OnKeyPress = DBEdit3KeyPress
      end
      object DBEdit10: TDBEdit
        Left = 204
        Top = 168
        Width = 100
        Height = 19
        Ctl3D = False
        DataField = 'NSTOTNOTA'
        DataSource = DM1.Src_NS
        ParentCtl3D = False
        TabOrder = 14
        OnKeyPress = DBEdit3KeyPress
      end
      object GroupBox7: TGroupBox
        Left = 519
        Top = 39
        Width = 360
        Height = 87
        Caption = 'Dados Sobre o Cupom Fiscal:'
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 9
        object Label27: TLabel
          Left = 5
          Top = 16
          Width = 63
          Height = 13
          Caption = 'N'#250'mero CF'
          FocusControl = DBEdit44
        end
        object Label28: TLabel
          Left = 72
          Top = 16
          Width = 107
          Height = 13
          Caption = 'S'#233'rie Equipamento'
          FocusControl = DBEdit45
        end
        object Label46: TLabel
          Left = 290
          Top = 14
          Width = 28
          Height = 13
          Caption = 'Data'
          FocusControl = DBEdit46
        end
        object Label47: TLabel
          Left = 243
          Top = 16
          Width = 24
          Height = 13
          Caption = 'ECF'
          FocusControl = DBEdit46
        end
        object Label51: TLabel
          Left = 185
          Top = 16
          Width = 56
          Height = 13
          Caption = 'Mod.Doc.'
          FocusControl = DBEdit44
        end
        object Label54: TLabel
          Left = 5
          Top = 50
          Width = 65
          Height = 13
          Caption = 'Acr'#233'scimos'
          FocusControl = DBEdit3
        end
        object Label55: TLabel
          Left = 94
          Top = 50
          Width = 61
          Height = 13
          Caption = 'Descontos'
          FocusControl = DBEdit52
        end
        object DBEdit44: TDBEdit
          Left = 3
          Top = 32
          Width = 64
          Height = 19
          Ctl3D = False
          DataField = 'NSNUMCUP'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBEdit45: TDBEdit
          Left = 70
          Top = 32
          Width = 111
          Height = 19
          Ctl3D = False
          DataField = 'NSSERIEECF'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBEdit46: TDBEdit
          Left = 276
          Top = 32
          Width = 66
          Height = 19
          Ctl3D = False
          DataField = 'NSDATCUP'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 4
        end
        object DBCheckBox2: TDBCheckBox
          Left = 229
          Top = 64
          Width = 123
          Height = 17
          Caption = 'Cupom Cancelado'
          DataField = 'NSSITCUP'
          DataSource = DM1.Src_NS
          TabOrder = 7
          ValueChecked = '9'
          ValueUnchecked = '0'
        end
        object DBEdit47: TDBEdit
          Left = 240
          Top = 32
          Width = 33
          Height = 19
          Ctl3D = False
          DataField = 'NSCODECF'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 3
        end
        object DBEdit51: TDBEdit
          Left = 184
          Top = 32
          Width = 53
          Height = 19
          Ctl3D = False
          DataField = 'NSMODECF'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 2
        end
        object DBEdit3: TDBEdit
          Left = 3
          Top = 64
          Width = 81
          Height = 19
          Ctl3D = False
          DataField = 'NSCUPACRE'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 5
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit52: TDBEdit
          Left = 88
          Top = 64
          Width = 86
          Height = 19
          Ctl3D = False
          DataField = 'NSCUPDES'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 6
          OnKeyPress = DBEdit3KeyPress
        end
      end
      object GroupBox8: TGroupBox
        Left = 518
        Top = 133
        Width = 488
        Height = 164
        Caption = 'Sobre Servi'#231'os:'
        TabOrder = 20
        object Label48: TLabel
          Left = 74
          Top = 77
          Width = 62
          Height = 13
          Caption = 'Base Calc.'
          FocusControl = DBEdit44
        end
        object Label50: TLabel
          Left = 155
          Top = 74
          Width = 45
          Height = 13
          Caption = 'Imposto'
          FocusControl = DBEdit44
        end
        object Label49: TLabel
          Left = 237
          Top = 75
          Width = 33
          Height = 13
          Caption = 'CFOP'
          FocusControl = DBEdit44
        end
        object Label74: TLabel
          Left = 25
          Top = 92
          Width = 43
          Height = 13
          Caption = 'ISSQN:'
          FocusControl = DBEdit44
        end
        object Label75: TLabel
          Left = 35
          Top = 111
          Width = 34
          Height = 13
          Caption = 'INSS:'
          FocusControl = DBEdit44
        end
        object Label76: TLabel
          Left = 34
          Top = 129
          Width = 34
          Height = 13
          Caption = 'IRRF:'
          FocusControl = DBEdit44
        end
        object Label99: TLabel
          Left = 4
          Top = 18
          Width = 68
          Height = 13
          Caption = 'N'#250'mero NF:'
          FocusControl = DBEdit1
        end
        object Label104: TLabel
          Left = 236
          Top = 18
          Width = 77
          Height = 13
          Caption = 'N'#250'mero RPS:'
          FocusControl = DBEdit1
        end
        object Label105: TLabel
          Left = 256
          Top = 34
          Width = 59
          Height = 13
          Caption = 'Protocolo:'
          FocusControl = DBEdit1
        end
        object Label106: TLabel
          Left = 3
          Top = 54
          Width = 92
          Height = 13
          Caption = 'Data/Hora Rec:'
          FocusControl = DBEdit1
        end
        object Label107: TLabel
          Left = 217
          Top = 52
          Width = 98
          Height = 13
          Caption = 'Data/Hora Canc:'
          FocusControl = DBEdit1
        end
        object Label108: TLabel
          Left = 8
          Top = 36
          Width = 34
          Height = 13
          Caption = 'S'#233'rie:'
          FocusControl = DBEdit1
        end
        object DBEdit48: TDBEdit
          Left = 73
          Top = 91
          Width = 75
          Height = 19
          Ctl3D = False
          DataField = 'NSBCISSQN'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit49: TDBEdit
          Left = 154
          Top = 91
          Width = 75
          Height = 19
          Ctl3D = False
          DataField = 'NSVISSQN'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 1
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit50: TDBEdit
          Left = 237
          Top = 91
          Width = 35
          Height = 19
          Ctl3D = False
          DataField = 'NSCFOSER'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 2
        end
        object DBEdit68: TDBEdit
          Left = 73
          Top = 109
          Width = 75
          Height = 19
          Ctl3D = False
          DataField = 'NSBCINSS'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 3
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit82: TDBEdit
          Left = 154
          Top = 109
          Width = 75
          Height = 19
          Ctl3D = False
          DataField = 'NSVINSS'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 4
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit83: TDBEdit
          Left = 73
          Top = 127
          Width = 75
          Height = 19
          Ctl3D = False
          DataField = 'NSBCIRRF'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 5
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit84: TDBEdit
          Left = 154
          Top = 127
          Width = 75
          Height = 19
          Ctl3D = False
          DataField = 'NSVIRRF'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 6
          OnKeyPress = DBEdit3KeyPress
        end
        object DBE_NSNFSERV_NUMNF: TDBEdit
          Left = 75
          Top = 15
          Width = 80
          Height = 19
          Ctl3D = False
          DataField = 'NSNFSERV_NUMNF'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 7
        end
        object DBE_NSNFSERV_NUMNF_RPS: TDBEdit
          Left = 322
          Top = 15
          Width = 80
          Height = 19
          Ctl3D = False
          DataField = 'NSNFSERV_NUMNF_RPS'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 8
        end
        object DBE_NSNFSERV_PROTOCOLO: TDBEdit
          Left = 322
          Top = 33
          Width = 80
          Height = 19
          Ctl3D = False
          DataField = 'NSNFSERV_PROTOCOLO'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 9
        end
        object DBE_NSNFSERV_DATHORREC: TDBEdit
          Left = 100
          Top = 51
          Width = 111
          Height = 19
          Ctl3D = False
          DataField = 'NSNFSERV_DATHORREC'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 10
        end
        object DBE_NSNFSERV_DATHORCANC: TDBEdit
          Left = 322
          Top = 51
          Width = 111
          Height = 19
          Ctl3D = False
          DataField = 'NSNFSERV_DATHORCANC'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 11
        end
        object DBE_NSNFSERV_SERIE: TDBEdit
          Left = 75
          Top = 33
          Width = 80
          Height = 19
          Ctl3D = False
          DataField = 'NSNFSERV_SERIE'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 12
        end
      end
      object dbSerie: TDBEdit
        Left = 354
        Top = 17
        Width = 35
        Height = 19
        Ctl3D = False
        DataField = 'NSSERIE'
        DataSource = DM1.Src_NS
        ParentCtl3D = False
        TabOrder = 3
      end
      object dbSubSerie: TDBEdit
        Left = 394
        Top = 17
        Width = 51
        Height = 19
        Ctl3D = False
        DataField = 'NSSUBSER'
        DataSource = DM1.Src_NS
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBCB_Emitente: TDBCheckBox
        Left = 5
        Top = 194
        Width = 145
        Height = 17
        Caption = 'Emiss'#227'o de Terceiros'
        DataField = 'NSEMITENTE'
        DataSource = DM1.Src_NS
        TabOrder = 18
        ValueChecked = 'T'
        ValueUnchecked = 'P'
      end
      object DBRadioGroup2: TDBRadioGroup
        Left = 587
        Top = 0
        Width = 307
        Height = 39
        Caption = 'Tipo da Venda:'
        Columns = 3
        Ctl3D = False
        DataField = 'NSAVAP'
        DataSource = DM1.Src_NS
        Items.Strings = (
          'a vista'
          'a prazo'
          'sem pagamento')
        ParentCtl3D = False
        TabOrder = 21
        Values.Strings = (
          '0'
          '1'
          '9')
      end
      object TRxDBCB_STATUS: TRxDBComboBox
        Left = 284
        Top = 190
        Width = 132
        Height = 21
        Style = csDropDownList
        Ctl3D = True
        DataField = 'NSSTATUS'
        DataSource = DM1.Src_NS
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'Normal'
          'Inutilizada'
          'Cancelada'
          'Denegada')
        ParentCtl3D = False
        TabOrder = 19
        Values.Strings = (
          '0'
          '8'
          '9'
          '7')
      end
      object GB_SOBRE_CANC: TGroupBox
        Left = 4
        Top = 216
        Width = 388
        Height = 57
        Caption = 'Sobre o Cancelamento:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 22
        object Label87: TLabel
          Left = 3
          Top = 15
          Width = 74
          Height = 13
          Caption = 'Data e Hora:'
          FocusControl = DBEdit1
        end
        object Label88: TLabel
          Left = 18
          Top = 33
          Width = 59
          Height = 13
          Caption = 'Protocolo:'
          FocusControl = DBEdit1
        end
        object DBE_DATHOR_CANC: TDBEdit
          Left = 81
          Top = 15
          Width = 264
          Height = 19
          Ctl3D = False
          DataField = 'NSDATHOR_CANC'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBE_NPROT_CANC: TDBEdit
          Left = 81
          Top = 33
          Width = 264
          Height = 19
          Ctl3D = False
          DataField = 'NSXML_NPROT_CANC'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 1
        end
      end
      object GB_SOBRE_INUT: TGroupBox
        Left = 4
        Top = 218
        Width = 388
        Height = 57
        Caption = 'Sobre o Inutiliza'#231#227'o:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 23
        object Label89: TLabel
          Left = 3
          Top = 15
          Width = 74
          Height = 13
          Caption = 'Data e Hora:'
          FocusControl = DBEdit1
        end
        object Label90: TLabel
          Left = 18
          Top = 33
          Width = 59
          Height = 13
          Caption = 'Protocolo:'
          FocusControl = DBEdit1
        end
        object DBE_DATHOR_INUT: TDBEdit
          Left = 81
          Top = 15
          Width = 264
          Height = 19
          Ctl3D = False
          DataField = 'NSDATHOR_INUT'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBE_NPROT_INUT: TDBEdit
          Left = 81
          Top = 33
          Width = 264
          Height = 19
          Ctl3D = False
          DataField = 'NSXML_NPROT_INUT'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 1
        end
      end
      object GB_SOBRE_DENEGACAO: TGroupBox
        Left = 4
        Top = 219
        Width = 388
        Height = 57
        Caption = 'Sobre Denega'#231#227'o:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 24
        object Label91: TLabel
          Left = 3
          Top = 15
          Width = 74
          Height = 13
          Caption = 'Data e Hora:'
          FocusControl = DBEdit1
        end
        object Label92: TLabel
          Left = 18
          Top = 33
          Width = 59
          Height = 13
          Caption = 'Protocolo:'
          FocusControl = DBEdit1
        end
        object DBE_NSDATHOR_DENEG: TDBEdit
          Left = 81
          Top = 15
          Width = 264
          Height = 19
          Ctl3D = False
          DataField = 'NSDATHOR_DENEG'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 0
        end
        object DBE_NSXML_NPROT_DENEG: TDBEdit
          Left = 81
          Top = 33
          Width = 264
          Height = 19
          Ctl3D = False
          DataField = 'NSXML_NPROT_DENEG'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 1
        end
      end
      object DBCB_TipDoc: TRxDBComboBox
        Left = 454
        Top = 15
        Width = 132
        Height = 21
        Style = csDropDownList
        Ctl3D = True
        DataField = 'NSNFCF'
        DataSource = DM1.Src_NS
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          'N.Fiscal'
          'Cupom'
          'NFCe')
        ParentCtl3D = False
        TabOrder = 5
        Values.Strings = (
          '0'
          '1'
          '2')
      end
      object DBCB_TipoFrete: TRxDBComboBox
        Left = 397
        Top = 242
        Width = 110
        Height = 21
        Style = csDropDownList
        Ctl3D = True
        DataField = 'NSFRETEPC'
        DataSource = DM1.Src_NS
        EnableValues = True
        ItemHeight = 13
        Items.Strings = (
          '0 - CIF  - Emitente'
          '1 - FOB - Destinatario'
          '2 - por conta de terceiros'
          '9 - Sem Frete')
        ParentCtl3D = False
        TabOrder = 6
        Values.Strings = (
          '0'
          '1'
          '2'
          '9')
      end
      object GroupBox6: TGroupBox
        Left = 0
        Top = 296
        Width = 1037
        Height = 83
        Align = alBottom
        Caption = 'dados da NFCE:'
        TabOrder = 25
        object Label95: TLabel
          Left = 5
          Top = 19
          Width = 172
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Chave de Acesso:'
        end
        object Label97: TLabel
          Left = 5
          Top = 37
          Width = 172
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'N'#250'mero da NFCE:'
        end
        object Label98: TLabel
          Left = 625
          Top = 37
          Width = 34
          Height = 13
          Caption = 'Serie:'
        end
        object Label96: TLabel
          Left = 5
          Top = 55
          Width = 172
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'N'#250'mero do Protocolo:'
        end
        object Label100: TLabel
          Left = 548
          Top = 39
          Width = 46
          Height = 13
          Caption = 'Modelo:'
        end
        object Label101: TLabel
          Left = 503
          Top = 58
          Width = 55
          Height = 13
          Caption = 'Situa'#231#227'o:'
        end
        object Label103: TLabel
          Left = 260
          Top = 38
          Width = 90
          Height = 13
          Caption = 'Darta da NFCE:'
        end
        object DBE_NSNFCE_CHV_ACESSO: TDBEdit
          Left = 182
          Top = 18
          Width = 515
          Height = 19
          Ctl3D = False
          DataField = 'NSNFCE_CHV_ACESSO'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          OnKeyPress = DBEdit3KeyPress
        end
        object DBE_NFCE_NUMERO: TDBEdit
          Left = 182
          Top = 35
          Width = 75
          Height = 19
          Ctl3D = False
          DataField = 'NSNFCE_NUMERO'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
          OnKeyPress = DBEdit3KeyPress
        end
        object DBE_NFCE_SERIE: TDBEdit
          Left = 661
          Top = 35
          Width = 36
          Height = 19
          Ctl3D = False
          DataField = 'NSNFCE_SERIE'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
          OnKeyPress = DBEdit3KeyPress
        end
        object DBE_NSNFCE_NPROT: TDBEdit
          Left = 182
          Top = 53
          Width = 171
          Height = 19
          Ctl3D = False
          DataField = 'NSNFCE_NPROT'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
          OnKeyPress = DBEdit3KeyPress
        end
        object DBE_NSNFCE_MODELO: TDBEdit
          Left = 596
          Top = 36
          Width = 25
          Height = 19
          Ctl3D = False
          DataField = 'NSNFCE_MODELO'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
          OnKeyPress = DBEdit3KeyPress
        end
        object RxDBComboBox1: TRxDBComboBox
          Left = 565
          Top = 54
          Width = 132
          Height = 21
          Style = csDropDownList
          Ctl3D = True
          DataField = 'NSNFCE_SITUACAO'
          DataSource = DM1.Src_NS
          EnableValues = True
          ItemHeight = 13
          Items.Strings = (
            'Normal'
            'Normal'
            'Inutilizada'
            'Cancelada'
            'Denegada')
          ParentCtl3D = False
          TabOrder = 5
          Values.Strings = (
            '0'
            '2'
            '7'
            '8'
            '9'
            '')
        end
        object DBE_NSNFCE_DATA: TDBEdit
          Left = 350
          Top = 36
          Width = 193
          Height = 19
          Ctl3D = False
          DataField = 'NSNFCE_DATA'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 6
          OnKeyPress = DBEdit3KeyPress
        end
      end
      object edt_dtemis_data: TDateEdit
        Left = 4
        Top = 168
        Width = 108
        Height = 21
        NumGlyphs = 2
        TabOrder = 26
        OnExit = edt_dtemis_dataExit
      end
      object edt_dtemis_hora: TEdit
        Left = 111
        Top = 169
        Width = 89
        Height = 21
        TabOrder = 27
        Text = 'edt_dtemis_hora'
        OnChange = edt_dtemis_horaChange
        OnExit = edt_dtemis_horaExit
      end
    end
    object tsOutros: TTabSheet [1]
      Caption = 'Impostos por Situa'#231#227'o'
      ImageIndex = 4
      object GroupBox1: TGroupBox
        Left = 0
        Top = 143
        Width = 908
        Height = 45
        Align = alTop
        Caption = 'Icms Retido'
        TabOrder = 0
        object Label12: TLabel
          Left = 519
          Top = 8
          Width = 82
          Height = 13
          Caption = 'Icms Negativo'
        end
        object Label18: TLabel
          Left = 415
          Top = 8
          Width = 84
          Height = 13
          Caption = 'Base Negativo'
        end
        object Label19: TLabel
          Left = 313
          Top = 9
          Width = 76
          Height = 13
          Caption = 'Icms Positivo'
        end
        object Label20: TLabel
          Left = 210
          Top = 10
          Width = 78
          Height = 13
          Caption = 'Base Positivo'
        end
        object Label21: TLabel
          Left = 107
          Top = 8
          Width = 88
          Height = 13
          Caption = 'Icms Inalterado'
        end
        object Label22: TLabel
          Left = 5
          Top = 11
          Width = 90
          Height = 13
          Caption = 'Base Inalterado'
        end
        object DBEdit17: TDBEdit
          Left = 3
          Top = 23
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSBASERI'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit18: TDBEdit
          Left = 107
          Top = 24
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSICMSRI'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 1
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit19: TDBEdit
          Left = 210
          Top = 24
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSBASERP'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 2
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit20: TDBEdit
          Left = 313
          Top = 24
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSICMSRP'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 3
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit21: TDBEdit
          Left = 415
          Top = 24
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSBASERN'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 4
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit22: TDBEdit
          Left = 519
          Top = 24
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSICMSRN'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 5
          OnKeyPress = DBEdit3KeyPress
        end
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 96
        Width = 908
        Height = 47
        Align = alTop
        Caption = 'Icms Normal do Retido'
        TabOrder = 1
        object Label29: TLabel
          Left = 519
          Top = 10
          Width = 82
          Height = 13
          Caption = 'Icms Negativo'
        end
        object Label30: TLabel
          Left = 415
          Top = 10
          Width = 84
          Height = 13
          Caption = 'Base Negativo'
        end
        object Label31: TLabel
          Left = 313
          Top = 11
          Width = 76
          Height = 13
          Caption = 'Icms Positivo'
        end
        object Label32: TLabel
          Left = 210
          Top = 11
          Width = 78
          Height = 13
          Caption = 'Base Positivo'
        end
        object Label33: TLabel
          Left = 107
          Top = 11
          Width = 88
          Height = 13
          Caption = 'Icms Inalterado'
        end
        object Label34: TLabel
          Left = 8
          Top = 13
          Width = 90
          Height = 13
          Caption = 'Base Inalterado'
        end
        object Label26: TLabel
          Left = 625
          Top = 9
          Width = 101
          Height = 13
          Caption = 'Al'#237'quota de Icms '
          FocusControl = DBEdit43
        end
        object DBEdit23: TDBEdit
          Left = 3
          Top = 25
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSBASENRI'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit24: TDBEdit
          Left = 107
          Top = 25
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSICMSNRI'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 1
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit25: TDBEdit
          Left = 210
          Top = 25
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSBASENRP'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 2
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit26: TDBEdit
          Left = 313
          Top = 25
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSICMSNRP'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 3
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit27: TDBEdit
          Left = 415
          Top = 25
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSBASENRN'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 4
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit28: TDBEdit
          Left = 519
          Top = 25
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSICMSNRN'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 5
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit43: TDBEdit
          Left = 623
          Top = 25
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSALIQ2'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 6
          OnKeyPress = DBEdit3KeyPress
        end
      end
      object gb_totpro: TGroupBox
        Left = 0
        Top = 48
        Width = 908
        Height = 48
        Align = alTop
        Caption = 'Icms Normal'
        TabOrder = 2
        object Label11: TLabel
          Left = 5
          Top = 11
          Width = 90
          Height = 13
          Caption = 'Base Inalterado'
          FocusControl = DBEdit11
        end
        object Label13: TLabel
          Left = 210
          Top = 10
          Width = 78
          Height = 13
          Caption = 'Base Positivo'
          FocusControl = DBEdit13
        end
        object Label14: TLabel
          Left = 313
          Top = 9
          Width = 76
          Height = 13
          Caption = 'Icms Positivo'
          FocusControl = DBEdit14
        end
        object Label15: TLabel
          Left = 415
          Top = 8
          Width = 84
          Height = 13
          Caption = 'Base Negativo'
          FocusControl = DBEdit15
        end
        object Label16: TLabel
          Left = 519
          Top = 7
          Width = 82
          Height = 13
          Caption = 'Icms Negativo'
          FocusControl = DBEdit16
        end
        object Label17: TLabel
          Left = 107
          Top = 8
          Width = 88
          Height = 13
          Caption = 'Icms Inalterado'
        end
        object Label38: TLabel
          Left = 624
          Top = 9
          Width = 101
          Height = 13
          Caption = 'Al'#237'quota de Icms '
        end
        object DBEdit11: TDBEdit
          Left = 3
          Top = 25
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSBASENI'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit12: TDBEdit
          Left = 107
          Top = 25
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSICMSNI'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 1
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit13: TDBEdit
          Left = 210
          Top = 24
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSBASENP'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 2
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit14: TDBEdit
          Left = 313
          Top = 25
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSICMSNP'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 3
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit15: TDBEdit
          Left = 415
          Top = 25
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSBASENN'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 4
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit16: TDBEdit
          Left = 519
          Top = 23
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSICMSNN'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 5
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit32: TDBEdit
          Left = 625
          Top = 23
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSALIQ'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 6
          OnKeyPress = DBEdit3KeyPress
        end
      end
      object gb_totalpro: TGroupBox
        Left = 0
        Top = 0
        Width = 908
        Height = 48
        Align = alTop
        Caption = 'Total de Produtos'
        TabOrder = 3
        object Label42: TLabel
          Left = 2
          Top = 12
          Width = 64
          Height = 13
          Caption = 'Inalterados'
          FocusControl = DBEdit36
        end
        object Label43: TLabel
          Left = 107
          Top = 12
          Width = 52
          Height = 13
          Caption = 'Positivos'
          FocusControl = DBEdit37
        end
        object Label44: TLabel
          Left = 210
          Top = 11
          Width = 58
          Height = 13
          Caption = 'Negativos'
          FocusControl = DBEdit38
        end
        object Label45: TLabel
          Left = 519
          Top = 9
          Width = 96
          Height = 13
          Caption = 'Produtos Isentos'
          FocusControl = DBEdit39
        end
        object Label23: TLabel
          Left = 625
          Top = 12
          Width = 38
          Height = 13
          Caption = 'Outras'
          FocusControl = DBEdit40
        end
        object Label24: TLabel
          Left = 313
          Top = 10
          Width = 61
          Height = 13
          Caption = 'Tributados'
          FocusControl = DBEdit41
        end
        object Label25: TLabel
          Left = 415
          Top = 11
          Width = 98
          Height = 13
          Caption = 'Produtos Retidos'
          FocusControl = DBEdit42
        end
        object DBEdit36: TDBEdit
          Left = 2
          Top = 28
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSTOTPROI'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit37: TDBEdit
          Left = 107
          Top = 28
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSTOTPROP'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 1
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit38: TDBEdit
          Left = 209
          Top = 27
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSTOTPRON'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 2
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit39: TDBEdit
          Left = 519
          Top = 26
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSTOTISEN'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 5
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit40: TDBEdit
          Left = 625
          Top = 25
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSTOTOUT'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 6
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit41: TDBEdit
          Left = 313
          Top = 26
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSTOTNOR'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 3
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit42: TDBEdit
          Left = 415
          Top = 27
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSTOTRET'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 4
          OnKeyPress = DBEdit3KeyPress
        end
      end
    end
    object ts_outimp: TTabSheet [2]
      Caption = 'Outros Impostos'
      Enabled = False
      ImageIndex = 1
      object gb_impipi: TGroupBox
        Left = 0
        Top = 122
        Width = 527
        Height = 44
        Caption = 'Icms Sobre Valor do IPI:'
        TabOrder = 0
        object Label56: TLabel
          Left = 5
          Top = 19
          Width = 97
          Height = 13
          Caption = 'Base de Calculo:'
        end
        object Label57: TLabel
          Left = 209
          Top = 19
          Width = 53
          Height = 13
          Caption = 'Al'#237'quota:'
        end
        object Label58: TLabel
          Left = 375
          Top = 19
          Width = 34
          Height = 13
          Caption = 'Valor:'
        end
        object DBEdit53: TDBEdit
          Left = 106
          Top = 17
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSICMS_BCIPI'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit54: TDBEdit
          Left = 272
          Top = 17
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSICMS_ALIPI'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 1
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit55: TDBEdit
          Left = 415
          Top = 17
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSICMS_VLIPI'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 2
          OnKeyPress = DBEdit3KeyPress
        end
      end
      object gb_impfre: TGroupBox
        Left = 0
        Top = 0
        Width = 1037
        Height = 39
        Align = alTop
        Caption = 'Icms Sobre Frete:'
        TabOrder = 1
        object Label59: TLabel
          Left = 5
          Top = 19
          Width = 97
          Height = 13
          Caption = 'Base de Calculo:'
        end
        object Label60: TLabel
          Left = 225
          Top = 19
          Width = 53
          Height = 13
          Caption = 'Al'#237'quota:'
        end
        object Label61: TLabel
          Left = 407
          Top = 19
          Width = 34
          Height = 13
          Caption = 'Valor:'
        end
        object DBEdit56: TDBEdit
          Left = 106
          Top = 17
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSICMS_BCFRE'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit57: TDBEdit
          Left = 288
          Top = 17
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSICMS_ALFRE'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 1
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit58: TDBEdit
          Left = 447
          Top = 17
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSICMS_VLFRE'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 2
          OnKeyPress = DBEdit3KeyPress
        end
      end
      object gb_impseg: TGroupBox
        Left = 0
        Top = 39
        Width = 1037
        Height = 39
        Align = alTop
        Caption = 'Icms Sobre Valor do Seguro:'
        TabOrder = 2
        object Label65: TLabel
          Left = 5
          Top = 19
          Width = 97
          Height = 13
          Caption = 'Base de Calculo:'
        end
        object Label66: TLabel
          Left = 225
          Top = 19
          Width = 53
          Height = 13
          Caption = 'Al'#237'quota:'
        end
        object Label67: TLabel
          Left = 407
          Top = 19
          Width = 34
          Height = 13
          Caption = 'Valor:'
        end
        object DBEdit62: TDBEdit
          Left = 106
          Top = 17
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSICMS_BCSEG'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit63: TDBEdit
          Left = 288
          Top = 17
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSICMS_ALSEG'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 1
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit64: TDBEdit
          Left = 447
          Top = 17
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSICMS_VLSEG'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 2
          OnKeyPress = DBEdit3KeyPress
        end
      end
      object gb_ipi: TGroupBox
        Left = 0
        Top = 78
        Width = 527
        Height = 44
        Caption = 'Total de IPI'
        TabOrder = 3
        object Label39: TLabel
          Left = 107
          Top = 7
          Width = 94
          Height = 13
          Caption = 'Prod.Inalterados'
          FocusControl = DBEdit33
        end
        object Label40: TLabel
          Left = 210
          Top = 6
          Width = 81
          Height = 13
          Caption = 'Prod.positivos'
          FocusControl = DBEdit34
        end
        object Label41: TLabel
          Left = 313
          Top = 6
          Width = 86
          Height = 13
          Caption = 'Prod.negativos'
          FocusControl = DBEdit35
        end
        object DBEdit33: TDBEdit
          Left = 107
          Top = 23
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSIPII'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit34: TDBEdit
          Left = 210
          Top = 22
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSIPIP'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 1
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit35: TDBEdit
          Left = 313
          Top = 22
          Width = 100
          Height = 19
          Ctl3D = False
          DataField = 'NSIPIN'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 2
          OnKeyPress = DBEdit3KeyPress
        end
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 528
        Top = 81
        Width = 252
        Height = 80
        Caption = 'Tipo da Emissao:'
        DataField = 'NSTPIMPRES'
        DataSource = DM1.Src_NS
        Items.Strings = (
          'Formulario continuo'
          'Continuo+NFE(DANFE)-Homologa'#231#227'o'
          'Eletronica(DANFE)')
        TabOrder = 4
        Values.Strings = (
          '0'
          '1'
          '2')
      end
    end
    object tsInfAdic: TTabSheet [3]
      Caption = 'Informa'#231#245'es Complementares'
      ImageIndex = 5
      object GroupBox4: TGroupBox
        Left = 0
        Top = 6
        Width = 415
        Height = 205
        Caption = 'Informa'#231#245'es Complementares do Contribuinte:'
        TabOrder = 0
        object DBEdit31: TDBEdit
          Left = 8
          Top = 17
          Width = 400
          Height = 19
          Ctl3D = False
          DataField = 'NSINFAD01'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit59: TDBEdit
          Left = 8
          Top = 35
          Width = 400
          Height = 19
          Ctl3D = False
          DataField = 'NSINFAD02'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 1
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit60: TDBEdit
          Left = 8
          Top = 53
          Width = 400
          Height = 19
          Ctl3D = False
          DataField = 'NSINFAD03'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 2
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit61: TDBEdit
          Left = 8
          Top = 71
          Width = 400
          Height = 19
          Ctl3D = False
          DataField = 'NSINFAD04'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 3
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit65: TDBEdit
          Left = 8
          Top = 89
          Width = 400
          Height = 19
          Ctl3D = False
          DataField = 'NSINFAD05'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 4
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit66: TDBEdit
          Left = 8
          Top = 107
          Width = 400
          Height = 19
          Ctl3D = False
          DataField = 'NSINFAD06'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 5
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit67: TDBEdit
          Left = 8
          Top = 125
          Width = 400
          Height = 19
          Ctl3D = False
          DataField = 'NSINFAD07'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 6
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit69: TDBEdit
          Left = 8
          Top = 143
          Width = 400
          Height = 19
          Ctl3D = False
          DataField = 'NSINFAD08'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 7
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit70: TDBEdit
          Left = 8
          Top = 161
          Width = 400
          Height = 19
          Ctl3D = False
          DataField = 'NSINFAD09'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 8
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit71: TDBEdit
          Left = 8
          Top = 179
          Width = 400
          Height = 19
          Ctl3D = False
          DataField = 'NSINFAD10'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 9
          OnKeyPress = DBEdit3KeyPress
        end
      end
      object CB_COMPFISCO: TGroupBox
        Left = 410
        Top = 5
        Width = 364
        Height = 64
        Caption = 'Informa'#231#245'es Complementares Fisco'
        TabOrder = 1
        object DBEdit72: TDBEdit
          Left = 3
          Top = 17
          Width = 357
          Height = 19
          Ctl3D = False
          DataField = 'NSINFADFIS01'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit73: TDBEdit
          Left = 3
          Top = 35
          Width = 357
          Height = 19
          Ctl3D = False
          DataField = 'NSINFADFIS02'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          TabOrder = 1
          OnKeyPress = DBEdit3KeyPress
        end
      end
    end
    object TsNFE: TTabSheet [4]
      Caption = 'Sobre a NFE(DANFE)'
      ImageIndex = 2
      object GroupBox5: TGroupBox
        Left = 0
        Top = 0
        Width = 1037
        Height = 191
        Align = alTop
        Caption = 'Outras Informa'#231#245'es sobre NFE:'
        Color = 16769023
        ParentColor = False
        TabOrder = 0
        object Label63: TLabel
          Left = 44
          Top = 27
          Width = 86
          Height = 13
          Caption = 'Chave Acesso:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label64: TLabel
          Left = 19
          Top = 45
          Width = 110
          Height = 13
          Caption = 'N'#250'mero do Recibo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label68: TLabel
          Left = 608
          Top = 27
          Width = 24
          Height = 13
          Caption = 'Dig:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label69: TLabel
          Left = 413
          Top = 45
          Width = 74
          Height = 13
          Caption = 'Data e Hora:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label70: TLabel
          Left = 40
          Top = 63
          Width = 88
          Height = 13
          Caption = 'Status Servi'#231'o:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label71: TLabel
          Left = 391
          Top = 63
          Width = 95
          Height = 13
          Caption = 'N'#250'mero do Lote:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label72: TLabel
          Left = 14
          Top = 80
          Width = 113
          Height = 13
          Caption = 'Nome Arquivo Lote:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label73: TLabel
          Left = 2
          Top = 98
          Width = 128
          Height = 13
          Caption = 'Nome Arquivo Recibo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object Label77: TLabel
          Left = 40
          Top = 117
          Width = 85
          Height = 13
          Caption = 'Status Recibo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label78: TLabel
          Left = 8
          Top = 135
          Width = 144
          Height = 13
          Caption = 'Status Protocolo Recbto:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label79: TLabel
          Left = 366
          Top = 135
          Width = 124
          Height = 13
          Caption = 'Numero do Protocolo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label80: TLabel
          Left = 56
          Top = 153
          Width = 95
          Height = 13
          Caption = 'Digito Validador:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          Visible = False
        end
        object DBEdit74: TDBEdit
          Left = 134
          Top = 24
          Width = 472
          Height = 19
          Ctl3D = False
          DataField = 'NSNFE_CHAVEACESSO'
          DataSource = DM1.Src_NS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit75: TDBEdit
          Left = 134
          Top = 42
          Width = 205
          Height = 19
          Ctl3D = False
          DataField = 'NSNFE_NRECIBO'
          DataSource = DM1.Src_NS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit76: TDBEdit
          Left = 638
          Top = 24
          Width = 59
          Height = 19
          Ctl3D = False
          DataField = 'NSNFE_DCHAVEACESSO'
          DataSource = DM1.Src_NS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit77: TDBEdit
          Left = 492
          Top = 42
          Width = 205
          Height = 19
          Ctl3D = False
          DataField = 'NSNFE_DH_RECIBO'
          DataSource = DM1.Src_NS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          ReadOnly = True
          TabOrder = 3
          Visible = False
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit78: TDBEdit
          Left = 134
          Top = 60
          Width = 205
          Height = 19
          Ctl3D = False
          DataField = 'NSNFE_STATUS'
          DataSource = DM1.Src_NS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          Visible = False
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit79: TDBEdit
          Left = 492
          Top = 60
          Width = 205
          Height = 19
          Ctl3D = False
          DataField = 'NSNFE_LOTENV'
          DataSource = DM1.Src_NS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          Visible = False
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit80: TDBEdit
          Left = 134
          Top = 78
          Width = 563
          Height = 19
          Ctl3D = False
          DataField = 'NSNFE_NOMARQLOT'
          DataSource = DM1.Src_NS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
          Visible = False
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit81: TDBEdit
          Left = 134
          Top = 96
          Width = 563
          Height = 19
          Ctl3D = False
          DataField = 'NSNFE_NOMARQREC'
          DataSource = DM1.Src_NS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
          Visible = False
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit85: TDBEdit
          Left = 134
          Top = 114
          Width = 205
          Height = 19
          Ctl3D = False
          DataField = 'NSNFE_STAT_REC'
          DataSource = DM1.Src_NS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 8
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit86: TDBEdit
          Left = 155
          Top = 132
          Width = 184
          Height = 19
          Ctl3D = False
          DataField = 'NSNFE_STAT_PROT'
          DataSource = DM1.Src_NS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit87: TDBEdit
          Left = 495
          Top = 132
          Width = 205
          Height = 19
          Ctl3D = False
          DataField = 'NSNFE_NUMPROT'
          DataSource = DM1.Src_NS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
          OnKeyPress = DBEdit3KeyPress
        end
        object DBEdit88: TDBEdit
          Left = 155
          Top = 150
          Width = 184
          Height = 19
          Ctl3D = False
          DataField = 'NSNFE_DIGVAL'
          DataSource = DM1.Src_NS
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clLime
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 11
          Visible = False
          OnKeyPress = DBEdit3KeyPress
        end
      end
      object gb_nfServico: TGroupBox
        Left = 0
        Top = 191
        Width = 1037
        Height = 83
        Align = alTop
        Caption = 'Nota Fiscal de Servi'#231'o:'
        Color = 16764108
        ParentColor = False
        TabOrder = 1
        object Label62: TLabel
          Left = 8
          Top = 19
          Width = 170
          Height = 13
          Caption = 'Data e Hora do Recebimento:'
        end
        object Label81: TLabel
          Left = 366
          Top = 18
          Width = 176
          Height = 13
          Caption = 'Data e Hora do Cancelamento:'
        end
        object Label82: TLabel
          Left = 76
          Top = 37
          Width = 101
          Height = 13
          Caption = 'N'#250'mero da NFSe:'
        end
        object Label83: TLabel
          Left = 446
          Top = 37
          Width = 95
          Height = 13
          Caption = 'N'#250'mero do Lote:'
        end
        object Label84: TLabel
          Left = 54
          Top = 55
          Width = 124
          Height = 13
          Caption = 'N'#250'mero do Protocolo:'
        end
        object DBE_NFSERV_DATHORREC: TDBEdit
          Left = 182
          Top = 18
          Width = 155
          Height = 19
          Ctl3D = False
          DataField = 'nfes_data_hora_rec'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          OnKeyPress = DBEdit3KeyPress
        end
        object DBE_NFSERV_DATHORCANC: TDBEdit
          Left = 542
          Top = 17
          Width = 155
          Height = 19
          Ctl3D = False
          DataField = 'nfes_data_hora_canc'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 1
          OnKeyPress = DBEdit3KeyPress
        end
        object DBE_NFSERV_NUMNF: TDBEdit
          Left = 182
          Top = 35
          Width = 155
          Height = 19
          Ctl3D = False
          DataField = 'NSNFSERV_NUMNF'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 2
          OnKeyPress = DBEdit3KeyPress
        end
        object DBE_NFSERV_LOTE: TDBEdit
          Left = 542
          Top = 35
          Width = 155
          Height = 19
          Ctl3D = False
          DataField = 'NSNFSERV_LOTE'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 3
          OnKeyPress = DBEdit3KeyPress
        end
        object DBE_NFSERV_PROTOCOLO: TDBEdit
          Left = 182
          Top = 53
          Width = 515
          Height = 19
          Ctl3D = False
          DataField = 'NSNFSERV_PROTOCOLO'
          DataSource = DM1.Src_NS
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 4
          OnKeyPress = DBEdit3KeyPress
        end
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 1037
        Height = 379
        DataSource = src_ns
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'NSNUMERO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NSMODELO'
            Width = 47
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NSSERIE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NSSUBSER'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'razcli'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NSTOTNOTA'
            Width = 95
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NSDTEMIS'
            Width = 92
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NSCODCLI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NSCNPJ'
            Width = 138
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NSIE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NSCFO1'
            Visible = True
          end>
      end
    end
    object tsOcorrencias: TTabSheet
      Caption = 'Ocorrencias'
      ImageIndex = 6
      object Label86: TLabel
        Left = 0
        Top = 366
        Width = 316
        Height = 13
        Align = alBottom
        Alignment = taCenter
        Caption = 'de um click duplo para visualizar o danfe da ocorrencia'
      end
      object DBGrid_evento: TDBGrid
        Left = 0
        Top = 0
        Width = 1037
        Height = 366
        Align = alClient
        DataSource = src_ocorrencias
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnDblClick = DBGrid_eventoDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'ORDEM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPODOC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATANF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CHAVEPED'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'LOTSEQPED'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODEMPPED'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EVENTO'
            Width = 263
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 0
    Width = 1045
    Height = 29
    Align = alTop
    Caption = ''
    inherited INCLUIR: TBitBtn
      Left = 1
      Top = 1
      Width = 95
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited ALTERAR: TBitBtn
      Left = 95
      Top = 1
      Width = 95
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited EXCLUIR: TBitBtn
      Left = 189
      Top = 1
      Width = 95
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited GRAVAR: TBitBtn
      Left = 283
      Top = 1
      Width = 95
      Height = 26
      Cursor = crHandPoint
      OnClick = GRAVARClick
      Layout = blGlyphLeft
    end
    inherited CANCELAR: TBitBtn
      Left = 377
      Top = 1
      Width = 95
      Height = 26
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    object LANCAR: TBitBtn
      Left = 566
      Top = 1
      Width = 113
      Height = 26
      Cursor = crHandPoint
      Hint = 
        'Permite Incluir/Alterar Pedido que'#13#10'n'#227'o est'#227'o  sendo validado  p' +
        'elo'#13#10'SINTEGRA, n'#227'o Movimenta Estoque'
      Caption = 'Corrigir &Pedido'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = LANCARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
        FFF07F3FF3FF3FFF3FF70F00F00F000F00F07F773773777377370FFFFFFFFFFF
        FFF07F3FF3FF33FFFFF70F00F00FF00000F07F773773377777F70FEEEEEFF0F9
        FCF07F33333337F7F7F70FFFFFFFF0F9FCF07F3FFFF337F737F70F0000FFF0FF
        FCF07F7777F337F337370F0000FFF0FFFFF07F777733373333370FFFFFFFFFFF
        FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
        C880733777777777733700000000000000007777777777777777333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbVerNota: TBitBtn
      Left = 471
      Top = 1
      Width = 95
      Height = 26
      Cursor = crHandPoint
      Hint = 'Visualizar no Estilo de uma Nota Fiscal'
      Caption = '&Ver Nota'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = bbVerNotaClick
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
    end
    object PEDIDO: TBitBtn
      Left = 679
      Top = 1
      Width = 112
      Height = 26
      Cursor = crHandPoint
      Hint = 'Inclus'#227'o de Notas Fiscais'
      Caption = '&Ver Pedido'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = PEDIDOClick
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
    end
  end
  inherited GroupBox2: TGroupBox
    Top = 470
    Width = 1045
    Height = 70
    Caption = ''
    inherited DBNavigator1: TDBNavigator
      Left = 1
      Top = 7
      Width = 196
      Height = 40
      Cursor = crHandPoint
    end
    inherited SAIR: TBitBtn
      Left = 988
      Top = 6
      Width = 45
      Height = 40
      Cursor = crHandPoint
    end
    object bbReeNFE: TBitBtn
      Left = 196
      Top = 7
      Width = 142
      Height = 20
      Cursor = crHandPoint
      Caption = '&Visualizar Danfe'
      TabOrder = 2
      OnClick = bbReeNFEClick
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
    end
    object bbEmail: TBitBtn
      Left = 339
      Top = 9
      Width = 147
      Height = 20
      Cursor = crHandPoint
      Hint = 'Salvar Vers'#227'o para Cliente'
      Caption = 'E-Mail Xml p/Cliente'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = bbEmailClick
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
    object bbBuscarXML: TBitBtn
      Left = 489
      Top = 6
      Width = 131
      Height = 20
      Cursor = crHandPoint
      Hint = 
        'Click aqui paraEnviar Prefeitura'#13#10'o Xml a Prefeitura do Municipi' +
        'o'#13#10'da Nota Selecionada'
      Caption = 'Buscar XML nfe'
      TabOrder = 4
      OnClick = bbBuscarXMLClick
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
    end
    object bbDadoscup: TBitBtn
      Left = -59
      Top = 7
      Width = 97
      Height = 37
      Cursor = crHandPoint
      Caption = 'Dados Cupom'
      TabOrder = 5
      Visible = False
      OnClick = bbDadoscupClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbXmlCanc: TBitBtn
      Left = 490
      Top = 25
      Width = 128
      Height = 20
      Cursor = crHandPoint
      Hint = 'Click aqui para Importar o XML'
      Caption = 'Buscar XML Canc'
      TabOrder = 6
      OnClick = bbXmlCancClick
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
    end
    object bbSalvarXmlNota: TBitBtn
      Left = 621
      Top = 5
      Width = 173
      Height = 20
      Cursor = crHandPoint
      Hint = 'Salvar XML'
      Caption = 'Salvar XML NFe'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = bbSalvarXmlNotaClick
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
    object bbSalvarXMLCanc: TBitBtn
      Left = 619
      Top = 24
      Width = 176
      Height = 20
      Cursor = crHandPoint
      Hint = 'Salvar XML'
      Caption = 'Salvar XML Cancelamento'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = bbSalvarXMLCancClick
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
    object bbEnvPref: TBitBtn
      Left = 344
      Top = 29
      Width = 143
      Height = 16
      Cursor = crHandPoint
      Hint = 
        'Click aqui paraEnviar Prefeitura'#13#10'o Xml a Prefeitura do Municipi' +
        'o'#13#10'da Nota Selecionada'
      Caption = 'Enviar Prefeitura'
      TabOrder = 9
      OnClick = bbEnvPrefClick
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
    end
    object bbNFCE: TBitBtn
      Left = 196
      Top = 26
      Width = 142
      Height = 20
      Cursor = crHandPoint
      Caption = '&Visualizar NFCE'
      TabOrder = 10
      OnClick = bbNFCEClick
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
    end
    object bbBuscarXMLNFCE: TBitBtn
      Left = 195
      Top = 45
      Width = 142
      Height = 20
      Cursor = crHandPoint
      Caption = 'Buscar XML NFCE'
      TabOrder = 11
      OnClick = bbBuscarXMLNFCEClick
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
    end
    object BitBtn1: TBitBtn
      Left = 360
      Top = 48
      Width = 75
      Height = 25
      Caption = 'BitBtn1'
      TabOrder = 12
      OnClick = BitBtn1Click
    end
    object bbSalvarNfceEve020: TBitBtn
      Left = 796
      Top = 6
      Width = 192
      Height = 20
      Cursor = crHandPoint
      Hint = 'Salvar XML'
      Caption = 'Salvar XML NFCE Contigencia'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 13
      Visible = False
      OnClick = bbSalvarXmlNotaClick
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
    object bbSalvarNfceAutorizacao: TBitBtn
      Left = 795
      Top = 26
      Width = 192
      Height = 20
      Cursor = crHandPoint
      Hint = 'Salvar XML'
      Caption = 'Salvar XML NFCE Autoriza'#231#227'o'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 14
      Visible = False
      OnClick = bbSalvarNfceAutorizacaoClick
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
  end
  object SaveDialog1: TSaveDialog
    Filter = '*.XML|*.XML'
    Left = 804
    Top = 211
  end
  object Query_ocorrencias: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT TAB02.*,CASE WHEN TIPODOC=1 THEN '#39'CARTA CORRECAO NORMAL'#39
      'WHEN TIPODOC=2 THEN '#39'CARTA DE CORRECAO ELETRONICA'#39
      'WHEN TIPODOC=11 THEN '#39'NOTA COMPLEMENTAR DE IMPOSTO'#39
      'ELSE '#39'NAO IDENTIFICADO'#39' END AS EVENTO FROM'
      ''
      '(('
      ''
      'SELECT CC1ORDEMEVE AS ORDEM,'
      'CASE WHEN cc1nfe_xml_cliente IS Null'
      'THEN 01 ELSE 02 END as TIPODOC,'
      'CC1DATANF AS DATANF'
      ',CC1CHAVE AS CHAVEPED'
      ',0 AS LOTSEQPED'
      ',0 AS CODEMPPED'
      'FROM CADCCOR01'
      ''
      ''
      'UNION'
      'SELECT max(PNLINHA) AS ORDEM,'
      '11 as TIPODOC,'
      'P1DATANF AS DATANF'
      ',PNCHAVE AS CHAVEPED'
      ',PNORDEM AS LOTSEQPED'
      ',PNCODEMP AS CODEMPPED'
      'FROM SGE_JG.CADPNF,SGE_JG.CADP01'
      'WHERE P1CHAVE=PNCHAVE'
      'AND P1ORDEM=PNORDEM'
      'AND P1LOTSEQ=PNLOTSEQ'
      'GROUP BY P1DATANF,PNCHAVE,PNORDEM,PNCODEMP'
      ''
      ') TAB02)'
      ''
      ''
      '')
    Left = 628
    Top = 127
    object Query_ocorrenciasORDEM: TFloatField
      FieldName = 'ORDEM'
    end
    object Query_ocorrenciasTIPODOC: TFloatField
      FieldName = 'TIPODOC'
    end
    object Query_ocorrenciasDATANF: TDateTimeField
      FieldName = 'DATANF'
    end
    object Query_ocorrenciasCHAVEPED: TFloatField
      FieldName = 'CHAVEPED'
    end
    object Query_ocorrenciasLOTSEQPED: TFloatField
      FieldName = 'LOTSEQPED'
    end
    object Query_ocorrenciasCODEMPPED: TFloatField
      FieldName = 'CODEMPPED'
    end
    object Query_ocorrenciasEVENTO: TStringField
      FieldName = 'EVENTO'
      Size = 28
    end
  end
  object src_ocorrencias: TDataSource
    DataSet = Query_ocorrencias
    Left = 660
    Top = 127
  end
  object src_ns: TDataSource
    DataSet = DM1.Tb_Ns
    OnDataChange = src_nsDataChange
    Left = 436
    Top = 127
  end
  object opd1: TOpenDialog
    Filter = '*.xml|*.xml'
    Left = 724
    Top = 175
  end
  object SaveDialog2: TSaveDialog
    Left = 748
    Top = 143
  end
end
