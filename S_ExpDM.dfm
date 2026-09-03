object Frm_ExpDM: TFrm_ExpDM
  Left = 131
  Top = 3
  Width = 640
  Height = 467
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Exportar(Criar Arquivos) para dispositivos m'#243'veis'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 624
    Height = 245
    Align = alTop
    Caption = 'Tabelas a Serem Exportadas:'
    TabOrder = 0
    object Label1: TLabel
      Left = 11
      Top = 20
      Width = 83
      Height = 13
      Caption = 'Vendedor.......'
    end
    object Label2: TLabel
      Left = 12
      Top = 99
      Width = 68
      Height = 13
      Caption = 'Per'#237'odo de:'
    end
    object Label3: TLabel
      Left = 172
      Top = 100
      Width = 8
      Height = 13
      Caption = #224
    end
    object Label4: TLabel
      Left = 12
      Top = 39
      Width = 74
      Height = 13
      Caption = 'Supervidor...'
    end
    object lbl_duprec: TLabel
      Left = 12
      Top = 210
      Width = 288
      Height = 13
      Caption = 'Permitir enviar duplicatas ja recebidas nos '#250'ltimos:'
    end
    object lbl_duprec2: TLabel
      Left = 341
      Top = 210
      Width = 24
      Height = 13
      Caption = 'dias'
    end
    object Label7: TLabel
      Left = 12
      Top = 57
      Width = 80
      Height = 13
      Caption = 'Cliente..........'
    end
    object Label8: TLabel
      Left = 131
      Top = 228
      Width = 166
      Height = 13
      Caption = 'Pedidos apenas dos '#250'ltimos :'
    end
    object Label9: TLabel
      Left = 341
      Top = 227
      Width = 24
      Height = 13
      Caption = 'dias'
    end
    object CODVEN: TEdit
      Left = 85
      Top = 15
      Width = 69
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CODVENExit
      OnKeyPress = CODVENKeyPress
    end
    object NOMVEN: TEdit
      Left = 153
      Top = 15
      Width = 419
      Height = 19
      TabStop = False
      Color = 14671807
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
      Text = 'Todos...'
    end
    object MDT1: TMaskEdit
      Left = 85
      Top = 96
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 7
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 189
      Top = 97
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 8
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object CB_CADPRO: TCheckBox
      Left = 11
      Top = 121
      Width = 143
      Height = 17
      Caption = 'Tabela de Produtos'
      Checked = True
      State = cbChecked
      TabOrder = 9
    end
    object CB_CADCLI: TCheckBox
      Left = 11
      Top = 189
      Width = 185
      Height = 17
      Caption = 'Tabela de Clientes'
      Checked = True
      Color = clInactiveCaption
      ParentColor = False
      State = cbChecked
      TabOrder = 12
    end
    object CB_CADDAR: TCheckBox
      Left = 11
      Top = 153
      Width = 148
      Height = 17
      Caption = 'Tabela de Duplicatas'
      Checked = True
      State = cbChecked
      TabOrder = 14
      OnClick = CB_CADDARClick
    end
    object CB_CADPV: TCheckBox
      Left = 11
      Top = 170
      Width = 180
      Height = 17
      Caption = 'Tabela de Plano de Vendas'
      Checked = True
      State = cbChecked
      TabOrder = 16
    end
    object CB_SEP: TCheckBox
      Left = 157
      Top = 78
      Width = 204
      Height = 17
      Caption = 'Arquivos Separados'
      TabOrder = 6
    end
    object Edit1: TEdit
      Left = 320
      Top = 94
      Width = 73
      Height = 21
      TabOrder = 17
      Visible = False
    end
    object NOMSUP: TEdit
      Left = 153
      Top = 33
      Width = 419
      Height = 19
      TabStop = False
      Color = 14671807
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
      Text = 'Todos...'
    end
    object CODSUP: TEdit
      Left = 85
      Top = 33
      Width = 69
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = CODSUPExit
      OnKeyPress = CODSUPKeyPress
    end
    object duprec: TEdit
      Left = 301
      Top = 206
      Width = 35
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 18
      Text = '30'
      OnExit = duprecExit
    end
    object CB_XML: TCheckBox
      Left = 353
      Top = 118
      Width = 110
      Height = 17
      Caption = 'Gravar em XML'
      TabOrder = 21
      Visible = False
    end
    object RG_PADRAO: TRadioGroup
      Left = 465
      Top = 74
      Width = 109
      Height = 58
      Caption = 'Padr'#227'o'
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        'SGE-Pocket'
        '3S'
        'Cliente')
      ParentCtl3D = False
      TabOrder = 20
    end
    object RetSub: TGroupBox
      Left = 379
      Top = 141
      Width = 250
      Height = 76
      Caption = 'Retirar/Substituir Caractere'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 22
      object Label5: TLabel
        Left = 8
        Top = 40
        Width = 83
        Height = 13
        Caption = 'Retirar...........'
      end
      object Label6: TLabel
        Left = 8
        Top = 58
        Width = 80
        Height = 13
        Caption = 'Substituir por:'
      end
      object Label10: TLabel
        Left = 7
        Top = 19
        Width = 28
        Height = 13
        Caption = 'Fixo:'
        Color = 8454143
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4227072
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object CARRET: TEdit
        Left = 88
        Top = 34
        Width = 159
        Height = 20
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Text = '&"'#39
      end
      object CARSUB: TEdit
        Left = 88
        Top = 53
        Width = 159
        Height = 20
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = [fsBold]
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object PRE_FIXADO: TEdit
        Left = 50
        Top = 16
        Width = 196
        Height = 19
        Color = 8454143
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 4227072
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        Text = '&"'#39'\/():'#234#233#202#201#194#195#193#192#200#227#226#224#225#205#237#236#205#243#242#244#245#168#186
      end
    end
    object CODCLI: TEdit
      Left = 85
      Top = 51
      Width = 69
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = CODCLIExit
      OnKeyPress = CODCLIKeyPress
    end
    object NOMCLI: TEdit
      Left = 153
      Top = 51
      Width = 419
      Height = 19
      TabStop = False
      Color = 14671807
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
      Text = 'Todos...'
    end
    object CB_SOVEND: TCheckBox
      Left = 167
      Top = 154
      Width = 151
      Height = 17
      Caption = 'Somente do Vendedor'
      Checked = True
      State = cbChecked
      TabOrder = 15
    end
    object CB_ESTREAL: TCheckBox
      Left = 167
      Top = 123
      Width = 172
      Height = 17
      Caption = 'Estoque Real'
      TabOrder = 11
    end
    object diasped: TEdit
      Left = 301
      Top = 224
      Width = 35
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 19
      Text = '03'
      OnExit = diaspedExit
    end
    object CB_PROMO: TCheckBox
      Left = 12
      Top = 136
      Width = 325
      Height = 17
      Caption = 'Anexar Promo'#231#227'o ao Cadastro de Produtos'
      TabOrder = 10
    end
    object CB_CADCLI_BLOQ: TCheckBox
      Left = 168
      Top = 189
      Width = 185
      Height = 17
      Caption = 'Enviar Tambem Bloqueados'
      Checked = True
      Color = clInactiveCaption
      ParentColor = False
      State = cbChecked
      TabOrder = 13
    end
    object CB_PPADRAO: TCheckBox
      Left = 378
      Top = 222
      Width = 204
      Height = 17
      Caption = 'Utilizar Pasta Padr'#227'o'
      Checked = True
      State = cbChecked
      TabOrder = 23
      OnClick = CB_PPADRAOClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 245
    Width = 624
    Height = 85
    Align = alClient
    Caption = 'Destino:'
    TabOrder = 1
    Visible = False
    object DriveComboBox1: TDriveComboBox
      Left = 0
      Top = 152
      Width = 281
      Height = 19
      TabOrder = 0
    end
    object DirectoryListBox1: TDirectoryListBox
      Left = 2
      Top = 15
      Width = 620
      Height = 136
      Align = alTop
      ItemHeight = 16
      TabOrder = 1
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 330
    Width = 624
    Height = 34
    Align = alBottom
    Caption = 'Progresso de Todos os Arquivos:'
    TabOrder = 2
    Visible = False
    object Gauge1: TGauge
      Left = 2
      Top = 15
      Width = 620
      Height = 17
      Align = alClient
      Progress = 0
    end
  end
  object GroupBox4: TGroupBox
    Left = 0
    Top = 364
    Width = 624
    Height = 37
    Align = alBottom
    Caption = 'Progresso da Tabela Atual:'
    TabOrder = 3
    Visible = False
    object Gauge2: TGauge
      Left = 2
      Top = 15
      Width = 620
      Height = 20
      Align = alClient
      Progress = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 401
    Width = 624
    Height = 28
    Align = alBottom
    TabOrder = 4
    object sb_SalvarPadrao: TSpeedButton
      Left = 217
      Top = 1
      Width = 150
      Height = 25
      Hint = 'Salva as configura'#231#245'es como padr'#227'o'
      Caption = '&Salvar Padr'#227'o'
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
      OnClick = sb_SalvarPadraoClick
    end
    object bbProcessar: TBitBtn
      Left = 1
      Top = 1
      Width = 150
      Height = 25
      Caption = '&Processar Agora'
      TabOrder = 0
      OnClick = bbProcessarClick
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
    object bbSair: TBitBtn
      Left = 432
      Top = 1
      Width = 150
      Height = 25
      Caption = '&Sair'
      TabOrder = 1
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
  end
  object Qr_Pro: TQuery
    OnCalcFields = Qr_ProCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PDCODPRO,PDNOME,PDUND,PDNOME2,PDMARCA,'
      'PDPRECO1, PDPRECO2,PDPRECO3,CESALDO AS PDSALDO, '
      'PDSIT,PDDESC1,PDDESC2,PDLISTA,PDTABICM,PDCODTIP,PDPMC,PDIPI,'
      
        'PDDESC3,PDDESFIN,PDEMBPAD,PDEMBMUL,PDCODFOR,PDCODRAM,PDCODRAM AS' +
        ' CODVEN'
      ',PDSTATUS,PDCODBAR,PDPRAZO,PDNOMGRU'
      'from CADPRO,CADEST'
      'where CECODEMP=PDCODEMP'
      'and CECODPRO=PDCODPRO')
    Left = 384
    Top = 272
    object Qr_ProPDCODPRO: TFloatField
      FieldName = 'PDCODPRO'
    end
    object Qr_ProPDNOME: TStringField
      FieldName = 'PDNOME'
      Size = 40
    end
    object Qr_ProPDNOME2: TStringField
      FieldName = 'PDNOME2'
      Size = 40
    end
    object Qr_ProPDMARCA: TStringField
      FieldName = 'PDMARCA'
    end
    object Qr_ProPDPRECO1: TFloatField
      FieldName = 'PDPRECO1'
    end
    object Qr_ProPDUND: TStringField
      FieldName = 'PDUND'
      Size = 3
    end
    object Qr_ProPDSIT: TStringField
      FieldName = 'PDSIT'
      Size = 3
    end
    object Qr_ProPDSALDO: TFloatField
      FieldName = 'PDSALDO'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO1'
    end
    object Qr_ProPDDESC1: TFloatField
      FieldName = 'PDDESC1'
      Origin = 'SG_ASSOC.CADPRO.PDDESC1'
    end
    object Qr_ProPDDESC2: TFloatField
      FieldName = 'PDDESC2'
      Origin = 'SG_ASSOC.CADPRO.PDDESC2'
    end
    object Qr_ProPDPRECO2: TFloatField
      FieldName = 'PDPRECO2'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO2'
    end
    object Qr_ProPDPRECO3: TFloatField
      FieldName = 'PDPRECO3'
      Origin = 'SG_ASSOC.CADPRO.PDPRECO3'
    end
    object Qr_ProPDLISTA: TFloatField
      FieldName = 'PDLISTA'
      Origin = 'SG_ASSOC.CADPRO.PDLISTA'
    end
    object Qr_ProPDTABICM: TStringField
      FieldName = 'PDTABICM'
      Origin = 'SG_ASSOC.CADPRO.PDTABICM'
      Size = 1
    end
    object Qr_ProPDCODTIP: TFloatField
      FieldName = 'PDCODTIP'
      Origin = 'SG_ASSOC.CADPRO.PDCODTIP'
    end
    object Qr_ProPDPMC: TFloatField
      FieldName = 'PDPMC'
      Origin = 'SG_ASSOC.CADPRO.PDPMC'
    end
    object Qr_ProPDIPI: TFloatField
      FieldName = 'PDIPI'
      Origin = 'SG_ASSOC.CADPRO.PDIPI'
    end
    object Qr_ProPDDESC3: TFloatField
      FieldName = 'PDDESC3'
      Origin = 'SG_ASSOC.CADPRO.PDDESC3'
    end
    object Qr_ProPDDESFIN: TFloatField
      FieldName = 'PDDESFIN'
      Origin = 'SG_ASSOC.CADPRO.PDDESFIN'
    end
    object Qr_ProPDEMBPAD: TFloatField
      FieldName = 'PDEMBPAD'
      Origin = 'SG_ASSOC.CADPRO.PDEMBPAD'
    end
    object Qr_ProPDCODFOR: TFloatField
      FieldName = 'PDCODFOR'
      Origin = 'SG_ASSOC.CADPRO.PDCODFOR'
    end
    object Qr_ProPDCODRAM: TFloatField
      FieldName = 'PDCODRAM'
      Origin = 'SG_ASSOC.CADPRO.PDCODRAM'
    end
    object Qr_ProCODVEN: TFloatField
      FieldName = 'CODVEN'
      Origin = 'SG_ASSOC.CADPRO.PDCODRAM'
    end
    object Qr_ProPDSTATUS: TFloatField
      FieldName = 'PDSTATUS'
      Origin = 'SG_ASSOC.CADPRO.PDSTATUS'
    end
    object Qr_ProPDCODBAR: TFloatField
      FieldName = 'PDCODBAR'
      Origin = 'SG_ASSOC.CADPRO.PDCODBAR'
    end
    object Qr_ProPDPRAZO: TFloatField
      FieldName = 'PDPRAZO'
      Origin = 'SG_ASSOC.CADPRO.PDPRAZO'
    end
    object Qr_Procodven_blq: TFloatField
      FieldKind = fkCalculated
      FieldName = 'codven_blq'
      Calculated = True
    end
    object Qr_ProPDNOMGRU: TStringField
      FieldName = 'PDNOMGRU'
      Origin = 'SG_ASSOC.CADPRO.PDNOMGRU'
      Size = 40
    end
    object Qr_ProPDEMBMUL: TFloatField
      FieldName = 'PDEMBMUL'
      Origin = 'SG_ASSOC.CADPRO.PDEMBMUL'
    end
  end
  object Qr_Cli: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CTIPOC,CCODCLI,CCNPJ,CCPF,CRG,CIE,CRAZAO,CDENOM, '
      '          CLOG,CBAIRRO,CCIDADE,CUF,CNOMCON,CFONCON, '
      '          CFONERES,CCELULAR,CEMAIL,CCEP,'
      '          CTABPV,CCODPV,CDESC, CPCOPRAT,CICMSR,CREPAS,CFRETEPC,'
      
        '          CIPI,CDESC02,CDESC03,CDESCFIN,CALIQDEB,CCODRED,CCODVEN' +
        ',CLCRED,'
      
        '          CSITCLI,CDTVALV,CDTANVISA,CDTCAD,COBS01,CDTUCPR,CCODBC' +
        'O01,'
      
        '          CCODBCO02,CNIVEL,CCODV02,CCODV03,CCODV04,CPEDELE_SENHA' +
        ',CROTA'
      '        from CADCLI')
    Left = 352
    Top = 264
    object Qr_CliCTIPOC: TFloatField
      FieldName = 'CTIPOC'
      Origin = 'SG_ASSOC.CADCLI.CTIPOC'
    end
    object Qr_CliCCODCLI: TFloatField
      FieldName = 'CCODCLI'
      Origin = 'SG_ASSOC.CADCLI.CCODCLI'
    end
    object Qr_CliCCNPJ: TFloatField
      FieldName = 'CCNPJ'
      Origin = 'SG_ASSOC.CADCLI.CCNPJ'
    end
    object Qr_CliCCPF: TFloatField
      FieldName = 'CCPF'
      Origin = 'SG_ASSOC.CADCLI.CCPF'
    end
    object Qr_CliCRG: TStringField
      FieldName = 'CRG'
      Origin = 'SG_ASSOC.CADCLI.CRG'
      Size = 40
    end
    object Qr_CliCIE: TStringField
      FieldName = 'CIE'
      Origin = 'SG_ASSOC.CADCLI.CIE'
      Size = 30
    end
    object Qr_CliCRAZAO: TStringField
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_CliCDENOM: TStringField
      FieldName = 'CDENOM'
      Origin = 'SG_ASSOC.CADCLI.CDENOM'
      Size = 40
    end
    object Qr_CliCLOG: TStringField
      FieldName = 'CLOG'
      Origin = 'SG_ASSOC.CADCLI.CLOG'
      Size = 40
    end
    object Qr_CliCBAIRRO: TStringField
      FieldName = 'CBAIRRO'
      Origin = 'SG_ASSOC.CADCLI.CBAIRRO'
      Size = 30
    end
    object Qr_CliCCIDADE: TStringField
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Qr_CliCUF: TStringField
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Qr_CliCNOMCON: TStringField
      FieldName = 'CNOMCON'
      Origin = 'SG_ASSOC.CADCLI.CNOMCON'
      Size = 40
    end
    object Qr_CliCFONCON: TStringField
      FieldName = 'CFONCON'
      Origin = 'SG_ASSOC.CADCLI.CFONCON'
    end
    object Qr_CliCFONERES: TStringField
      FieldName = 'CFONERES'
      Origin = 'SG_ASSOC.CADCLI.CFONERES'
      Size = 16
    end
    object Qr_CliCCELULAR: TStringField
      FieldName = 'CCELULAR'
      Origin = 'SG_ASSOC.CADCLI.CCELULAR'
      Size = 16
    end
    object Qr_CliCEMAIL: TStringField
      FieldName = 'CEMAIL'
      Origin = 'SG_ASSOC.CADCLI.CEMAIL'
      Size = 50
    end
    object Qr_CliCCEP: TStringField
      FieldName = 'CCEP'
      Origin = 'SG_ASSOC.CADCLI.CCEP'
      Size = 9
    end
    object Qr_CliCTABPV: TStringField
      FieldName = 'CTABPV'
      Origin = 'SG_ASSOC.CADCLI.CTABPV'
      Size = 2
    end
    object Qr_CliCCODPV: TFloatField
      FieldName = 'CCODPV'
      Origin = 'SG_ASSOC.CADCLI.CCODPV'
    end
    object Qr_CliCDESC: TFloatField
      FieldName = 'CDESC'
      Origin = 'SG_ASSOC.CADCLI.CDESC'
    end
    object Qr_CliCPCOPRAT: TFloatField
      FieldName = 'CPCOPRAT'
      Origin = 'SG_ASSOC.CADCLI.CPCOPRAT'
    end
    object Qr_CliCICMSR: TFloatField
      FieldName = 'CICMSR'
      Origin = 'SG_ASSOC.CADCLI.CICMSR'
    end
    object Qr_CliCREPAS: TFloatField
      FieldName = 'CREPAS'
      Origin = 'SG_ASSOC.CADCLI.CREPAS'
    end
    object Qr_CliCFRETEPC: TFloatField
      FieldName = 'CFRETEPC'
      Origin = 'SG_ASSOC.CADCLI.CFRETEPC'
    end
    object Qr_CliCIPI: TFloatField
      FieldName = 'CIPI'
      Origin = 'SG_ASSOC.CADCLI.CIPI'
    end
    object Qr_CliCDESC02: TFloatField
      FieldName = 'CDESC02'
      Origin = 'SG_ASSOC.CADCLI.CDESC02'
    end
    object Qr_CliCDESC03: TFloatField
      FieldName = 'CDESC03'
      Origin = 'SG_ASSOC.CADCLI.CDESC03'
    end
    object Qr_CliCDESCFIN: TFloatField
      FieldName = 'CDESCFIN'
      Origin = 'SG_ASSOC.CADCLI.CDESCFIN'
    end
    object Qr_CliCALIQDEB: TFloatField
      FieldName = 'CALIQDEB'
      Origin = 'SG_ASSOC.CADCLI.CALIQDEB'
    end
    object Qr_CliCCODRED: TFloatField
      FieldName = 'CCODRED'
      Origin = 'SG_ASSOC.CADCLI.CCODRED'
    end
    object Qr_CliCCODVEN: TFloatField
      FieldName = 'CCODVEN'
      Origin = 'SG_ASSOC.CADCLI.CCODVEN'
    end
    object Qr_CliCLCRED: TFloatField
      FieldName = 'CLCRED'
      Origin = 'SG_ASSOC.CADCLI.CLCRED'
    end
    object Qr_CliCSITCLI: TFloatField
      FieldName = 'CSITCLI'
      Origin = 'SG_ASSOC.CADCLI.CSITCLI'
    end
    object Qr_CliCDTVALV: TDateTimeField
      FieldName = 'CDTVALV'
      Origin = 'SG_ASSOC.CADCLI.CDTVALV'
    end
    object Qr_CliCDTANVISA: TDateTimeField
      FieldName = 'CDTANVISA'
      Origin = 'SG_ASSOC.CADCLI.CDTANVISA'
    end
    object Qr_CliCDTCAD: TDateTimeField
      FieldName = 'CDTCAD'
      Origin = 'SG_ASSOC.CADCLI.CDTCAD'
    end
    object Qr_CliCOBS01: TStringField
      FieldName = 'COBS01'
      Origin = 'SG_ASSOC.CADCLI.COBS01'
      Size = 60
    end
    object Qr_CliCDTUCPR: TDateTimeField
      FieldName = 'CDTUCPR'
      Origin = 'SG_ASSOC.CADCLI.CDTUCPR'
    end
    object Qr_CliCCODBCO01: TFloatField
      FieldName = 'CCODBCO01'
      Origin = 'SG_ASSOC.CADCLI.CCODBCO01'
    end
    object Qr_CliCCODBCO02: TFloatField
      FieldName = 'CCODBCO02'
      Origin = 'SG_ASSOC.CADCLI.CCODBCO02'
    end
    object Qr_CliCNIVEL: TFloatField
      FieldName = 'CNIVEL'
      Origin = 'SG_ASSOC.CADCLI.CNIVEL'
    end
    object Qr_CliCCODV02: TFloatField
      FieldName = 'CCODV02'
      Origin = 'SG_ASSOC.CADCLI.CCODV02'
    end
    object Qr_CliCCODV03: TFloatField
      FieldName = 'CCODV03'
      Origin = 'SG_ASSOC.CADCLI.CCODV03'
    end
    object Qr_CliCCODV04: TFloatField
      FieldName = 'CCODV04'
      Origin = 'SG_ASSOC.CADCLI.CCODV04'
    end
    object Qr_CliCPEDELE_SENHA: TStringField
      FieldName = 'CPEDELE_SENHA'
      Origin = 'SG_ASSOC.CADCLI.CPEDELE_SENHA'
    end
    object Qr_CliCROTA: TFloatField
      FieldName = 'CROTA'
      Origin = 'SG_ASSOC.CADCLI.CROTA'
    end
  end
  object Qr_Duplic: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select CRNUMERO,CRDESD,CRDTEMIS,CRDTVCTO,'
      '       CRVALOR,CRCODCLI,CRDUP,CRNPED,CRORDEM,CRCODEMP,'
      '       CRDTPAG,CRSTATUS,CRVALPAG,CRCODTLV,CRLOTE,CRJURD,'
      '      CRCOMVEN,CRCODVEN,CRCODBCO,CRDESCD,CRMULTA,CRDESCF,'
      
        '     CRDTDESCF,CRJUROS,CRDESC,CRJURDEB,CRJURDEB_SAC,CCNPJ,CCPF,C' +
        'RTARBAN'
      '       from CADDAR,CADCLI'
      '       WHERE CRCODEMP=0'
      '       AND CCODCLI=CRCODCLI'
      '')
    Left = 320
    Top = 264
    object Qr_DuplicCRNUMERO: TFloatField
      FieldName = 'CRNUMERO'
      Origin = 'SG_ASSOC.CADDAR.CRNUMERO'
    end
    object Qr_DuplicCRDESD: TStringField
      FieldName = 'CRDESD'
      Origin = 'SG_ASSOC.CADDAR.CRDESD'
      Size = 2
    end
    object Qr_DuplicCRDTEMIS: TDateTimeField
      FieldName = 'CRDTEMIS'
      Origin = 'SG_ASSOC.CADDAR.CRDTEMIS'
    end
    object Qr_DuplicCRDTVCTO: TDateTimeField
      FieldName = 'CRDTVCTO'
      Origin = 'SG_ASSOC.CADDAR.CRDTVCTO'
    end
    object Qr_DuplicCRVALOR: TFloatField
      FieldName = 'CRVALOR'
      Origin = 'SG_ASSOC.CADDAR.CRVALOR'
    end
    object Qr_DuplicCRCODCLI: TFloatField
      FieldName = 'CRCODCLI'
      Origin = 'SG_ASSOC.CADDAR.CRCODCLI'
    end
    object Qr_DuplicCRDUP: TFloatField
      FieldName = 'CRDUP'
      Origin = 'SG_ASSOC.CADDAR.CRDUP'
    end
    object Qr_DuplicCRNPED: TFloatField
      FieldName = 'CRNPED'
      Origin = 'SG_ASSOC.CADDAR.CRNPED'
    end
    object Qr_DuplicCRORDEM: TFloatField
      FieldName = 'CRORDEM'
      Origin = 'SG_ASSOC.CADDAR.CRORDEM'
    end
    object Qr_DuplicCRCODEMP: TFloatField
      FieldName = 'CRCODEMP'
      Origin = 'SG_ASSOC.CADDAR.CRCODEMP'
    end
    object Qr_DuplicCRDTPAG: TDateTimeField
      FieldName = 'CRDTPAG'
      Origin = 'SG_ASSOC.CADDAR.CRDTPAG'
    end
    object Qr_DuplicCRSTATUS: TFloatField
      FieldName = 'CRSTATUS'
      Origin = 'SG_ASSOC.CADDAR.CRSTATUS'
    end
    object Qr_DuplicCRVALPAG: TFloatField
      FieldName = 'CRVALPAG'
      Origin = 'SG_ASSOC.CADDAR.CRVALPAG'
    end
    object Qr_DuplicCRCODTLV: TFloatField
      FieldName = 'CRCODTLV'
      Origin = 'SG_ASSOC.CADDAR.CRCODTLV'
    end
    object Qr_DuplicCRLOTE: TFloatField
      FieldName = 'CRLOTE'
      Origin = 'SG_ASSOC.CADDAR.CRLOTE'
    end
    object Qr_DuplicCRJURD: TFloatField
      FieldName = 'CRJURD'
      Origin = 'SG_ASSOC.CADDAR.CRJURD'
    end
    object Qr_DuplicCRCOMVEN: TFloatField
      FieldName = 'CRCOMVEN'
      Origin = 'SG_ASSOC.CADDAR.CRCOMVEN'
    end
    object Qr_DuplicCRCODVEN: TFloatField
      FieldName = 'CRCODVEN'
      Origin = 'SG_ASSOC.CADDAR.CRCODVEN'
    end
    object Qr_DuplicCRCODBCO: TFloatField
      FieldName = 'CRCODBCO'
      Origin = 'SG_ASSOC.CADDAR.CRCODBCO'
    end
    object Qr_DuplicCRDESCD: TFloatField
      FieldName = 'CRDESCD'
      Origin = 'SG_ASSOC.CADDAR.CRDESCD'
    end
    object Qr_DuplicCRMULTA: TFloatField
      FieldName = 'CRMULTA'
      Origin = 'SG_ASSOC.CADDAR.CRMULTA'
    end
    object Qr_DuplicCRDESCF: TFloatField
      FieldName = 'CRDESCF'
      Origin = 'SG_ASSOC.CADDAR.CRDESCF'
    end
    object Qr_DuplicCRDTDESCF: TDateTimeField
      FieldName = 'CRDTDESCF'
      Origin = 'SG_ASSOC.CADDAR.CRDTDESCF'
    end
    object Qr_DuplicCRJUROS: TFloatField
      FieldName = 'CRJUROS'
      Origin = 'SG_ASSOC.CADDAR.CRJUROS'
    end
    object Qr_DuplicCRDESC: TFloatField
      FieldName = 'CRDESC'
      Origin = 'SG_ASSOC.CADDAR.CRDESC'
    end
    object Qr_DuplicCRJURDEB: TFloatField
      FieldName = 'CRJURDEB'
      Origin = 'SG_ASSOC.CADDAR.CRJURDEB'
    end
    object Qr_DuplicCRJURDEB_SAC: TFloatField
      FieldName = 'CRJURDEB_SAC'
      Origin = 'SG_ASSOC.CADDAR.CRJURDEB_SAC'
    end
    object Qr_DuplicCCNPJ: TFloatField
      FieldName = 'CCNPJ'
      Origin = 'SG_ASSOC.CADCLI.CCNPJ'
    end
    object Qr_DuplicCCPF: TFloatField
      FieldName = 'CCPF'
      Origin = 'SG_ASSOC.CADCLI.CCPF'
    end
    object Qr_DuplicCRTARBAN: TFloatField
      FieldName = 'CRTARBAN'
      Origin = 'SG_ASSOC.CADDAR.CRTARBAN'
    end
  end
  object Qr_PV: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PVCODTIP,PVCODPV,PVNOME,'
      '       PVTPDC,PVDES,'
      '       PVTPD1,PVDES1,'
      '       PVTPD2,PVDES2,'
      '       PVTPD3,PVDES3,'
      '       PVD2S0,PVD2S1,'
      '       PVD2S2,PVD2S3,'
      '       PVD2S4,PVD2S5,'
      '       PVD2S6,PVD2S7,'
      '       PVACTD,PVACT00,'
      '       PVACT01,PVACT99,'
      '     PVTPDESF'
      '    ,PVDESCF'
      '    ,PVD1S0 '
      '    ,PVD1S1 '
      '    ,PVD1S2 '
      '    ,PVD1S3 '
      '    ,PVD1S4 '
      '    ,PVD1S5 '
      '    ,PVD1S6 '
      '    ,PVD1S7 '
      '    ,PVD3S0 '
      '    ,PVD3S1 '
      '    ,PVD3S2 '
      '    ,PVD3S3 '
      '    ,PVD3S4 '
      '    ,PVD3S5 '
      '    ,PVD3S6 '
      '    ,PVD3S7 '
      '    ,PVDFS0 '
      '    ,PVDFS1 '
      '    ,PVDFS2 '
      '    ,PVDFS3 '
      '    ,PVDFS4 '
      '    ,PVDFS5 '
      '    ,PVDFS6 '
      '    ,PVDFS7'
      '    ,PVPRAZOMED'
      ' from CADPV'
      'where PVCODEMP is null')
    Left = 456
    Top = 32
    object Qr_PVPVCODPV: TFloatField
      FieldName = 'PVCODPV'
      Origin = 'SG_ASSOC.CADPV.PVCODPV'
    end
    object Qr_PVPVNOME: TStringField
      FieldName = 'PVNOME'
      Origin = 'SG_ASSOC.CADPV.PVNOME'
    end
    object Qr_PVPVCODTIP: TStringField
      FieldName = 'PVCODTIP'
      Origin = 'SG_ASSOC.CADPV.PVCODTIP'
      Size = 2
    end
    object Qr_PVPVTPDC: TFloatField
      FieldName = 'PVTPDC'
      Origin = 'SG_ASSOC.CADPV.PVTPDC'
    end
    object Qr_PVPVDES: TFloatField
      FieldName = 'PVDES'
      Origin = 'SG_ASSOC.CADPV.PVDES'
    end
    object Qr_PVPVTPD1: TFloatField
      FieldName = 'PVTPD1'
      Origin = 'SG_ASSOC.CADPV.PVTPD1'
    end
    object Qr_PVPVDES1: TFloatField
      FieldName = 'PVDES1'
      Origin = 'SG_ASSOC.CADPV.PVDES1'
    end
    object Qr_PVPVTPD2: TFloatField
      FieldName = 'PVTPD2'
      Origin = 'SG_ASSOC.CADPV.PVTPD2'
    end
    object Qr_PVPVDES2: TFloatField
      FieldName = 'PVDES2'
      Origin = 'SG_ASSOC.CADPV.PVDES2'
    end
    object Qr_PVPVTPD3: TFloatField
      FieldName = 'PVTPD3'
      Origin = 'SG_ASSOC.CADPV.PVTPD3'
    end
    object Qr_PVPVDES3: TFloatField
      FieldName = 'PVDES3'
      Origin = 'SG_ASSOC.CADPV.PVDES3'
    end
    object Qr_PVPVD2S0: TFloatField
      FieldName = 'PVD2S0'
      Origin = 'SG_ASSOC.CADPV.PVD2S0'
    end
    object Qr_PVPVD2S1: TFloatField
      FieldName = 'PVD2S1'
      Origin = 'SG_ASSOC.CADPV.PVD2S1'
    end
    object Qr_PVPVD2S2: TFloatField
      FieldName = 'PVD2S2'
      Origin = 'SG_ASSOC.CADPV.PVD2S2'
    end
    object Qr_PVPVD2S3: TFloatField
      FieldName = 'PVD2S3'
      Origin = 'SG_ASSOC.CADPV.PVD2S3'
    end
    object Qr_PVPVD2S4: TFloatField
      FieldName = 'PVD2S4'
      Origin = 'SG_ASSOC.CADPV.PVD2S4'
    end
    object Qr_PVPVD2S5: TFloatField
      FieldName = 'PVD2S5'
      Origin = 'SG_ASSOC.CADPV.PVD2S5'
    end
    object Qr_PVPVD2S6: TFloatField
      FieldName = 'PVD2S6'
      Origin = 'SG_ASSOC.CADPV.PVD2S6'
    end
    object Qr_PVPVD2S7: TFloatField
      FieldName = 'PVD2S7'
      Origin = 'SG_ASSOC.CADPV.PVD2S7'
    end
    object Qr_PVPVACTD: TFloatField
      FieldName = 'PVACTD'
      Origin = 'SG_ASSOC.CADPV.PVACTD'
    end
    object Qr_PVPVACT00: TFloatField
      FieldName = 'PVACT00'
      Origin = 'SG_ASSOC.CADPV.PVACT00'
    end
    object Qr_PVPVACT01: TFloatField
      FieldName = 'PVACT01'
      Origin = 'SG_ASSOC.CADPV.PVACT01'
    end
    object Qr_PVPVACT99: TFloatField
      FieldName = 'PVACT99'
      Origin = 'SG_ASSOC.CADPV.PVACT99'
    end
    object Qr_PVPVTPDESF: TFloatField
      FieldName = 'PVTPDESF'
      Origin = 'SG_ASSOC.CADPV.PVTPDESF'
    end
    object Qr_PVPVDESCF: TFloatField
      FieldName = 'PVDESCF'
      Origin = 'SG_ASSOC.CADPV.PVDESCF'
    end
    object Qr_PVPVD1S0: TFloatField
      FieldName = 'PVD1S0'
      Origin = 'SG_ASSOC.CADPV.PVD1S0'
    end
    object Qr_PVPVD1S1: TFloatField
      FieldName = 'PVD1S1'
      Origin = 'SG_ASSOC.CADPV.PVD1S1'
    end
    object Qr_PVPVD1S2: TFloatField
      FieldName = 'PVD1S2'
      Origin = 'SG_ASSOC.CADPV.PVD1S2'
    end
    object Qr_PVPVD1S3: TFloatField
      FieldName = 'PVD1S3'
      Origin = 'SG_ASSOC.CADPV.PVD1S3'
    end
    object Qr_PVPVD1S4: TFloatField
      FieldName = 'PVD1S4'
      Origin = 'SG_ASSOC.CADPV.PVD1S4'
    end
    object Qr_PVPVD1S5: TFloatField
      FieldName = 'PVD1S5'
      Origin = 'SG_ASSOC.CADPV.PVD1S5'
    end
    object Qr_PVPVD1S6: TFloatField
      FieldName = 'PVD1S6'
      Origin = 'SG_ASSOC.CADPV.PVD1S6'
    end
    object Qr_PVPVD1S7: TFloatField
      FieldName = 'PVD1S7'
      Origin = 'SG_ASSOC.CADPV.PVD1S7'
    end
    object Qr_PVPVD3S0: TFloatField
      FieldName = 'PVD3S0'
      Origin = 'SG_ASSOC.CADPV.PVD3S0'
    end
    object Qr_PVPVD3S1: TFloatField
      FieldName = 'PVD3S1'
      Origin = 'SG_ASSOC.CADPV.PVD3S1'
    end
    object Qr_PVPVD3S2: TFloatField
      FieldName = 'PVD3S2'
      Origin = 'SG_ASSOC.CADPV.PVD3S2'
    end
    object Qr_PVPVD3S3: TFloatField
      FieldName = 'PVD3S3'
      Origin = 'SG_ASSOC.CADPV.PVD3S3'
    end
    object Qr_PVPVD3S4: TFloatField
      FieldName = 'PVD3S4'
      Origin = 'SG_ASSOC.CADPV.PVD3S4'
    end
    object Qr_PVPVD3S5: TFloatField
      FieldName = 'PVD3S5'
      Origin = 'SG_ASSOC.CADPV.PVD3S5'
    end
    object Qr_PVPVD3S6: TFloatField
      FieldName = 'PVD3S6'
      Origin = 'SG_ASSOC.CADPV.PVD3S6'
    end
    object Qr_PVPVD3S7: TFloatField
      FieldName = 'PVD3S7'
      Origin = 'SG_ASSOC.CADPV.PVD3S7'
    end
    object Qr_PVPVDFS0: TFloatField
      FieldName = 'PVDFS0'
      Origin = 'SG_ASSOC.CADPV.PVDFS0'
    end
    object Qr_PVPVDFS1: TFloatField
      FieldName = 'PVDFS1'
      Origin = 'SG_ASSOC.CADPV.PVDFS1'
    end
    object Qr_PVPVDFS2: TFloatField
      FieldName = 'PVDFS2'
      Origin = 'SG_ASSOC.CADPV.PVDFS2'
    end
    object Qr_PVPVDFS3: TFloatField
      FieldName = 'PVDFS3'
      Origin = 'SG_ASSOC.CADPV.PVDFS3'
    end
    object Qr_PVPVDFS4: TFloatField
      FieldName = 'PVDFS4'
      Origin = 'SG_ASSOC.CADPV.PVDFS4'
    end
    object Qr_PVPVDFS5: TFloatField
      FieldName = 'PVDFS5'
      Origin = 'SG_ASSOC.CADPV.PVDFS5'
    end
    object Qr_PVPVDFS6: TFloatField
      FieldName = 'PVDFS6'
      Origin = 'SG_ASSOC.CADPV.PVDFS6'
    end
    object Qr_PVPVDFS7: TFloatField
      FieldName = 'PVDFS7'
      Origin = 'SG_ASSOC.CADPV.PVDFS7'
    end
    object Qr_PVPVPRAZOMED: TFloatField
      FieldName = 'PVPRAZOMED'
      Origin = 'SG_ASSOC.CADPV.PVPRAZOMED'
    end
  end
  object Qr_UF: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select'
      '       PCODEMP,'
      '       PUF,'
      '       PIVAPOS,'
      '       PIVANEG,'
      '       PIVAINA,'
      '       PREDUTRA,'
      '       PREDUTRB,'
      '       PICMSC,'
      '       PICMSD,'
      '       PTIPCAL,'
      '       PTIPOPCO,'
      '       PCALCRET,'
      '       PREPAS'
      'from CADUF where PUF is null'
      ''
      ''
      ''
      ''
      '')
    Left = 424
    Top = 32
    object Qr_UFPUF: TStringField
      FieldName = 'PUF'
      Origin = 'SG_ASSOC.CADUF.PUF'
      Size = 2
    end
    object Qr_UFPIVAPOS: TFloatField
      FieldName = 'PIVAPOS'
      Origin = 'SG_ASSOC.CADUF.PIVAPOS'
    end
    object Qr_UFPIVANEG: TFloatField
      FieldName = 'PIVANEG'
      Origin = 'SG_ASSOC.CADUF.PIVANEG'
    end
    object Qr_UFPIVAINA: TFloatField
      FieldName = 'PIVAINA'
      Origin = 'SG_ASSOC.CADUF.PIVAINA'
    end
    object Qr_UFPREDUTRA: TFloatField
      FieldName = 'PREDUTRA'
      Origin = 'SG_ASSOC.CADUF.PREDUTRA'
    end
    object Qr_UFPREDUTRB: TFloatField
      FieldName = 'PREDUTRB'
      Origin = 'SG_ASSOC.CADUF.PREDUTRB'
    end
    object Qr_UFPICMSC: TFloatField
      FieldName = 'PICMSC'
      Origin = 'SG_ASSOC.CADUF.PICMSC'
    end
    object Qr_UFPICMSD: TFloatField
      FieldName = 'PICMSD'
      Origin = 'SG_ASSOC.CADUF.PICMSD'
    end
    object Qr_UFPTIPCAL: TStringField
      FieldName = 'PTIPCAL'
      Origin = 'SG_ASSOC.CADUF.PTIPCAL'
      Size = 1
    end
    object Qr_UFPTIPOPCO: TFloatField
      FieldName = 'PTIPOPCO'
      Origin = 'SG_ASSOC.CADUF.PTIPOPCO'
    end
    object Qr_UFPCALCRET: TFloatField
      FieldName = 'PCALCRET'
      Origin = 'SG_ASSOC.CADUF.PCALCRET'
    end
    object Qr_UFPCODEMP: TFloatField
      FieldName = 'PCODEMP'
      Origin = 'SG_ASSOC.CADUF.PCODEMP'
    end
    object Qr_UFPREPAS: TFloatField
      FieldName = 'PREPAS'
      Origin = 'SG_ASSOC.CADUF.PREPAS'
    end
  end
  object Qr_Ven: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select VNOME,VCODVEN,VCODSUP,VFONECOM,'
      'VCELULAR,VEMAIL,VDM_PCOEXTRA,'
      'VDM_DESCMAXITEM,VDM_ACREMAXITEM'
      ' from CADVEN'
      'where VCODEMP is null')
    Left = 392
    Top = 32
    object Qr_VenVNOME: TStringField
      FieldName = 'VNOME'
      Origin = 'SG_ASSOC.CADVEN.VNOME'
      Size = 40
    end
    object Qr_VenVCODVEN: TFloatField
      FieldName = 'VCODVEN'
      Origin = 'SG_ASSOC.CADVEN.VCODVEN'
    end
    object Qr_VenVCODSUP: TFloatField
      FieldName = 'VCODSUP'
      Origin = 'SG_ASSOC.CADVEN.VCODSUP'
    end
    object Qr_Vennomesup: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomesup'
      Size = 40
      Calculated = True
    end
    object Qr_VenVFONECOM: TStringField
      FieldName = 'VFONECOM'
      Origin = 'SG_ASSOC.CADVEN.VFONECOM'
      Size = 16
    end
    object Qr_VenVCELULAR: TStringField
      FieldName = 'VCELULAR'
      Origin = 'SG_ASSOC.CADVEN.VCELULAR'
      Size = 16
    end
    object Qr_Venvemail: TStringField
      FieldKind = fkCalculated
      FieldName = 'vemail'
      Size = 40
      Calculated = True
    end
    object Qr_VenVDM_PCOEXTRA: TFloatField
      FieldName = 'VDM_PCOEXTRA'
      Origin = 'SG_ASSOC.CADVEN.VDM_PCOEXTRA'
    end
    object Qr_VenVDM_DESCMAXITEM: TFloatField
      FieldName = 'VDM_DESCMAXITEM'
      Origin = 'SG_ASSOC.CADVEN.VDM_DESCMAXITEM'
    end
    object Qr_VenVDM_ACREMAXITEM: TFloatField
      FieldName = 'VDM_ACREMAXITEM'
      Origin = 'SG_ASSOC.CADVEN.VDM_ACREMAXITEM'
    end
  end
  object Qr_FPCR: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select FPCODEMP,'
      '       FPSEQ,'
      '       FPLOTSEQ,'
      '       FPDATA,'
      '       FPFORMA,'
      '       FPNUMERO,'
      '       FPBANCO,'
      '       FPSERIE,'
      '       FPVALOR,'
      '       FPLOTE,'
      '       FPCC,'
      '       FPTIPO,'
      '       FPCAIXA,'
      '       FPCODLDR,'
      '       FPLOTSEQ_FC'
      'from FPCR where FPCODEMP is null')
    Left = 432
    Top = 32
    object Qr_FPCRFPCODEMP: TFloatField
      FieldName = 'FPCODEMP'
      Origin = 'SG_ASSOC.FPCR.FPCODEMP'
    end
    object Qr_FPCRFPSEQ: TFloatField
      FieldName = 'FPSEQ'
      Origin = 'SG_ASSOC.FPCR.FPSEQ'
    end
    object Qr_FPCRFPLOTSEQ: TFloatField
      FieldName = 'FPLOTSEQ'
      Origin = 'SG_ASSOC.FPCR.FPLOTSEQ'
    end
    object Qr_FPCRFPDATA: TDateTimeField
      FieldName = 'FPDATA'
      Origin = 'SG_ASSOC.FPCR.FPDATA'
    end
    object Qr_FPCRFPFORMA: TFloatField
      FieldName = 'FPFORMA'
      Origin = 'SG_ASSOC.FPCR.FPFORMA'
    end
    object Qr_FPCRFPNUMERO: TFloatField
      FieldName = 'FPNUMERO'
      Origin = 'SG_ASSOC.FPCR.FPNUMERO'
    end
    object Qr_FPCRFPBANCO: TFloatField
      FieldName = 'FPBANCO'
      Origin = 'SG_ASSOC.FPCR.FPBANCO'
    end
    object Qr_FPCRFPSERIE: TStringField
      FieldName = 'FPSERIE'
      Origin = 'SG_ASSOC.FPCR.FPSERIE'
    end
    object Qr_FPCRFPVALOR: TFloatField
      FieldName = 'FPVALOR'
      Origin = 'SG_ASSOC.FPCR.FPVALOR'
    end
    object Qr_FPCRFPLOTE: TFloatField
      FieldName = 'FPLOTE'
      Origin = 'SG_ASSOC.FPCR.FPLOTE'
    end
    object Qr_FPCRFPCC: TStringField
      FieldName = 'FPCC'
      Origin = 'SG_ASSOC.FPCR.FPCC'
    end
    object Qr_FPCRFPTIPO: TFloatField
      FieldName = 'FPTIPO'
      Origin = 'SG_ASSOC.FPCR.FPTIPO'
    end
    object Qr_FPCRFPCAIXA: TFloatField
      FieldName = 'FPCAIXA'
      Origin = 'SG_ASSOC.FPCR.FPCAIXA'
    end
    object Qr_FPCRFPCODLDR: TFloatField
      FieldName = 'FPCODLDR'
      Origin = 'SG_ASSOC.FPCR.FPCODLDR'
    end
    object Qr_FPCRFPLOTSEQ_FC: TFloatField
      FieldName = 'FPLOTSEQ_FC'
      Origin = 'SG_ASSOC.FPCR.FPLOTSEQ_FC'
    end
  end
  object Qr_FPCRDUP: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from FPCRDUP where FPCODEMP is null')
    Left = 472
    Top = 40
    object Qr_FPCRDUPFPCODEMP: TFloatField
      FieldName = 'FPCODEMP'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object Qr_FPCRDUPFPLOTSEQ: TFloatField
      FieldName = 'FPLOTSEQ'
      Origin = 'SG_ASSOC.FPCRDUP.FPLOTSEQ'
    end
    object Qr_FPCRDUPFPSEQ: TFloatField
      FieldName = 'FPSEQ'
      Origin = 'SG_ASSOC.FPCRDUP.FPSEQ'
    end
    object Qr_FPCRDUPFPLOTE: TFloatField
      FieldName = 'FPLOTE'
      Origin = 'SG_ASSOC.FPCRDUP.FPLOTE'
    end
    object Qr_FPCRDUPFPCODECF: TFloatField
      FieldName = 'FPCODECF'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODECF'
    end
    object Qr_FPCRDUPFPNUMERO: TFloatField
      FieldName = 'FPNUMERO'
      Origin = 'SG_ASSOC.FPCRDUP.FPNUMERO'
    end
    object Qr_FPCRDUPFPDESD: TStringField
      FieldName = 'FPDESD'
      Origin = 'SG_ASSOC.FPCRDUP.FPDESD'
      Size = 2
    end
    object Qr_FPCRDUPFPTIPO: TFloatField
      FieldName = 'FPTIPO'
      Origin = 'SG_ASSOC.FPCRDUP.FPTIPO'
    end
    object Qr_FPCRDUPFPCODCLI: TFloatField
      FieldName = 'FPCODCLI'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODCLI'
    end
    object Qr_FPCRDUPFPDTEMIS: TDateTimeField
      FieldName = 'FPDTEMIS'
      Origin = 'SG_ASSOC.FPCRDUP.FPDTEMIS'
    end
    object Qr_FPCRDUPFPCAIXA: TFloatField
      FieldName = 'FPCAIXA'
      Origin = 'SG_ASSOC.FPCRDUP.FPCAIXA'
    end
    object Qr_FPCRDUPFPCODUSR: TFloatField
      FieldName = 'FPCODUSR'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODUSR'
    end
    object Qr_FPCRDUPFPVALOR: TFloatField
      FieldName = 'FPVALOR'
      Origin = 'SG_ASSOC.FPCRDUP.FPVALOR'
    end
    object Qr_FPCRDUPFPJUROS: TFloatField
      FieldName = 'FPJUROS'
      Origin = 'SG_ASSOC.FPCRDUP.FPJUROS'
    end
    object Qr_FPCRDUPFPDESC: TFloatField
      FieldName = 'FPDESC'
      Origin = 'SG_ASSOC.FPCRDUP.FPDESC'
    end
    object Qr_FPCRDUPFPNR: TFloatField
      FieldName = 'FPNR'
      Origin = 'SG_ASSOC.FPCRDUP.FPNR'
    end
    object Qr_FPCRDUPFPDUP_CODEMP: TFloatField
      FieldName = 'FPDUP_CODEMP'
      Origin = 'SG_ASSOC.FPCRDUP.FPDUP_CODEMP'
    end
    object Qr_FPCRDUPFPCODVEN: TFloatField
      FieldName = 'FPCODVEN'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODVEN'
    end
    object Qr_FPCRDUPFPDTBX: TDateTimeField
      FieldName = 'FPDTBX'
      Origin = 'SG_ASSOC.FPCRDUP.FPDTBX'
    end
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 536
    Top = 40
  end
  object Qr_RPro: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  RCODRAM,'
      '  RNOME'
      'from CADRAM')
    Left = 240
    Top = 248
    object Qr_RProRCODRAM: TFloatField
      FieldName = 'RCODRAM'
      Origin = 'SG_ASSOC.CADRAM.RCODRAM'
    end
    object Qr_RProRNOME: TStringField
      FieldName = 'RNOME'
      Origin = 'SG_ASSOC.CADRAM.RNOME'
      Size = 30
    end
  end
  object Qr_Loc: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  CCODLOC,CCIDADE,CUF'
      'from CADCLI')
    Left = 240
    Top = 288
    object Qr_LocCCODLOC: TFloatField
      FieldName = 'CCODLOC'
      Origin = 'SG_ASSOC.CADCLI.CCODLOC'
    end
    object Qr_LocCCIDADE: TStringField
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Qr_LocCUF: TStringField
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
  end
  object Qr_RedeCli: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select RDCODRED,'
      '  RDNOME'
      'from cadred')
    Left = 192
    Top = 248
    object Qr_RedeCliRDCODRED: TFloatField
      FieldName = 'RDCODRED'
      Origin = 'SG_ASSOC.CADRED.RDCODRED'
    end
    object Qr_RedeCliRDNOME: TStringField
      FieldName = 'RDNOME'
      Origin = 'SG_ASSOC.CADRED.RDNOME'
      Size = 40
    end
  end
  object Qr_For: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select FCODFOR,'
      ' FRAZAO'
      'from CADFOR')
    Left = 192
    Top = 288
    object Qr_ForFCODFOR: TFloatField
      FieldName = 'FCODFOR'
      Origin = 'SG_ASSOC.CADFOR.FCODFOR'
    end
    object Qr_ForFRAZAO: TStringField
      FieldName = 'FRAZAO'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 40
    end
  end
  object Qr_Ped01: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P1NPEDORI,'
      '       P1CHAVE,'
      '       P1ORDEM,'
      '       P1DATAP,'
      '       P1CODCLI,'
      '       P1CODVEN,'
      '       P1TABPV,'
      '       P1CODPV,'
      '       P1BANCO,'
      '       P1FRETEPC,'
      '       P1DESC01,'
      '       P1SUBMOD,'
      '       P1OBS1,'
      '       P1CODEMP-P1CODEMP AS P1CODURG,'
      '       P1TOTALL,'
      '       CCNPJ FROM CADP01,CADCLI'
      '       WHERE P1CODEMP=0'
      '       AND CCODCLI=P1CODCLI'
      '')
    Left = 120
    Top = 248
    object Qr_Ped01P1NPEDORI: TFloatField
      FieldName = 'P1NPEDORI'
      Origin = 'SG_ASSOC.CADP01.P1NPEDORI'
    end
    object Qr_Ped01P1CHAVE: TFloatField
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Qr_Ped01P1ORDEM: TFloatField
      FieldName = 'P1ORDEM'
      Origin = 'SG_ASSOC.CADP01.P1ORDEM'
    end
    object Qr_Ped01P1DATAP: TDateTimeField
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Qr_Ped01P1CODCLI: TFloatField
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Qr_Ped01P1CODVEN: TFloatField
      FieldName = 'P1CODVEN'
      Origin = 'SG_ASSOC.CADP01.P1CODVEN'
    end
    object Qr_Ped01P1TABPV: TStringField
      FieldName = 'P1TABPV'
      Origin = 'SG_ASSOC.CADP01.P1TABPV'
      Size = 2
    end
    object Qr_Ped01P1CODPV: TFloatField
      FieldName = 'P1CODPV'
      Origin = 'SG_ASSOC.CADP01.P1CODPV'
    end
    object Qr_Ped01P1BANCO: TFloatField
      FieldName = 'P1BANCO'
      Origin = 'SG_ASSOC.CADP01.P1BANCO'
    end
    object Qr_Ped01P1FRETEPC: TFloatField
      FieldName = 'P1FRETEPC'
      Origin = 'SG_ASSOC.CADP01.P1FRETEPC'
    end
    object Qr_Ped01P1DESC01: TFloatField
      FieldName = 'P1DESC01'
      Origin = 'SG_ASSOC.CADP01.P1DESC01'
    end
    object Qr_Ped01P1SUBMOD: TStringField
      FieldName = 'P1SUBMOD'
      Origin = 'SG_ASSOC.CADP01.P1SUBMOD'
      Size = 3
    end
    object Qr_Ped01P1OBS1: TStringField
      FieldName = 'P1OBS1'
      Origin = 'SG_ASSOC.CADP01.P1OBS1'
      Size = 60
    end
    object Qr_Ped01P1CODURG: TFloatField
      FieldName = 'P1CODURG'
      Origin = 'SG_ASSOC.CADP01.P1CODEMP'
    end
    object Qr_Ped01P1TOTALL: TFloatField
      FieldName = 'P1TOTALL'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Qr_Ped01CCNPJ: TFloatField
      FieldName = 'CCNPJ'
      Origin = 'SG_ASSOC.CADCLI.CCNPJ'
    end
  end
  object Qr_Ped02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P1NPEDORI,'
      '       P2CODPRO,'
      '       P2QTD,'
      '       P2DESC1,'
      '       P2DESC2,'
      '       P2DESC3,'
      '       P2PRECO,'
      '       P2PCOTAB,'
      '       P2PDESCF,'
      '       P2VDESCF,'
      '       P2TOTDES,'
      '       P2DESCRAT,'
      '       P2ICMSR,'
      '       P2TOTLIQ,'
      '       P2CHAVE,'
      '       P2ORDEM,'
      '       P2LOTE,'
      '       P2DTVCTO'
      '       ,P2BASEN'
      '       ,P2ICMSN'
      '       ,P2BASER'
      '       ,P2ALIQ'
      '       ,P2ALIQNR'
      '       ,P2REPAS'
      '       ,P2ALIPI'
      '       ,P2VALIPI'
      '       ,P2SIT'
      '       ,P2CFO'
      '       ,P2PROMOCAO'
      '       ,P2DESCPR'
      '       FROM CADP01,CADP02'
      '       WHERE P1CODEMP=0'
      '       AND P2CODEMP=P1CODEMP'
      '       AND P2LOTSEQ=P1LOTSEQ'
      '       AND P2CHAVE=P1CHAVE'
      '       AND P2ORDEM=P1ORDEM'
      '')
    Left = 120
    Top = 304
    object Qr_Ped02P1NPEDORI: TFloatField
      FieldName = 'P1NPEDORI'
      Origin = 'SG_ASSOC.CADP01.P1NPEDORI'
    end
    object Qr_Ped02P2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Qr_Ped02P2QTD: TFloatField
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Qr_Ped02P2DESC1: TFloatField
      FieldName = 'P2DESC1'
      Origin = 'SG_ASSOC.CADP02.P2DESC1'
    end
    object Qr_Ped02P2DESC2: TFloatField
      FieldName = 'P2DESC2'
      Origin = 'SG_ASSOC.CADP02.P2DESC2'
    end
    object Qr_Ped02P2DESC3: TFloatField
      FieldName = 'P2DESC3'
      Origin = 'SG_ASSOC.CADP02.P2DESC3'
    end
    object Qr_Ped02P2PRECO: TFloatField
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Qr_Ped02P2PCOTAB: TFloatField
      FieldName = 'P2PCOTAB'
      Origin = 'SG_ASSOC.CADP02.P2PCOTAB'
    end
    object Qr_Ped02P2PDESCF: TFloatField
      FieldName = 'P2PDESCF'
      Origin = 'SG_ASSOC.CADP02.P2PDESCF'
    end
    object Qr_Ped02P2VDESCF: TFloatField
      FieldName = 'P2VDESCF'
      Origin = 'SG_ASSOC.CADP02.P2VDESCF'
    end
    object Qr_Ped02P2TOTDES: TFloatField
      FieldName = 'P2TOTDES'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
    object Qr_Ped02P2DESCRAT: TFloatField
      FieldName = 'P2DESCRAT'
      Origin = 'SG_ASSOC.CADP02.P2DESCRAT'
    end
    object Qr_Ped02P2ICMSR: TFloatField
      FieldName = 'P2ICMSR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSR'
    end
    object Qr_Ped02P2TOTLIQ: TFloatField
      FieldName = 'P2TOTLIQ'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
    object Qr_Ped02P2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE'
    end
    object Qr_Ped02P2ORDEM: TFloatField
      FieldName = 'P2ORDEM'
      Origin = 'SG_ASSOC.CADP02.P2ORDEM'
    end
    object Qr_Ped02P2LOTE: TStringField
      FieldName = 'P2LOTE'
      Origin = 'SG_ASSOC.CADP02.P2LOTE'
    end
    object Qr_Ped02P2DTVCTO: TDateTimeField
      FieldName = 'P2DTVCTO'
      Origin = 'SG_ASSOC.CADP02.P2DTVCTO'
    end
    object Qr_Ped02P2BASEN: TFloatField
      FieldName = 'P2BASEN'
      Origin = 'SG_ASSOC.CADP02.P2BASEN'
    end
    object Qr_Ped02P2ICMSN: TFloatField
      FieldName = 'P2ICMSN'
      Origin = 'SG_ASSOC.CADP02.P2ICMSN'
    end
    object Qr_Ped02P2BASER: TFloatField
      FieldName = 'P2BASER'
      Origin = 'SG_ASSOC.CADP02.P2BASER'
    end
    object Qr_Ped02P2ALIQ: TFloatField
      FieldName = 'P2ALIQ'
      Origin = 'SG_ASSOC.CADP02.P2ALIQ'
    end
    object Qr_Ped02P2ALIQNR: TFloatField
      FieldName = 'P2ALIQNR'
      Origin = 'SG_ASSOC.CADP02.P2ALIQNR'
    end
    object Qr_Ped02P2REPAS: TFloatField
      FieldName = 'P2REPAS'
      Origin = 'SG_ASSOC.CADP02.P2REPAS'
    end
    object Qr_Ped02P2ALIPI: TFloatField
      FieldName = 'P2ALIPI'
      Origin = 'SG_ASSOC.CADP02.P2ALIPI'
    end
    object Qr_Ped02P2VALIPI: TFloatField
      FieldName = 'P2VALIPI'
      Origin = 'SG_ASSOC.CADP02.P2VALIPI'
    end
    object Qr_Ped02P2SIT: TStringField
      FieldName = 'P2SIT'
      Origin = 'SG_ASSOC.CADP02.P2SIT'
      Size = 3
    end
    object Qr_Ped02P2CFO: TFloatField
      FieldName = 'P2CFO'
      Origin = 'SG_ASSOC.CADP02.P2CFO'
    end
    object Qr_Ped02P2PROMOCAO: TStringField
      FieldName = 'P2PROMOCAO'
      Origin = 'SG_ASSOC.CADP02.P2PROMOCAO'
      Size = 10
    end
    object Qr_Ped02P2DESCPR: TFloatField
      FieldName = 'P2DESCPR'
      Origin = 'SG_ASSOC.CADP02.P2DESCPR'
    end
  end
  object Qr_PPr: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PPCODPRO,PPPVTIP,PPPVTAB,PPCODRED,PPCODREG,'
      '       PPPCOVDA,PPDESC_1,PPDESC_2,PPDESC_3,PPQTDMIN,'
      '       PPDATINI,PPDATFIN,PPVALMIN,PPDESC_F,PPPROMOCAO'
      ' FROM CADPPR')
    Left = 416
    Top = 272
    object Qr_PPrPPCODPRO: TFloatField
      FieldName = 'PPCODPRO'
      Origin = 'SG_ASSOC.CADPPR.PPCODPRO'
    end
    object Qr_PPrPPPVTIP: TStringField
      FieldName = 'PPPVTIP'
      Origin = 'SG_ASSOC.CADPPR.PPPVTIP'
      Size = 2
    end
    object Qr_PPrPPPVTAB: TStringField
      FieldName = 'PPPVTAB'
      Origin = 'SG_ASSOC.CADPPR.PPPVTAB'
      Size = 2
    end
    object Qr_PPrPPCODRED: TFloatField
      FieldName = 'PPCODRED'
      Origin = 'SG_ASSOC.CADPPR.PPCODRED'
    end
    object Qr_PPrPPCODREG: TFloatField
      FieldName = 'PPCODREG'
      Origin = 'SG_ASSOC.CADPPR.PPCODREG'
    end
    object Qr_PPrPPPCOVDA: TFloatField
      FieldName = 'PPPCOVDA'
      Origin = 'SG_ASSOC.CADPPR.PPPCOVDA'
    end
    object Qr_PPrPPDESC_1: TFloatField
      FieldName = 'PPDESC_1'
      Origin = 'SG_ASSOC.CADPPR.PPDESC_1'
    end
    object Qr_PPrPPDESC_2: TFloatField
      FieldName = 'PPDESC_2'
      Origin = 'SG_ASSOC.CADPPR.PPDESC_2'
    end
    object Qr_PPrPPDESC_3: TFloatField
      FieldName = 'PPDESC_3'
      Origin = 'SG_ASSOC.CADPPR.PPDESC_3'
    end
    object Qr_PPrPPQTDMIN: TFloatField
      FieldName = 'PPQTDMIN'
      Origin = 'SG_ASSOC.CADPPR.PPQTDMIN'
    end
    object Qr_PPrPPDATINI: TDateTimeField
      FieldName = 'PPDATINI'
      Origin = 'SG_ASSOC.CADPPR.PPDATINI'
    end
    object Qr_PPrPPDATFIN: TDateTimeField
      FieldName = 'PPDATFIN'
      Origin = 'SG_ASSOC.CADPPR.PPDATFIN'
    end
    object Qr_PPrPPVALMIN: TFloatField
      FieldName = 'PPVALMIN'
      Origin = 'SG_ASSOC.CADPPR.PPVALMIN'
    end
    object Qr_PPrPPDESC_F: TFloatField
      FieldName = 'PPDESC_F'
      Origin = 'SG_ASSOC.CADPPR.PPDESC_F'
    end
    object Qr_PPrPPPROMOCAO: TStringField
      FieldName = 'PPPROMOCAO'
      Origin = 'SG_ASSOC.CADPPR.PPPROMOCAO'
      Size = 10
    end
  end
end
