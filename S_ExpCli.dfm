object Frm_ExpCli: TFrm_ExpCli
  Left = 328
  Top = 211
  Width = 544
  Height = 197
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Exportacao de Arquivo de Clientes'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 528
    Height = 118
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 1
      Width = 526
      Height = 13
      Align = alTop
      Alignment = taCenter
      AutoSize = False
      Caption = 'Label1'
    end
    object Label2: TLabel
      Left = 8
      Top = 32
      Width = 112
      Height = 13
      Caption = 'Empresa Destino...:'
    end
    object Label3: TLabel
      Left = 10
      Top = 60
      Width = 109
      Height = 13
      Caption = 'C'#243'digo do Cliente.:'
    end
    object SpeedButton1: TSpeedButton
      Left = 185
      Top = 29
      Width = 23
      Height = 18
      Flat = True
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
      OnClick = SpeedButton1Click
    end
    object SpeedButton2: TSpeedButton
      Left = 185
      Top = 56
      Width = 23
      Height = 19
      Flat = True
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
      OnClick = SpeedButton2Click
    end
    object Gauge1: TGauge
      Left = 2
      Top = 91
      Width = 532
      Height = 38
      Progress = 0
      Visible = False
    end
    object MCODEMP: TEdit
      Left = 125
      Top = 28
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = MCODEMPExit
      OnKeyPress = MCODEMPKeyPress
    end
    object CODCLI: TEdit
      Left = 125
      Top = 56
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnExit = CODCLIExit
      OnKeyPress = MCODEMPKeyPress
    end
    object NOMEMP: TEdit
      Left = 209
      Top = 28
      Width = 300
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 2
    end
    object NOMCLI: TEdit
      Left = 209
      Top = 56
      Width = 300
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 3
      Text = 'Todos...'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 118
    Width = 528
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 32
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Exportar'
      TabOrder = 0
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 440
      Top = 10
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 1
      OnClick = BitBtn2Click
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
  object Qr_Cli: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * From CADCLI where CCODEMP is null')
    Left = 8
    Top = 88
    object Qr_CliCCODEMP: TFloatField
      FieldName = 'CCODEMP'
      Origin = 'SG_ASSOC.CADCLI.CCODEMP'
    end
    object Qr_CliCCODCLI: TFloatField
      FieldName = 'CCODCLI'
      Origin = 'SG_ASSOC.CADCLI.CCODCLI'
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
    object Qr_CliCTPLOG: TStringField
      FieldName = 'CTPLOG'
      Origin = 'SG_ASSOC.CADCLI.CTPLOG'
      Size = 10
    end
    object Qr_CliCLOG: TStringField
      FieldName = 'CLOG'
      Origin = 'SG_ASSOC.CADCLI.CLOG'
      Size = 40
    end
    object Qr_CliCNUM: TStringField
      FieldName = 'CNUM'
      Origin = 'SG_ASSOC.CADCLI.CNUM'
      Size = 10
    end
    object Qr_CliCCOMPL: TStringField
      FieldName = 'CCOMPL'
      Origin = 'SG_ASSOC.CADCLI.CCOMPL'
      Size = 30
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
    object Qr_CliCCODBAI: TFloatField
      FieldName = 'CCODBAI'
      Origin = 'SG_ASSOC.CADCLI.CCODBAI'
    end
    object Qr_CliCCODLOC: TFloatField
      FieldName = 'CCODLOC'
      Origin = 'SG_ASSOC.CADCLI.CCODLOC'
    end
    object Qr_CliCCEP: TStringField
      FieldName = 'CCEP'
      Origin = 'SG_ASSOC.CADCLI.CCEP'
      Size = 9
    end
    object Qr_CliCCELULAR: TStringField
      FieldName = 'CCELULAR'
      Origin = 'SG_ASSOC.CADCLI.CCELULAR'
      Size = 16
    end
    object Qr_CliCFONERES: TStringField
      FieldName = 'CFONERES'
      Origin = 'SG_ASSOC.CADCLI.CFONERES'
      Size = 16
    end
    object Qr_CliCFONECOM: TStringField
      FieldName = 'CFONECOM'
      Origin = 'SG_ASSOC.CADCLI.CFONECOM'
      Size = 16
    end
    object Qr_CliCDTCAD: TDateTimeField
      FieldName = 'CDTCAD'
      Origin = 'SG_ASSOC.CADCLI.CDTCAD'
    end
    object Qr_CliCRG: TStringField
      FieldName = 'CRG'
      Origin = 'SG_ASSOC.CADCLI.CRG'
      Size = 40
    end
    object Qr_CliCCPF: TFloatField
      FieldName = 'CCPF'
      Origin = 'SG_ASSOC.CADCLI.CCPF'
    end
    object Qr_CliCCNPJ: TFloatField
      FieldName = 'CCNPJ'
      Origin = 'SG_ASSOC.CADCLI.CCNPJ'
    end
    object Qr_CliCIE: TStringField
      FieldName = 'CIE'
      Origin = 'SG_ASSOC.CADCLI.CIE'
      Size = 30
    end
    object Qr_CliCPONTOR: TStringField
      FieldName = 'CPONTOR'
      Origin = 'SG_ASSOC.CADCLI.CPONTOR'
      Size = 60
    end
    object Qr_CliCLCRED: TFloatField
      FieldName = 'CLCRED'
      Origin = 'SG_ASSOC.CADCLI.CLCRED'
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
    object Qr_CliCCODVEN: TFloatField
      FieldName = 'CCODVEN'
      Origin = 'SG_ASSOC.CADCLI.CCODVEN'
    end
    object Qr_CliCCODV02: TFloatField
      FieldName = 'CCODV02'
      Origin = 'SG_ASSOC.CADCLI.CCODV02'
    end
    object Qr_CliCCODV03: TFloatField
      FieldName = 'CCODV03'
      Origin = 'SG_ASSOC.CADCLI.CCODV03'
    end
    object Qr_CliCCODCV: TFloatField
      FieldName = 'CCODCV'
      Origin = 'SG_ASSOC.CADCLI.CCODCV'
    end
    object Qr_CliCTIPOC: TFloatField
      FieldName = 'CTIPOC'
      Origin = 'SG_ASSOC.CADCLI.CTIPOC'
    end
    object Qr_CliCSTATUS: TFloatField
      FieldName = 'CSTATUS'
      Origin = 'SG_ASSOC.CADCLI.CSTATUS'
    end
    object Qr_CliCALIQA: TFloatField
      FieldName = 'CALIQA'
      Origin = 'SG_ASSOC.CADCLI.CALIQA'
    end
    object Qr_CliCALIQB: TFloatField
      FieldName = 'CALIQB'
      Origin = 'SG_ASSOC.CADCLI.CALIQB'
    end
    object Qr_CliCCONSF: TFloatField
      FieldName = 'CCONSF'
      Origin = 'SG_ASSOC.CADCLI.CCONSF'
    end
    object Qr_CliCICMSR: TFloatField
      FieldName = 'CICMSR'
      Origin = 'SG_ASSOC.CADCLI.CICMSR'
    end
    object Qr_CliCLIM1: TStringField
      FieldName = 'CLIM1'
      Origin = 'SG_ASSOC.CADCLI.CLIM1'
      Size = 60
    end
    object Qr_CliCLIM2: TStringField
      FieldName = 'CLIM2'
      Origin = 'SG_ASSOC.CADCLI.CLIM2'
      Size = 60
    end
    object Qr_CliCNALV: TStringField
      FieldName = 'CNALV'
      Origin = 'SG_ASSOC.CADCLI.CNALV'
    end
    object Qr_CliCDTVALV: TDateTimeField
      FieldName = 'CDTVALV'
      Origin = 'SG_ASSOC.CADCLI.CDTVALV'
    end
    object Qr_CliCNANVISA: TStringField
      FieldName = 'CNANVISA'
      Origin = 'SG_ASSOC.CADCLI.CNANVISA'
    end
    object Qr_CliCDTANVISA: TDateTimeField
      FieldName = 'CDTANVISA'
      Origin = 'SG_ASSOC.CADCLI.CDTANVISA'
    end
    object Qr_CliCICMSRP: TFloatField
      FieldName = 'CICMSRP'
      Origin = 'SG_ASSOC.CADCLI.CICMSRP'
    end
    object Qr_CliCIPI: TFloatField
      FieldName = 'CIPI'
      Origin = 'SG_ASSOC.CADCLI.CIPI'
    end
    object Qr_CliCICMSTP: TFloatField
      FieldName = 'CICMSTP'
      Origin = 'SG_ASSOC.CADCLI.CICMSTP'
    end
    object Qr_CliCREPAS: TFloatField
      FieldName = 'CREPAS'
      Origin = 'SG_ASSOC.CADCLI.CREPAS'
    end
    object Qr_CliCCOMIS: TFloatField
      FieldName = 'CCOMIS'
      Origin = 'SG_ASSOC.CADCLI.CCOMIS'
    end
    object Qr_CliCDESC: TFloatField
      FieldName = 'CDESC'
      Origin = 'SG_ASSOC.CADCLI.CDESC'
    end
    object Qr_CliCEMAIL: TStringField
      FieldName = 'CEMAIL'
      Origin = 'SG_ASSOC.CADCLI.CEMAIL'
      Size = 50
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
    object Qr_CliCHOME: TStringField
      FieldName = 'CHOME'
      Origin = 'SG_ASSOC.CADCLI.CHOME'
      Size = 50
    end
    object Qr_CliCCODRED: TFloatField
      FieldName = 'CCODRED'
      Origin = 'SG_ASSOC.CADCLI.CCODRED'
    end
    object Qr_CliCCODCCD: TStringField
      FieldName = 'CCODCCD'
      Origin = 'SG_ASSOC.CADCLI.CCODCCD'
      Size = 5
    end
    object Qr_CliCCODCCC: TStringField
      FieldName = 'CCODCCC'
      Origin = 'SG_ASSOC.CADCLI.CCODCCC'
      Size = 5
    end
    object Qr_CliCCODDEPD: TStringField
      FieldName = 'CCODDEPD'
      Origin = 'SG_ASSOC.CADCLI.CCODDEPD'
      Size = 5
    end
    object Qr_CliCCODDEPC: TStringField
      FieldName = 'CCODDEPC'
      Origin = 'SG_ASSOC.CADCLI.CCODDEPC'
      Size = 5
    end
    object Qr_CliCDESCMVD: TStringField
      FieldName = 'CDESCMVD'
      Origin = 'SG_ASSOC.CADCLI.CDESCMVD'
      Size = 40
    end
    object Qr_CliCDESCMVC: TStringField
      FieldName = 'CDESCMVC'
      Origin = 'SG_ASSOC.CADCLI.CDESCMVC'
      Size = 40
    end
    object Qr_CliCCODUSR: TFloatField
      FieldName = 'CCODUSR'
      Origin = 'SG_ASSOC.CADCLI.CCODUSR'
    end
    object Qr_CliCDTALT: TDateTimeField
      FieldName = 'CDTALT'
      Origin = 'SG_ASSOC.CADCLI.CDTALT'
    end
    object Qr_CliCDTUCPR: TDateTimeField
      FieldName = 'CDTUCPR'
      Origin = 'SG_ASSOC.CADCLI.CDTUCPR'
    end
    object Qr_CliCDTPCPR: TDateTimeField
      FieldName = 'CDTPCPR'
      Origin = 'SG_ASSOC.CADCLI.CDTPCPR'
    end
    object Qr_CliCHRALT: TStringField
      FieldName = 'CHRALT'
      Origin = 'SG_ASSOC.CADCLI.CHRALT'
      Size = 10
    end
    object Qr_CliCTPPESSOA: TFloatField
      FieldName = 'CTPPESSOA'
      Origin = 'SG_ASSOC.CADCLI.CTPPESSOA'
    end
    object Qr_CliCREFCOM01: TStringField
      FieldName = 'CREFCOM01'
      Origin = 'SG_ASSOC.CADCLI.CREFCOM01'
      Size = 60
    end
    object Qr_CliCREFCOM02: TStringField
      FieldName = 'CREFCOM02'
      Origin = 'SG_ASSOC.CADCLI.CREFCOM02'
      Size = 60
    end
    object Qr_CliCREFCOM03: TStringField
      FieldName = 'CREFCOM03'
      Origin = 'SG_ASSOC.CADCLI.CREFCOM03'
      Size = 60
    end
    object Qr_CliCREFCOM04: TStringField
      FieldName = 'CREFCOM04'
      Origin = 'SG_ASSOC.CADCLI.CREFCOM04'
      Size = 60
    end
    object Qr_CliCREFBAN01: TStringField
      FieldName = 'CREFBAN01'
      Origin = 'SG_ASSOC.CADCLI.CREFBAN01'
      Size = 60
    end
    object Qr_CliCREFBAN02: TStringField
      FieldName = 'CREFBAN02'
      Origin = 'SG_ASSOC.CADCLI.CREFBAN02'
      Size = 60
    end
    object Qr_CliCREFBAN03: TStringField
      FieldName = 'CREFBAN03'
      Origin = 'SG_ASSOC.CADCLI.CREFBAN03'
      Size = 60
    end
    object Qr_CliCREFBAN04: TStringField
      FieldName = 'CREFBAN04'
      Origin = 'SG_ASSOC.CADCLI.CREFBAN04'
      Size = 60
    end
    object Qr_CliCREFPES01: TStringField
      FieldName = 'CREFPES01'
      Origin = 'SG_ASSOC.CADCLI.CREFPES01'
      Size = 60
    end
    object Qr_CliCREFPES02: TStringField
      FieldName = 'CREFPES02'
      Origin = 'SG_ASSOC.CADCLI.CREFPES02'
      Size = 60
    end
    object Qr_CliCREFPES03: TStringField
      FieldName = 'CREFPES03'
      Origin = 'SG_ASSOC.CADCLI.CREFPES03'
      Size = 60
    end
    object Qr_CliCREFPES04: TStringField
      FieldName = 'CREFPES04'
      Origin = 'SG_ASSOC.CADCLI.CREFPES04'
      Size = 60
    end
    object Qr_CliCOBS01: TStringField
      FieldName = 'COBS01'
      Origin = 'SG_ASSOC.CADCLI.COBS01'
      Size = 60
    end
    object Qr_CliCOBS02: TStringField
      FieldName = 'COBS02'
      Origin = 'SG_ASSOC.CADCLI.COBS02'
      Size = 60
    end
    object Qr_CliCOBS03: TStringField
      FieldName = 'COBS03'
      Origin = 'SG_ASSOC.CADCLI.COBS03'
      Size = 60
    end
    object Qr_CliCOBS04: TStringField
      FieldName = 'COBS04'
      Origin = 'SG_ASSOC.CADCLI.COBS04'
      Size = 60
    end
  end
  object Tb_Cli: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select CCODCLI from CADCLI where'
      'CRAZAO like :RAZAO and'
      'CDENOM like :DENOM and'
      'CTPLOG like :TPLOG and'
      'CLOG   like :LOG   and'
      'CNUM   like :NUM   and'
      'CCOMPL like :COMPL and'
      'CBAIRRO like :BAIRRO and'
      'CCIDADE like :CIDADE and'
      'CUF     like :UF     and'
      'CCEP    like :CEP    and'
      'CCELULAR like :CELULAR and'
      'CFONERES like :FONERES and'
      'CFONECOM like :FONECOM and'
      'CRG      like :RG      and'
      'CIE      like :IE      and'
      'CPONTOR  like :PONTOR  and'
      'CREFP01  like :REFP01  and'
      'CREFB01  like :REFP01  and'
      'CREFC01  like :REFC01 and'
      'COBS     like :OBS    and'
      'CLIM1    like :LIM1   and'
      'CLIM2    like :LIM2   and'
      'CNALV    like :NALV'
      '')
    Left = 48
    Top = 96
    ParamData = <
      item
        DataType = ftString
        Name = 'RAZAO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DENOM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'TPLOG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'LOG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NUM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'COMPL'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'BAIRRO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CIDADE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CEP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CELULAR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FONERES'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'FONECOM'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'RG'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'IE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'PONTOR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'REFP01'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'REFP01'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'REFC01'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'OBS'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'LIM1'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'LIM2'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NALV'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_CliCCODCLI: TFloatField
      FieldName = 'CCODCLI'
      Origin = 'SG_ASSOC.CADCLI.CCODCLI'
    end
  end
end
