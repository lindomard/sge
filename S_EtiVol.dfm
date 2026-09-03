object Frm_EtiVol: TFrm_EtiVol
  Left = 103
  Top = 118
  Width = 649
  Height = 396
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Etiquetas dos Volumes'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 633
    Height = 91
    Align = alTop
    TabOrder = 0
    object Label4: TLabel
      Left = 267
      Top = 35
      Width = 6
      Height = 13
      Caption = #224
    end
    object Label1: TLabel
      Left = 107
      Top = 38
      Width = 66
      Height = 13
      Caption = 'Pedido Inicial:'
    end
    object Label2: TLabel
      Left = 134
      Top = 15
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label3: TLabel
      Left = 267
      Top = 17
      Width = 6
      Height = 13
      Caption = #224
    end
    object CB_PEND: TCheckBox
      Left = 378
      Top = 36
      Width = 166
      Height = 17
      Caption = 'Emitir Somente as Pendentes'
      Checked = True
      State = cbChecked
      TabOrder = 4
    end
    object PEDF: TEdit
      Left = 286
      Top = 34
      Width = 82
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnExit = PEDFExit
    end
    object PEDI: TEdit
      Left = 178
      Top = 33
      Width = 82
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = PEDIExit
    end
    object MDT1: TMaskEdit
      Left = 179
      Top = 13
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
      Left = 286
      Top = 13
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
    object bbEmitir: TBitBtn
      Left = 268
      Top = 62
      Width = 121
      Height = 25
      Caption = 'Emitir'
      TabOrder = 6
      OnClick = bbEmitirClick
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
    object bbSair: TBitBtn
      Left = 493
      Top = 61
      Width = 121
      Height = 25
      Caption = '&Sair'
      TabOrder = 7
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
    object bbSelecionar: TBitBtn
      Left = 41
      Top = 62
      Width = 121
      Height = 25
      Caption = '&Selecionar'
      TabOrder = 5
      OnClick = bbSelecionarClick
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
    object Edit1: TEdit
      Left = 464
      Top = 8
      Width = 121
      Height = 21
      TabOrder = 8
      Text = '12'
      Visible = False
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 91
    Width = 633
    Height = 267
    Align = alClient
    Caption = 'Pedidos a Serem Emitidos:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 629
      Height = 250
      Align = alClient
      DataSource = Src_Ped
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'P1CODCLI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1CHAVE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1DATAP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1NUMNF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1QTDVOL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRAZAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CLOG'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CBAIRRO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CCIDADE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CUF'
          Visible = True
        end>
    end
  end
  object Qr_Ped: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P1CODCLI,P1LOTSEQ,P1CHAVE,P1DATAP,P1NUMNF,P1CODEMP,'
      '           P1QTDVOL,P1ETIVOL,CRAZAO,CLOG,CBAIRRO,'
      '           CCIDADE,CUF'
      'from CADP01,CADCLI where '
      'P1CODEMP is null'
      'and CCODCLI=P1CODCLI')
    Left = 400
    Top = 64
    object Qr_PedP1CODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Qr_PedP1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Qr_PedP1NUMNF: TFloatField
      DisplayLabel = 'Numero Nf'
      FieldName = 'P1NUMNF'
      Origin = 'SG_ASSOC.CADP01.P1NUMNF'
    end
    object Qr_PedP1QTDVOL: TFloatField
      DisplayLabel = 'Qtd.Volumes'
      FieldName = 'P1QTDVOL'
      Origin = 'SG_ASSOC.CADP01.P1QTDVOL'
    end
    object Qr_PedCRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_PedCLOG: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'CLOG'
      Origin = 'SG_ASSOC.CADCLI.CLOG'
      Size = 40
    end
    object Qr_PedCBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'CBAIRRO'
      Origin = 'SG_ASSOC.CADCLI.CBAIRRO'
      Size = 30
    end
    object Qr_PedCCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Qr_PedCUF: TStringField
      DisplayLabel = 'UF'
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Qr_PedP1DATAP: TDateTimeField
      DisplayLabel = 'Data Pedido'
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Qr_PedP1ETIVOL: TFloatField
      FieldName = 'P1ETIVOL'
      Origin = 'SG_ASSOC.CADP01.P1ETIVOL'
    end
    object Qr_PedP1CODEMP: TFloatField
      FieldName = 'P1CODEMP'
      Origin = 'SG_ASSOC.CADP01.P1CODEMP'
    end
    object Qr_PedP1LOTSEQ: TFloatField
      FieldName = 'P1LOTSEQ'
      Origin = 'SG_ASSOC.CADP01.P1LOTSEQ'
    end
  end
  object Src_Ped: TDataSource
    DataSet = Qr_Ped
    Left = 432
    Top = 58
  end
end
