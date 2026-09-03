object Frm_CalcIcms: TFrm_CalcIcms
  Left = 170
  Top = 114
  Width = 566
  Height = 243
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 
    'Recalcular Icms das Notas de Sa'#237'das de Acordo com os Parametros ' +
    'Atuais'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 14
    Width = 53
    Height = 13
    Caption = 'Per'#237'odo de'
  end
  object Label3: TLabel
    Left = 208
    Top = 12
    Width = 6
    Height = 13
    Caption = #224
  end
  object Label2: TLabel
    Left = 33
    Top = 35
    Width = 39
    Height = 13
    Caption = 'Estado.:'
  end
  object Label4: TLabel
    Left = 34
    Top = 55
    Width = 35
    Height = 13
    Caption = 'Cliente:'
  end
  object Label5: TLabel
    Left = 0
    Top = 139
    Width = 558
    Height = 13
    Align = alBottom
    Alignment = taCenter
    Caption = 'Label5'
    Visible = False
  end
  object MDT1: TMaskEdit
    Left = 120
    Top = 8
    Width = 81
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 0
    Text = '  /  /    '
    OnExit = MDT1Exit
  end
  object MDT2: TMaskEdit
    Left = 227
    Top = 8
    Width = 81
    Height = 19
    Ctl3D = False
    EditMask = '!99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 1
    Text = '  /  /    '
    OnExit = MDT2Exit
  end
  object BitBtn1: TBitBtn
    Left = 16
    Top = 105
    Width = 161
    Height = 25
    Caption = '&Calcular'
    Enabled = False
    TabOrder = 2
    OnClick = BitBtn1Click
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
      00333FF777777777773F0000FFFFFFFFFF0377773F3F3F3F3F7308880F0F0F0F
      0FF07F33737373737337088880FFFFFFFFF07F3337FFFFFFFFF7088880000000
      00037F3337777777777308888033330F03337F3337F3FF7F7FFF088880300000
      00007F3337F7777777770FFFF030FFFFFFF07F3FF7F7F3FFFFF708008030F000
      00F07F7737F7F77777F70FFFF030F0AAE0F07F3FF7F7F7F337F708008030F0DA
      D0F07F7737F7F7FFF7F70FFFF030F00000F07F33F7F7F77777370FF9F030FFFF
      FFF07F3737F7FFFFFFF70FFFF030000000007FFFF7F777777777000000333333
      3333777777333333333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object bbSair: TBitBtn
    Left = 288
    Top = 105
    Width = 161
    Height = 25
    Caption = '&Sair'
    Enabled = False
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
  object UF: TEdit
    Left = 121
    Top = 30
    Width = 45
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 4
    OnExit = UFExit
  end
  object NOMUF: TEdit
    Left = 169
    Top = 29
    Width = 280
    Height = 19
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 5
    Text = 'Todos...'
  end
  object CODCLI: TEdit
    Left = 120
    Top = 52
    Width = 58
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 6
    OnExit = CODCLIExit
    OnKeyPress = CODCLIKeyPress
  end
  object NOMCLI: TEdit
    Left = 185
    Top = 51
    Width = 264
    Height = 19
    Ctl3D = False
    Enabled = False
    ParentColor = True
    ParentCtl3D = False
    TabOrder = 7
    Text = 'Todos...'
  end
  object RG_Progres: TGroupBox
    Left = 0
    Top = 152
    Width = 558
    Height = 60
    Align = alBottom
    Caption = 'Progresso do Processamento:'
    TabOrder = 8
    Visible = False
    object Gauge1: TGauge
      Left = 2
      Top = 15
      Width = 554
      Height = 43
      Align = alClient
      Progress = 0
    end
  end
  object CB_SITTRI: TCheckBox
    Left = 38
    Top = 72
    Width = 275
    Height = 17
    Caption = 'Atualizar Situa'#231#227'o Tribut'#225'ria'
    TabOrder = 9
  end
  object CB_TOTPED: TCheckBox
    Left = 38
    Top = 89
    Width = 275
    Height = 17
    Caption = 'Atualizar Tamb'#233'm o Total do Pedido'
    TabOrder = 10
  end
  object Tb_Ped: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P1CODEMP,P1LOTSEQ,P1CHAVE,P1ORDEM,P1CODCLI,'
      '           P1TIPO,P1DESC01,P1DESC02,P1VLRDES,P1VALFRE,P1TPPCO,'
      '           P1PACREGER,P1PACRECONV,P1DATANF,P1DATACF,'
      '           CUF,CREPAS,CALIQA,CALIQB,CICMSR,'
      '           CICMSTP,CCONSF from CADP01,CADCLI'
      'where P1CODEMP is null'
      'and CCODEMP=P1CODEMP'
      'and CCODCLI=P1CODCLI')
    Left = 480
    Top = 64
    object Tb_PedP1CODEMP: TFloatField
      FieldName = 'P1CODEMP'
      Origin = 'SG_ASSOC.CADP01.P1CODEMP'
    end
    object Tb_PedP1CHAVE: TFloatField
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Tb_PedP1ORDEM: TFloatField
      FieldName = 'P1ORDEM'
      Origin = 'SG_ASSOC.CADP01.P1ORDEM'
    end
    object Tb_PedP1CODCLI: TFloatField
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Tb_PedCUF: TStringField
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Tb_PedCREPAS: TFloatField
      FieldName = 'CREPAS'
      Origin = 'SG_ASSOC.CADCLI.CREPAS'
    end
    object Tb_PedCALIQA: TFloatField
      FieldName = 'CALIQA'
      Origin = 'SG_ASSOC.CADCLI.CALIQA'
    end
    object Tb_PedCALIQB: TFloatField
      FieldName = 'CALIQB'
      Origin = 'SG_ASSOC.CADCLI.CALIQB'
    end
    object Tb_PedCICMSR: TFloatField
      FieldName = 'CICMSR'
      Origin = 'SG_ASSOC.CADCLI.CICMSR'
    end
    object Tb_PedCICMSTP: TFloatField
      FieldName = 'CICMSTP'
      Origin = 'SG_ASSOC.CADCLI.CICMSTP'
    end
    object Tb_PedP1TIPO: TFloatField
      FieldName = 'P1TIPO'
      Origin = 'SG_ASSOC.CADP01.P1TIPO'
    end
    object Tb_PedP1DESC01: TFloatField
      FieldName = 'P1DESC01'
      Origin = 'SG_ASSOC.CADP01.P1DESC01'
    end
    object Tb_PedP1DESC02: TFloatField
      FieldName = 'P1DESC02'
      Origin = 'SG_ASSOC.CADP01.P1DESC02'
    end
    object Tb_PedP1VLRDES: TFloatField
      FieldName = 'P1VLRDES'
      Origin = 'SG_ASSOC.CADP01.P1VLRDES'
    end
    object Tb_PedP1VALFRE: TFloatField
      FieldName = 'P1VALFRE'
      Origin = 'SG_ASSOC.CADP01.P1VALFRE'
    end
    object Tb_PedP1TPPCO: TFloatField
      FieldName = 'P1TPPCO'
      Origin = 'SG_ASSOC.CADP01.P1TPPCO'
    end
    object Tb_PedCCONSF: TFloatField
      FieldName = 'CCONSF'
      Origin = 'SG_ASSOC.CADCLI.CCONSF'
    end
    object Tb_PedP1PACREGER: TFloatField
      FieldName = 'P1PACREGER'
      Origin = 'SG_ASSOC.CADP01.P1PACREGER'
    end
    object Tb_PedP1PACRECONV: TFloatField
      FieldName = 'P1PACRECONV'
      Origin = 'SG_ASSOC.CADP01.P1PACRECONV'
    end
    object Tb_PedP1DATANF: TDateTimeField
      FieldName = 'P1DATANF'
      Origin = 'SG_ASSOC.CADP01.P1DATANF'
    end
    object Tb_PedP1DATACF: TDateTimeField
      FieldName = 'P1DATACF'
      Origin = 'SG_ASSOC.CADP01.P1DATACF'
    end
    object Tb_PedP1LOTSEQ: TFloatField
      FieldName = 'P1LOTSEQ'
      Origin = 'SG_ASSOC.CADP01.P1LOTSEQ'
    end
    object Tb_PedP1ID_NEW: TFloatField
      FieldName = 'P1ID_NEW'
    end
  end
  object Tb_Ped02S: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADP02S'
      'where P2SCODEMP like :CODEMP'
      'and     P2SLOTSEQ  like :LOTSEQ'
      'and     P2SCHAVE   like :CHAVE'
      'and     P2SORDEM  like :ORDEM')
    Left = 480
    Top = 33
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'LOTSEQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'ORDEM'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_Ped02SP2SCODEMP: TFloatField
      FieldName = 'P2SCODEMP'
      Origin = 'SG_ASSOC.CADP02S.P2SCODEMP'
    end
    object Tb_Ped02SP2SCHAVE: TFloatField
      FieldName = 'P2SCHAVE'
      Origin = 'SG_ASSOC.CADP02S.P2SCHAVE'
    end
    object Tb_Ped02SP2SORDEM: TFloatField
      FieldName = 'P2SORDEM'
      Origin = 'SG_ASSOC.CADP02S.P2SORDEM'
    end
    object Tb_Ped02SP2SITEM: TFloatField
      FieldName = 'P2SITEM'
      Origin = 'SG_ASSOC.CADP02S.P2SITEM'
    end
    object Tb_Ped02SP2SCODPRO: TFloatField
      FieldName = 'P2SCODPRO'
      Origin = 'SG_ASSOC.CADP02S.P2SCODPRO'
    end
    object Tb_Ped02SP2SQTD: TFloatField
      FieldName = 'P2SQTD'
      Origin = 'SG_ASSOC.CADP02S.P2SQTD'
    end
    object Tb_Ped02SP2SDESC1: TFloatField
      FieldName = 'P2SDESC1'
      Origin = 'SG_ASSOC.CADP02S.P2SDESC1'
    end
    object Tb_Ped02SP2SDESC2: TFloatField
      FieldName = 'P2SDESC2'
      Origin = 'SG_ASSOC.CADP02S.P2SDESC2'
    end
    object Tb_Ped02SP2SVALDES: TFloatField
      FieldName = 'P2SVALDES'
      Origin = 'SG_ASSOC.CADP02S.P2SVALDES'
    end
    object Tb_Ped02SP2SDESCRAT: TFloatField
      FieldName = 'P2SDESCRAT'
      Origin = 'SG_ASSOC.CADP02S.P2SDESCRAT'
    end
    object Tb_Ped02SP2SPRECO: TFloatField
      FieldName = 'P2SPRECO'
      Origin = 'SG_ASSOC.CADP02S.P2SPRECO'
    end
    object Tb_Ped02SP2SSIT: TStringField
      FieldName = 'P2SSIT'
      Origin = 'SG_ASSOC.CADP02S.P2SSIT'
      Size = 3
    end
    object Tb_Ped02SP2SCODFAB: TFloatField
      FieldName = 'P2SCODFAB'
      Origin = 'SG_ASSOC.CADP02S.P2SCODFAB'
    end
    object Tb_Ped02SP2SBCISSQN: TFloatField
      FieldName = 'P2SBCISSQN'
      Origin = 'SG_ASSOC.CADP02S.P2SBCISSQN'
    end
    object Tb_Ped02SP2SVISSQN: TFloatField
      FieldName = 'P2SVISSQN'
      Origin = 'SG_ASSOC.CADP02S.P2SVISSQN'
    end
    object Tb_Ped02SP2SLISTA: TFloatField
      FieldName = 'P2SLISTA'
      Origin = 'SG_ASSOC.CADP02S.P2SLISTA'
    end
    object Tb_Ped02SP2SSTATUS: TFloatField
      FieldName = 'P2SSTATUS'
      Origin = 'SG_ASSOC.CADP02S.P2SSTATUS'
    end
    object Tb_Ped02SP2SPCOTAB: TFloatField
      FieldName = 'P2SPCOTAB'
      Origin = 'SG_ASSOC.CADP02S.P2SPCOTAB'
    end
    object Tb_Ped02SP2STOTDES: TFloatField
      FieldName = 'P2STOTDES'
      Origin = 'SG_ASSOC.CADP02S.P2STOTDES'
    end
    object Tb_Ped02SP2STABELA: TStringField
      FieldName = 'P2STABELA'
      Origin = 'SG_ASSOC.CADP02S.P2STABELA'
      Size = 1
    end
    object Tb_Ped02SP2SISENTAS: TFloatField
      FieldName = 'P2SISENTAS'
      Origin = 'SG_ASSOC.CADP02S.P2SISENTAS'
    end
    object Tb_Ped02SP2SALIQ: TFloatField
      FieldName = 'P2SALIQ'
      Origin = 'SG_ASSOC.CADP02S.P2SALIQ'
    end
    object Tb_Ped02SP2SPCOMIS: TFloatField
      FieldName = 'P2SPCOMIS'
      Origin = 'SG_ASSOC.CADP02S.P2SPCOMIS'
    end
    object Tb_Ped02SP2SVCOMIS: TFloatField
      FieldName = 'P2SVCOMIS'
      Origin = 'SG_ASSOC.CADP02S.P2SVCOMIS'
    end
    object Tb_Ped02SP2SDESCM: TFloatField
      FieldName = 'P2SDESCM'
      Origin = 'SG_ASSOC.CADP02S.P2SDESCM'
    end
    object Tb_Ped02SP2SCFO: TFloatField
      FieldName = 'P2SCFO'
      Origin = 'SG_ASSOC.CADP02S.P2SCFO'
    end
    object Tb_Ped02SP2SSEMCOM: TFloatField
      FieldName = 'P2SSEMCOM'
      Origin = 'SG_ASSOC.CADP02S.P2SSEMCOM'
    end
    object Tb_Ped02SP2SPDESCF: TFloatField
      FieldName = 'P2SPDESCF'
      Origin = 'SG_ASSOC.CADP02S.P2SPDESCF'
    end
    object Tb_Ped02SP2SVDESCF: TFloatField
      FieldName = 'P2SVDESCF'
      Origin = 'SG_ASSOC.CADP02S.P2SVDESCF'
    end
    object Tb_Ped02SP2SPCOCUS: TFloatField
      FieldName = 'P2SPCOCUS'
      Origin = 'SG_ASSOC.CADP02S.P2SPCOCUS'
    end
    object Tb_Ped02SP2SVCOM02: TFloatField
      FieldName = 'P2SVCOM02'
      Origin = 'SG_ASSOC.CADP02S.P2SVCOM02'
    end
    object Tb_Ped02SP2SVCOM03: TFloatField
      FieldName = 'P2SVCOM03'
      Origin = 'SG_ASSOC.CADP02S.P2SVCOM03'
    end
    object Tb_Ped02SP2SLOTSEQ: TFloatField
      FieldName = 'P2SLOTSEQ'
      Origin = 'SG_ASSOC.CADP02S.P2SLOTSEQ'
    end
    object Tb_Ped02SP2ISD_NEW: TFloatField
      FieldName = 'P2ISD_NEW'
    end
    object Tb_Ped02SP2SID_PED01_NEW: TFloatField
      FieldName = 'P2SID_PED01_NEW'
    end
  end
  object Tb_Ped02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADP02'
      'where P2CODEMP   like :CODEMP'
      'and     P2LOTSEQ like :LOTSEQ'
      'and     P2CHAVE  like :CHAVE'
      'and     P2ORDEM  like :ORDEM')
    Left = 480
    Top = 96
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'LOTSEQ'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CHAVE'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'ORDEM'
        ParamType = ptUnknown
        Value = ''
      end>
    object Tb_Ped02P2CODEMP: TFloatField
      FieldName = 'P2CODEMP'
      Origin = 'SG_ASSOC.CADP02.P2CODEMP'
    end
    object Tb_Ped02P2LOTSEQ: TFloatField
      FieldName = 'P2LOTSEQ'
      Origin = 'SG_ASSOC.CADP02.P2LOTSEQ'
    end
    object Tb_Ped02P2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE'
    end
    object Tb_Ped02P2ORDEM: TFloatField
      FieldName = 'P2ORDEM'
      Origin = 'SG_ASSOC.CADP02.P2ORDEM'
    end
    object Tb_Ped02P2ITEM: TFloatField
      FieldName = 'P2ITEM'
      Origin = 'SG_ASSOC.CADP02.P2ITEM'
    end
    object Tb_Ped02P2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Tb_Ped02P2CODANT: TFloatField
      FieldName = 'P2CODANT'
      Origin = 'SG_ASSOC.CADP02.P2CODANT'
    end
    object Tb_Ped02P2QTD: TFloatField
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Tb_Ped02P2LOTE: TStringField
      FieldName = 'P2LOTE'
      Origin = 'SG_ASSOC.CADP02.P2LOTE'
    end
    object Tb_Ped02P2DTVCTO: TDateTimeField
      FieldName = 'P2DTVCTO'
      Origin = 'SG_ASSOC.CADP02.P2DTVCTO'
    end
    object Tb_Ped02P2DESC1: TFloatField
      FieldName = 'P2DESC1'
      Origin = 'SG_ASSOC.CADP02.P2DESC1'
    end
    object Tb_Ped02P2DESC2: TFloatField
      FieldName = 'P2DESC2'
      Origin = 'SG_ASSOC.CADP02.P2DESC2'
    end
    object Tb_Ped02P2VALDES: TFloatField
      FieldName = 'P2VALDES'
      Origin = 'SG_ASSOC.CADP02.P2VALDES'
    end
    object Tb_Ped02P2PRECO: TFloatField
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Tb_Ped02P2SIT: TStringField
      FieldName = 'P2SIT'
      Origin = 'SG_ASSOC.CADP02.P2SIT'
      Size = 3
    end
    object Tb_Ped02P2CODFAB: TFloatField
      FieldName = 'P2CODFAB'
      Origin = 'SG_ASSOC.CADP02.P2CODFAB'
    end
    object Tb_Ped02P2BASEN: TFloatField
      FieldName = 'P2BASEN'
      Origin = 'SG_ASSOC.CADP02.P2BASEN'
    end
    object Tb_Ped02P2ICMSN: TFloatField
      FieldName = 'P2ICMSN'
      Origin = 'SG_ASSOC.CADP02.P2ICMSN'
    end
    object Tb_Ped02P2REPAS: TFloatField
      FieldName = 'P2REPAS'
      Origin = 'SG_ASSOC.CADP02.P2REPAS'
    end
    object Tb_Ped02P2BASER: TFloatField
      FieldName = 'P2BASER'
      Origin = 'SG_ASSOC.CADP02.P2BASER'
    end
    object Tb_Ped02P2ICMSR: TFloatField
      FieldName = 'P2ICMSR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSR'
    end
    object Tb_Ped02P2LISTA: TFloatField
      FieldName = 'P2LISTA'
      Origin = 'SG_ASSOC.CADP02.P2LISTA'
    end
    object Tb_Ped02P2STATUS: TFloatField
      FieldName = 'P2STATUS'
      Origin = 'SG_ASSOC.CADP02.P2STATUS'
    end
    object Tb_Ped02P2PCOTAB: TFloatField
      FieldName = 'P2PCOTAB'
      Origin = 'SG_ASSOC.CADP02.P2PCOTAB'
    end
    object Tb_Ped02P2UCPR: TFloatField
      FieldName = 'P2UCPR'
      Origin = 'SG_ASSOC.CADP02.P2UCPR'
    end
    object Tb_Ped02P2PCOCUS: TFloatField
      FieldName = 'P2PCOCUS'
      Origin = 'SG_ASSOC.CADP02.P2PCOCUS'
    end
    object Tb_Ped02P2PCOMAX: TFloatField
      FieldName = 'P2PCOMAX'
      Origin = 'SG_ASSOC.CADP02.P2PCOMAX'
    end
    object Tb_Ped02P2TOTDES: TFloatField
      FieldName = 'P2TOTDES'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
    object Tb_Ped02P2DESCRAT: TFloatField
      FieldName = 'P2DESCRAT'
      Origin = 'SG_ASSOC.CADP02.P2DESCRAT'
    end
    object Tb_Ped02P2TABELA: TStringField
      FieldName = 'P2TABELA'
      Origin = 'SG_ASSOC.CADP02.P2TABELA'
      Size = 1
    end
    object Tb_Ped02P2ALIPI: TFloatField
      FieldName = 'P2ALIPI'
      Origin = 'SG_ASSOC.CADP02.P2ALIPI'
    end
    object Tb_Ped02P2VALIPI: TFloatField
      FieldName = 'P2VALIPI'
      Origin = 'SG_ASSOC.CADP02.P2VALIPI'
    end
    object Tb_Ped02P2BCINR: TFloatField
      FieldName = 'P2BCINR'
      Origin = 'SG_ASSOC.CADP02.P2BCINR'
    end
    object Tb_Ped02P2ICMSNR: TFloatField
      FieldName = 'P2ICMSNR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSNR'
    end
    object Tb_Ped02P2ISENTAS: TFloatField
      FieldName = 'P2ISENTAS'
      Origin = 'SG_ASSOC.CADP02.P2ISENTAS'
    end
    object Tb_Ped02P2TOTOUT: TFloatField
      FieldName = 'P2TOTOUT'
      Origin = 'SG_ASSOC.CADP02.P2TOTOUT'
    end
    object Tb_Ped02P2ALIQ: TFloatField
      FieldName = 'P2ALIQ'
      Origin = 'SG_ASSOC.CADP02.P2ALIQ'
    end
    object Tb_Ped02P2ALIQNR: TFloatField
      FieldName = 'P2ALIQNR'
      Origin = 'SG_ASSOC.CADP02.P2ALIQNR'
    end
    object Tb_Ped02P2PCOMIS: TFloatField
      FieldName = 'P2PCOMIS'
      Origin = 'SG_ASSOC.CADP02.P2PCOMIS'
    end
    object Tb_Ped02P2VCOMIS: TFloatField
      FieldName = 'P2VCOMIS'
      Origin = 'SG_ASSOC.CADP02.P2VCOMIS'
    end
    object Tb_Ped02P2VCOM02: TFloatField
      FieldName = 'P2VCOM02'
      Origin = 'SG_ASSOC.CADP02.P2VCOM02'
    end
    object Tb_Ped02P2VCOM03: TFloatField
      FieldName = 'P2VCOM03'
      Origin = 'SG_ASSOC.CADP02.P2VCOM03'
    end
    object Tb_Ped02P2DESCM: TFloatField
      FieldName = 'P2DESCM'
      Origin = 'SG_ASSOC.CADP02.P2DESCM'
    end
    object Tb_Ped02P2CFO: TFloatField
      FieldName = 'P2CFO'
      Origin = 'SG_ASSOC.CADP02.P2CFO'
    end
    object Tb_Ped02P2SEMCOM: TFloatField
      FieldName = 'P2SEMCOM'
      Origin = 'SG_ASSOC.CADP02.P2SEMCOM'
    end
    object Tb_Ped02P2TOTLIQ: TFloatField
      FieldName = 'P2TOTLIQ'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
    object Tb_Ped02P2PDESCF: TFloatField
      FieldName = 'P2PDESCF'
      Origin = 'SG_ASSOC.CADP02.P2PDESCF'
    end
    object Tb_Ped02P2VDESCF: TFloatField
      FieldName = 'P2VDESCF'
      Origin = 'SG_ASSOC.CADP02.P2VDESCF'
    end
    object Tb_Ped02P2ACRECONV: TFloatField
      FieldName = 'P2ACRECONV'
      Origin = 'SG_ASSOC.CADP02.P2ACRECONV'
    end
    object Tb_Ped02P2ACREGER: TFloatField
      FieldName = 'P2ACREGER'
      Origin = 'SG_ASSOC.CADP02.P2ACREGER'
    end
    object Tb_Ped02P2ID_NEW: TFloatField
      FieldName = 'P2ID_NEW'
    end
    object Tb_Ped02P2ID_PED01_NEW: TFloatField
      FieldName = 'P2ID_PED01_NEW'
    end
  end
end
