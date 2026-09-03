object Frm_Lf_CompraLegalBA: TFrm_Lf_CompraLegalBA
  Left = 342
  Top = 132
  Width = 737
  Height = 384
  Caption = 'Compra Legal (BAHIA)'
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 281
    Width = 721
    Height = 65
    Align = alBottom
    TabOrder = 1
    object bbGerar: TBitBtn
      Left = 256
      Top = 11
      Width = 145
      Height = 41
      Caption = '&Gerar'
      TabOrder = 0
      OnClick = bbGerarClick
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
      Left = 480
      Top = 11
      Width = 145
      Height = 41
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
    object bbAplicar: TBitBtn
      Left = 8
      Top = 11
      Width = 145
      Height = 41
      Caption = 'Selecionar Registros'
      TabOrder = 2
      OnClick = bbAplicarClick
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 119
    Width = 721
    Height = 162
    Align = alBottom
    TabOrder = 0
    object Label1: TLabel
      Left = 152
      Top = 11
      Width = 62
      Height = 13
      Caption = 'Periodo de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 365
      Top = 9
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
    object Label3: TLabel
      Left = 112
      Top = 27
      Width = 103
      Height = 13
      Caption = 'Nota Fiscal Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 340
      Top = 28
      Width = 96
      Height = 13
      Caption = 'Nota Fiscal Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 51
      Top = 44
      Width = 105
      Height = 13
      Caption = 'C'#243'digo do Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 2
      Top = 113
      Width = 461
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Informe a Pasta Para Gera'#231#227'o do arquivo'
      Color = 16764108
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object sbnProc: TSpeedButton
      Left = 466
      Top = 113
      Width = 32
      Height = 37
      Hint = 'Clickaqui para Procurar uma pasta'
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
      ParentShowHint = False
      ShowHint = True
      OnClick = sbnProcClick
    end
    object Label8: TLabel
      Left = 508
      Top = 114
      Width = 215
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Nome do Arquivo'
      Color = 16764108
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object MDT1: TMaskEdit
      Left = 221
      Top = 6
      Width = 88
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
      Left = 450
      Top = 6
      Width = 89
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object NumNF_I: TEdit
      Left = 221
      Top = 24
      Width = 88
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = NumNF_IExit
    end
    object NumNF_F: TEdit
      Left = 450
      Top = 24
      Width = 89
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnExit = NumNF_FExit
    end
    object CODCLI: TEdit
      Left = 163
      Top = 42
      Width = 59
      Height = 19
      Hint = 'Informe Codigo do Cliente ou'#13#10'digite o nome p/consultar'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnExit = CODCLIExit
      OnKeyPress = CODCLIKeyPress
    end
    object lbx_codcli: TListBox
      Left = 221
      Top = 42
      Width = 460
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnKeyDown = lbx_codcliKeyDown
    end
    object OMITIR_CLI: TCheckBox
      Left = 165
      Top = 64
      Width = 51
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object MPASTA: TEdit
      Left = 2
      Top = 130
      Width = 462
      Height = 21
      AutoSize = False
      TabOrder = 7
      Text = 'C:\SGE'
    end
    object NOMARQ: TEdit
      Left = 508
      Top = 130
      Width = 215
      Height = 21
      TabOrder = 8
      Text = 'COMPRALEGAL.txt'
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 721
    Height = 119
    Align = alClient
    Caption = 'Registros Selecionados'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 717
      Height = 102
      Align = alClient
      DataSource = Src_CompraLegal
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'P1NUMNF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1DATAP'
          Width = 82
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1DATANF'
          Width = 79
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1TOTALL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CRAZAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CCIDADE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2CODPRO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Visible = True
        end>
    end
  end
  object Src_CompraLegal: TDataSource
    DataSet = Qr_CompraLegal
    Left = 48
    Top = 64
  end
  object Qr_CompraLegal: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'SELECT P1NUMNF, P1SERIE, P1DATANF,P1PREVENT AS DATSAI, CIE, CUF,'
      'P2CFO, P1BASEN, P1BASER, P1ICMSR,P1TOTALL, P1VALFRE,'
      'P1VALSEG, P1TOTDES, P2VALIPI, P1TOTALB, TRIE, TRCNPJ, TRCNPF,'
      'TRRAZTRA, TRUF, TRBAIRRO, P1QTDVOL, P1ESPECIE, '
      'P1PESOB, P1PESOL, P1PLACAV, P1UFPV, TRCIDADE, P1OBS1, P1FRETEPC,'
      
        'P1PROCESSO, CCNPJ, CRAZAO, CLOG, CBAIRRO, CCEP, CFONE01,  CCIDAD' +
        'E,'
      'P2CODPRO, PDNOME, P2SIT, PDUND, P2QTD, P2TOTLIQ,P2ITEM,P1DATAP,'
      'P2ALIPI, P2ALIQ,P2PRECO,P2ALIQNR'
      
        ', P1IPIINA+P1IPIPOS+P1IPINEG  AS TOTIPI,P1ICMSN,P1TARBAN AS OUTD' +
        'ESP'
      ',P2TOTDES'
      'FROM CADP01'
      ',CADP02,CADCLI,CADTRA,CADPRO              where'
      'P2CODEMP=P1CODEMP and P2LOTSEQ=P1LOTSEQ and P2CHAVE=P1CHAVE and'
      'P2ORDEM=P1ORDEM and  CCODCLI=P1CODCLI and  TRCODTRA=P1CODTRA and'
      'PDCODPRO=P2CODPRO and   (P1STATUS<>9)'
      ' AND P1DATAP>='#39'01/09/2007'#39
      '')
    Left = 88
    Top = 32
    object Qr_CompraLegalP1NUMNF: TFloatField
      DisplayLabel = 'N'#250'mero NF'
      FieldName = 'P1NUMNF'
      Origin = 'SG_ASSOC.CADP01.P1NUMNF'
    end
    object Qr_CompraLegalP1SERIE: TStringField
      FieldName = 'P1SERIE'
      Origin = 'SG_ASSOC.CADP01.P1SERIE'
      Size = 3
    end
    object Qr_CompraLegalP1DATANF: TDateTimeField
      DisplayLabel = 'Data NF'
      FieldName = 'P1DATANF'
      Origin = 'SG_ASSOC.CADP01.P1DATANF'
    end
    object Qr_CompraLegalCIE: TStringField
      FieldName = 'CIE'
      Origin = 'SG_ASSOC.CADCLI.CIE'
      Size = 30
    end
    object Qr_CompraLegalCUF: TStringField
      FieldName = 'CUF'
      Origin = 'SG_ASSOC.CADCLI.CUF'
      Size = 2
    end
    object Qr_CompraLegalP2CFO: TFloatField
      FieldName = 'P2CFO'
      Origin = 'SG_ASSOC.CADP02.P2CFO'
    end
    object Qr_CompraLegalP1BASER: TFloatField
      FieldName = 'P1BASER'
      Origin = 'SG_ASSOC.CADP01.P1BASER'
    end
    object Qr_CompraLegalP1ICMSR: TFloatField
      FieldName = 'P1ICMSR'
      Origin = 'SG_ASSOC.CADP01.P1ICMSR'
    end
    object Qr_CompraLegalP1TOTALL: TFloatField
      DisplayLabel = 'Valor NF'
      FieldName = 'P1TOTALL'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Qr_CompraLegalP1VALFRE: TFloatField
      FieldName = 'P1VALFRE'
      Origin = 'SG_ASSOC.CADP01.P1VALFRE'
    end
    object Qr_CompraLegalP1VALSEG: TFloatField
      FieldName = 'P1VALSEG'
      Origin = 'SG_ASSOC.CADP01.P1VALSEG'
    end
    object Qr_CompraLegalP1TOTDES: TFloatField
      FieldName = 'P1TOTDES'
      Origin = 'SG_ASSOC.CADP01.P1TOTDES'
    end
    object Qr_CompraLegalP2VALIPI: TFloatField
      FieldName = 'P2VALIPI'
      Origin = 'SG_ASSOC.CADP02.P2VALIPI'
    end
    object Qr_CompraLegalP1TOTALB: TFloatField
      FieldName = 'P1TOTALB'
      Origin = 'SG_ASSOC.CADP01.P1TOTALB'
    end
    object Qr_CompraLegalTRIE: TStringField
      FieldName = 'TRIE'
      Origin = 'SG_ASSOC.CADTRA.TRIE'
    end
    object Qr_CompraLegalTRCNPJ: TFloatField
      FieldName = 'TRCNPJ'
      Origin = 'SG_ASSOC.CADTRA.TRCNPJ'
    end
    object Qr_CompraLegalTRRAZTRA: TStringField
      FieldName = 'TRRAZTRA'
      Origin = 'SG_ASSOC.CADTRA.TRRAZTRA'
      Size = 40
    end
    object Qr_CompraLegalTRUF: TStringField
      FieldName = 'TRUF'
      Origin = 'SG_ASSOC.CADTRA.TRUF'
      Size = 2
    end
    object Qr_CompraLegalTRBAIRRO: TStringField
      FieldName = 'TRBAIRRO'
      Origin = 'SG_ASSOC.CADTRA.TRBAIRRO'
      Size = 30
    end
    object Qr_CompraLegalP1QTDVOL: TFloatField
      FieldName = 'P1QTDVOL'
      Origin = 'SG_ASSOC.CADP01.P1QTDVOL'
    end
    object Qr_CompraLegalP1ESPECIE: TStringField
      FieldName = 'P1ESPECIE'
      Origin = 'SG_ASSOC.CADP01.P1ESPECIE'
    end
    object Qr_CompraLegalP1PESOB: TFloatField
      FieldName = 'P1PESOB'
      Origin = 'SG_ASSOC.CADP01.P1PESOB'
    end
    object Qr_CompraLegalP1PESOL: TFloatField
      FieldName = 'P1PESOL'
      Origin = 'SG_ASSOC.CADP01.P1PESOL'
    end
    object Qr_CompraLegalP1PLACAV: TStringField
      FieldName = 'P1PLACAV'
      Origin = 'SG_ASSOC.CADP01.P1PLACAV'
      Size = 8
    end
    object Qr_CompraLegalP1UFPV: TStringField
      FieldName = 'P1UFPV'
      Origin = 'SG_ASSOC.CADP01.P1UFPV'
      Size = 2
    end
    object Qr_CompraLegalTRCIDADE: TStringField
      FieldName = 'TRCIDADE'
      Origin = 'SG_ASSOC.CADTRA.TRCIDADE'
      Size = 30
    end
    object Qr_CompraLegalP1OBS1: TStringField
      FieldName = 'P1OBS1'
      Origin = 'SG_ASSOC.CADP01.P1OBS1'
      Size = 1000
    end
    object Qr_CompraLegalP1FRETEPC: TFloatField
      FieldName = 'P1FRETEPC'
      Origin = 'SG_ASSOC.CADP01.P1FRETEPC'
    end
    object Qr_CompraLegalP1PROCESSO: TStringField
      FieldName = 'P1PROCESSO'
      Origin = 'SG_ASSOC.CADP01.P1PROCESSO'
      Size = 15
    end
    object Qr_CompraLegalCCNPJ: TFloatField
      FieldName = 'CCNPJ'
      Origin = 'SG_ASSOC.CADCLI.CCNPJ'
    end
    object Qr_CompraLegalCRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Qr_CompraLegalCLOG: TStringField
      FieldName = 'CLOG'
      Origin = 'SG_ASSOC.CADCLI.CLOG'
      Size = 60
    end
    object Qr_CompraLegalCBAIRRO: TStringField
      FieldName = 'CBAIRRO'
      Origin = 'SG_ASSOC.CADCLI.CBAIRRO'
      Size = 30
    end
    object Qr_CompraLegalCCEP: TStringField
      FieldName = 'CCEP'
      Origin = 'SG_ASSOC.CADCLI.CCEP'
      Size = 9
    end
    object Qr_CompraLegalCFONE01: TStringField
      FieldName = 'CFONE01'
      Origin = 'SG_ASSOC.CADCLI.CFONE01'
      Size = 16
    end
    object Qr_CompraLegalCCIDADE: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CCIDADE'
      Origin = 'SG_ASSOC.CADCLI.CCIDADE'
      Size = 30
    end
    object Qr_CompraLegalP2CODPRO: TFloatField
      DisplayLabel = 'C'#243'd.Prod'
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Qr_CompraLegalPDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_CompraLegalP2SIT: TStringField
      FieldName = 'P2SIT'
      Origin = 'SG_ASSOC.CADP02.P2SIT'
      Size = 3
    end
    object Qr_CompraLegalPDUND: TStringField
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_CompraLegalP2QTD: TFloatField
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Qr_CompraLegalP2TOTLIQ: TFloatField
      FieldName = 'P2TOTLIQ'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
    object Qr_CompraLegalP2ALIPI: TFloatField
      FieldName = 'P2ALIPI'
      Origin = 'SG_ASSOC.CADP02.P2ALIPI'
    end
    object Qr_CompraLegalP2ALIQ: TFloatField
      FieldName = 'P2ALIQ'
      Origin = 'SG_ASSOC.CADP02.P2ALIQ'
    end
    object Qr_CompraLegalTOTIPI: TFloatField
      FieldName = 'TOTIPI'
      Origin = 'SG_ASSOC.CADP01.P1IPIINA'
    end
    object Qr_CompraLegalDATSAI: TDateTimeField
      FieldName = 'DATSAI'
      Origin = 'SG_ASSOC.CADP01.P1PREVENT'
    end
    object Qr_CompraLegalP1BASEN: TFloatField
      FieldName = 'P1BASEN'
      Origin = 'SG_ASSOC.CADP01.P1BASEN'
    end
    object Qr_CompraLegalP1ICMSN: TFloatField
      FieldName = 'P1ICMSN'
      Origin = 'SG_ASSOC.CADP01.P1ICMSN'
    end
    object Qr_CompraLegalP2PRECO: TFloatField
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Qr_CompraLegalOUTDESP: TFloatField
      FieldName = 'OUTDESP'
      Origin = 'SG_ASSOC.CADP01.P1TARBAN'
    end
    object Qr_CompraLegalP2TOTDES: TFloatField
      FieldName = 'P2TOTDES'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
    object Qr_CompraLegalP2ITEM: TFloatField
      FieldName = 'P2ITEM'
      Origin = 'SG_ASSOC.CADP02.P2ITEM'
    end
    object Qr_CompraLegalP1DATAP: TDateTimeField
      DisplayLabel = 'Data Pedido'
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Qr_CompraLegalP2ALIQNR: TFloatField
      FieldName = 'P2ALIQNR'
      Origin = 'SG_ASSOC.CADP02.P2ALIQNR'
    end
    object Qr_CompraLegalTRCNPF: TFloatField
      FieldName = 'TRCNPF'
      Origin = 'SG_ASSOC.CADTRA.TRCNPF'
    end
  end
end
