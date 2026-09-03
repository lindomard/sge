object Frm_PFor01_Exp: TFrm_PFor01_Exp
  Left = 6
  Top = 20
  Width = 778
  Height = 460
  Caption = 'Exporta Pedido para Gera'#231#227'o de Pedidos Eletr'#244'nicos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
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
    Width = 770
    Height = 105
    Align = alTop
    Caption = 'Filtros'
    TabOrder = 0
    object Label2: TLabel
      Left = 32
      Top = 15
      Width = 63
      Height = 13
      AutoSize = False
      Caption = 'Per'#237'odo de'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 225
      Top = 15
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
    object Label1: TLabel
      Left = 14
      Top = 33
      Width = 80
      Height = 13
      AutoSize = False
      Caption = 'Pedido Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 201
      Top = 33
      Width = 72
      Height = 13
      AutoSize = False
      Caption = 'Chave Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 22
      Top = 51
      Width = 71
      Height = 13
      AutoSize = False
      Caption = 'Fornecedor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MDT1: TMaskEdit
      Left = 100
      Top = 11
      Width = 81
      Height = 19
      Hint = 
        'Para filtrar t'#237'tulos somente a Partir de '#13#10'uma determinada data ' +
        #13#10'digite a mesma.'
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 275
      Top = 11
      Width = 80
      Height = 19
      Hint = 
        'Para filtrar t'#237'tulos at'#233' '#13#10'uma determinada data '#13#10'digite a mesma' +
        '.'
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object MCHAVEI: TEdit
      Left = 100
      Top = 29
      Width = 81
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = MCHAVEIExit
    end
    object MCHAVEF: TEdit
      Left = 275
      Top = 29
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnExit = MCHAVEFExit
    end
    object CODFOR: TEdit
      Left = 100
      Top = 47
      Width = 81
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = CODFORExit
      OnKeyPress = CODFORKeyPress
    end
    object NOMFOR: TEdit
      Left = 180
      Top = 47
      Width = 386
      Height = 19
      TabStop = False
      Color = 16777107
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
      OnExit = MCHAVEIExit
    end
    object RG_TIPOTXTXML: TRadioGroup
      Left = 583
      Top = 13
      Width = 178
      Height = 57
      Caption = 'Tipo Exporta'#231#227'o'
      ItemIndex = 0
      Items.Strings = (
        'TXT(SGE_COMMERCE)'
        'XML(SGE_COMMERCE)')
      TabOrder = 6
    end
    object bbAplicar: TBitBtn
      Left = 254
      Top = 73
      Width = 182
      Height = 25
      Caption = 'Aplicar'
      TabOrder = 7
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
    object STG_LAYOUT: TStringGrid
      Left = 415
      Top = 60
      Width = 320
      Height = 94
      ColCount = 10
      DefaultRowHeight = 15
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      TabOrder = 8
      Visible = False
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 105
    Width = 770
    Height = 105
    Align = alTop
    Caption = 'Pedidos'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 766
      Height = 88
      Align = alClient
      DataSource = Src_Pfor01
      FixedColor = 16759739
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'NUMPED_ORI'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATAPED_ORI'
          Title.Alignment = taCenter
          Width = 72
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FRAZAO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FCIDADE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FUF'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF1TOTLIQ'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF1NUMNF'
          Title.Alignment = taCenter
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF1LOTSEQ'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FCGC'
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 210
    Width = 770
    Height = 138
    Align = alClient
    Caption = 'Mercadorias'
    TabOrder = 2
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 766
      Height = 121
      Align = alClient
      DataSource = Src_PFor02
      FixedColor = 4227327
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'CODPRO_ORI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2NOMPRO'
          Title.Caption = 'Nome do Produto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDMARCA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDUND'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2DESC01'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2DESC02'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2DESC03'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2PU'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PF2LOTSEQ'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cnpj_cli'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NUMPED_ORI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ITEM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODPRO_BARRAS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODPRO_FOR'
          Visible = True
        end>
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 348
    Width = 770
    Height = 81
    Align = alBottom
    TabOrder = 3
    object Label6: TLabel
      Left = 2
      Top = 6
      Width = 500
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
    object Label7: TLabel
      Left = 551
      Top = 7
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
    object sbnProc: TSpeedButton
      Left = 503
      Top = 6
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
    object bbSair: TBitBtn
      Left = 459
      Top = 49
      Width = 182
      Height = 25
      Caption = 'Sair'
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
    object bbExportar: TBitBtn
      Left = 89
      Top = 49
      Width = 182
      Height = 25
      Caption = 'Exportar'
      TabOrder = 2
      OnClick = bbExportarClick
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
    object MPASTA: TEdit
      Left = 2
      Top = 23
      Width = 500
      Height = 21
      TabOrder = 0
      Text = 'C:\SGE'
    end
    object NOMARQ: TEdit
      Left = 552
      Top = 23
      Width = 213
      Height = 21
      TabOrder = 1
      Text = 'PEDIDO.TXT'
    end
  end
  object Qr_PFor01: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select 005 AS TIPO_REG,PF1CHAVE as NUMPED_ORI'
      ',PF1DATA as DATAPED_ORI,PF1TOTLIQ'
      'PF1CODFOR'
      
        ',PF1CODEMP,PF1LOTSEQ,PF1NUMNF,FRAZAO,FCGC ,FCIDADE,FUF,PF1SUBMOD' +
        ',PF1OBS from'
      'CADPF1,CADFOR where PF1CHAVE is null'
      'and FCODFOR=PF1CODFOR')
    Left = 32
    Top = 40
    object Qr_PFor01PF1TOTLIQ: TFloatField
      DisplayLabel = 'Valor Total'
      FieldName = 'PF1TOTLIQ'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTLIQ'
    end
    object Qr_PFor01FRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'FRAZAO'
      Origin = 'SG_ASSOC.CADFOR.FRAZAO'
      Size = 40
    end
    object Qr_PFor01PF1LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'PF1LOTSEQ'
      Origin = 'SG_ASSOC.CADPF1.PF1LOTSEQ'
    end
    object Qr_PFor01PF1NUMNF: TFloatField
      DisplayLabel = 'N'#250'mero NF'
      FieldName = 'PF1NUMNF'
      Origin = 'SG_ASSOC.CADPF1.PF1NUMNF'
    end
    object Qr_PFor01FCGC: TFloatField
      FieldName = 'FCGC'
      Origin = 'SG_ASSOC.CADFOR.FCGC'
    end
    object Qr_PFor01PF1CODEMP: TFloatField
      FieldName = 'PF1CODEMP'
      Origin = 'SG_ASSOC.CADPF1.PF1CODEMP'
    end
    object Qr_PFor01FCIDADE: TStringField
      FieldName = 'FCIDADE'
      Origin = 'SG_ASSOC.CADFOR.FCIDADE'
      Size = 30
    end
    object Qr_PFor01FUF: TStringField
      FieldName = 'FUF'
      Origin = 'SG_ASSOC.CADFOR.FUF'
      Size = 2
    end
    object Qr_PFor01PF1CODFOR: TFloatField
      FieldName = 'PF1CODFOR'
      Origin = 'SG_ASSOC.CADPF1.PF1TOTLIQ'
    end
    object Qr_PFor01PF1SUBMOD: TStringField
      FieldName = 'PF1SUBMOD'
      Origin = 'SG_ASSOC.CADPF1.PF1SUBMOD'
      Size = 3
    end
    object Qr_PFor01cnpj_cli: TFloatField
      FieldKind = fkCalculated
      FieldName = 'cnpj_cli'
      Calculated = True
    end
    object Qr_PFor01TIPO_REG: TFloatField
      DisplayLabel = 'Tipo do Registro'
      FieldName = 'TIPO_REG'
    end
    object Qr_PFor01NUMPED_ORI: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'NUMPED_ORI'
    end
    object Qr_PFor01DATAPED_ORI: TDateTimeField
      DisplayLabel = 'Data Pedido'
      FieldName = 'DATAPED_ORI'
    end
    object Qr_PFor01PF1OBS: TMemoField
      FieldName = 'PF1OBS'
      BlobType = ftMemo
      Size = 300
    end
  end
  object Src_Pfor01: TDataSource
    DataSet = Qr_PFor01
    OnDataChange = Src_Pfor01DataChange
    Left = 80
    Top = 16
  end
  object Qr_Pfor02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select PF2CODEMP,'
      '      PF2LOTSEQ,'
      '      PF2CHAVE AS NUMPED_ORI,'
      '      PF2ITEM AS ITEM,'
      '      PF2CODPRO AS CODPRO_ORI,'
      '      PF2LOTE,'
      '      PF2DATAV,'
      '      PF2QTDP AS QUANTIDADE,'
      '      PF2DESC01,'
      '      PF2DESC02,'
      '      PF2DESC03,'
      '      PF2PU'
      '      ,PF2NOMPRO,PDMARCA'
      '      ,PDUND'
      '      ,PDCODBAR AS CODPRO_BARRAS'
      '      ,PFCODPFORN AS CODPRO_FOR'
      'from CADPF2,CADPRO,CODPFOR where'
      'PF2CODEMP=0'
      'AND PF2CHAVE=0'
      'AND PDCODPRO=PF2CODPRO'
      'AND PFCODPFOR(+)=PF2CODPRO')
    Left = 352
    Top = 96
    object Qr_Pfor02PF2CODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'PF2CODEMP'
      Origin = 'SG_ASSOC.CADPF2.PF2CODEMP'
    end
    object Qr_Pfor02PF2LOTE: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'PF2LOTE'
      Origin = 'SG_ASSOC.CADPF2.PF2LOTE'
    end
    object Qr_Pfor02PF2DATAV: TDateTimeField
      DisplayLabel = 'Data Vcto'
      FieldName = 'PF2DATAV'
      Origin = 'SG_ASSOC.CADPF2.PF2DATAV'
    end
    object Qr_Pfor02PF2DESC01: TFloatField
      DisplayLabel = '% Desc.01'
      FieldName = 'PF2DESC01'
      Origin = 'SG_ASSOC.CADPF2.PF2DESC01'
    end
    object Qr_Pfor02PF2DESC02: TFloatField
      DisplayLabel = '% Desc.02'
      FieldName = 'PF2DESC02'
      Origin = 'SG_ASSOC.CADPF2.PF2DESC02'
    end
    object Qr_Pfor02PF2DESC03: TFloatField
      DisplayLabel = '% Desc.03'
      FieldName = 'PF2DESC03'
      Origin = 'SG_ASSOC.CADPF2.PF2DESC03'
    end
    object Qr_Pfor02PF2PU: TFloatField
      DisplayLabel = 'Pco.Unit.'
      FieldName = 'PF2PU'
      Origin = 'SG_ASSOC.CADPF2.PF2PU'
    end
    object Qr_Pfor02PDMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'PDMARCA'
      Origin = 'SG_ASSOC.CADPRO.PDMARCA'
    end
    object Qr_Pfor02PDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_Pfor02PF2LOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'PF2LOTSEQ'
      Origin = 'SG_ASSOC.CADPF2.PF2LOTSEQ'
    end
    object Qr_Pfor02cnpj_cli: TStringField
      DisplayLabel = 'CNPJ Cliente'
      FieldKind = fkCalculated
      FieldName = 'cnpj_cli'
      Calculated = True
    end
    object Qr_Pfor02NUMPED_ORI: TFloatField
      DisplayLabel = 'Num.Ped.Ori'
      FieldName = 'NUMPED_ORI'
    end
    object Qr_Pfor02ITEM: TFloatField
      DisplayLabel = 'Item'
      FieldName = 'ITEM'
    end
    object Qr_Pfor02CODPRO_ORI: TFloatField
      DisplayLabel = 'C'#243'd.Pro.Ori'
      FieldName = 'CODPRO_ORI'
    end
    object Qr_Pfor02QUANTIDADE: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
    end
    object Qr_Pfor02CODPRO_BARRAS: TFloatField
      DisplayLabel = 'C'#243'digo de Barras'
      FieldName = 'CODPRO_BARRAS'
    end
    object Qr_Pfor02CODPRO_FOR: TStringField
      DisplayLabel = 'C'#243'd.Pro.Fornec'
      FieldName = 'CODPRO_FOR'
    end
    object Qr_Pfor02PF2NOMPRO: TStringField
      FieldName = 'PF2NOMPRO'
      Size = 120
    end
  end
  object Src_PFor02: TDataSource
    DataSet = Qr_Pfor02
    Left = 432
    Top = 96
  end
  object Table1: TTable
    DatabaseName = 'C:\SGE\TEMP'
    FieldDefs = <
      item
        Name = 'P2CODEMP'
        DataType = ftFloat
      end
      item
        Name = 'P2LOTSEQ'
        DataType = ftFloat
      end
      item
        Name = 'P2CHAVE'
        DataType = ftFloat
      end
      item
        Name = 'P2ORDEM'
        DataType = ftFloat
      end
      item
        Name = 'P2ITEM'
        DataType = ftFloat
      end
      item
        Name = 'P2CODPRO'
        DataType = ftFloat
      end
      item
        Name = 'P2CODANT'
        DataType = ftFloat
      end
      item
        Name = 'P2QTD'
        DataType = ftFloat
      end
      item
        Name = 'P2QTDDEV'
        DataType = ftFloat
      end
      item
        Name = 'P2LOTE'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'P2PROMOCAO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'P2DTVCTO'
        DataType = ftDateTime
      end
      item
        Name = 'P2DESC1'
        DataType = ftFloat
      end
      item
        Name = 'P2DESC2'
        DataType = ftFloat
      end
      item
        Name = 'P2VALDES'
        DataType = ftFloat
      end
      item
        Name = 'P2PRECO'
        DataType = ftFloat
      end
      item
        Name = 'P2SIT'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'P2CODFAB'
        DataType = ftFloat
      end
      item
        Name = 'P2BASEN'
        DataType = ftFloat
      end
      item
        Name = 'P2ICMSN'
        DataType = ftFloat
      end
      item
        Name = 'P2REPAS'
        DataType = ftFloat
      end
      item
        Name = 'P2BASER'
        DataType = ftFloat
      end
      item
        Name = 'P2ICMSR'
        DataType = ftFloat
      end
      item
        Name = 'P2LISTA'
        DataType = ftFloat
      end
      item
        Name = 'P2STATUS'
        DataType = ftFloat
      end
      item
        Name = 'P2PCOTAB'
        DataType = ftFloat
      end
      item
        Name = 'P2UCPR'
        DataType = ftFloat
      end
      item
        Name = 'P2PCOCUS'
        DataType = ftFloat
      end
      item
        Name = 'P2PCOMAX'
        DataType = ftFloat
      end
      item
        Name = 'P2TOTDES'
        DataType = ftFloat
      end
      item
        Name = 'P2DESCRAT'
        DataType = ftFloat
      end
      item
        Name = 'P2TABELA'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'P2ALIPI'
        DataType = ftFloat
      end
      item
        Name = 'P2VALIPI'
        DataType = ftFloat
      end
      item
        Name = 'P2BCINR'
        DataType = ftFloat
      end
      item
        Name = 'P2ICMSNR'
        DataType = ftFloat
      end
      item
        Name = 'P2ISENTAS'
        DataType = ftFloat
      end
      item
        Name = 'P2TOTOUT'
        DataType = ftFloat
      end
      item
        Name = 'P2ALIQ'
        DataType = ftFloat
      end
      item
        Name = 'P2ALIQNR'
        DataType = ftFloat
      end
      item
        Name = 'P2PCOMIS'
        DataType = ftFloat
      end
      item
        Name = 'P2VCOMIS'
        DataType = ftFloat
      end
      item
        Name = 'P2VCOM02'
        DataType = ftFloat
      end
      item
        Name = 'P2VCOM03'
        DataType = ftFloat
      end
      item
        Name = 'P2DESCM'
        DataType = ftFloat
      end
      item
        Name = 'P2CFO'
        DataType = ftFloat
      end
      item
        Name = 'P2SEMCOM'
        DataType = ftFloat
      end
      item
        Name = 'P2TOTLIQ'
        DataType = ftFloat
      end
      item
        Name = 'P2PDESCF'
        DataType = ftFloat
      end
      item
        Name = 'P2VDESCF'
        DataType = ftFloat
      end
      item
        Name = 'P2ACRECONV'
        DataType = ftFloat
      end
      item
        Name = 'P2ACREGER'
        DataType = ftFloat
      end
      item
        Name = 'P2DESC3'
        DataType = ftFloat
      end
      item
        Name = 'P2CODGRU'
        DataType = ftFloat
      end
      item
        Name = 'P2VCOM04'
        DataType = ftFloat
      end
      item
        Name = 'P2ACRERAT'
        DataType = ftFloat
      end
      item
        Name = 'P2QTD_101'
        DataType = ftFloat
      end
      item
        Name = 'P2QTDDEV_101'
        DataType = ftFloat
      end
      item
        Name = 'P2LOTE_101'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'P2PROMOCAO_101'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'P2DTVCTO_101'
        DataType = ftDateTime
      end
      item
        Name = 'P2VALDES_101'
        DataType = ftFloat
      end
      item
        Name = 'P2BASEN_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ICMSN_101'
        DataType = ftFloat
      end
      item
        Name = 'P2REPAS_101'
        DataType = ftFloat
      end
      item
        Name = 'P2BASER_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ICMSR_101'
        DataType = ftFloat
      end
      item
        Name = 'P2TOTDES_101'
        DataType = ftFloat
      end
      item
        Name = 'P2DESCRAT_101'
        DataType = ftFloat
      end
      item
        Name = 'P2VALIPI_101'
        DataType = ftFloat
      end
      item
        Name = 'P2BCINR_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ICMSNR_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ISENTAS_101'
        DataType = ftFloat
      end
      item
        Name = 'P2TOTOUT_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ALIQ_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ALIQNR_101'
        DataType = ftFloat
      end
      item
        Name = 'P2VCOMIS_101'
        DataType = ftFloat
      end
      item
        Name = 'P2VCOM02_101'
        DataType = ftFloat
      end
      item
        Name = 'P2VCOM03_101'
        DataType = ftFloat
      end
      item
        Name = 'P2DESCM_101'
        DataType = ftFloat
      end
      item
        Name = 'P2SEMCOM_101'
        DataType = ftFloat
      end
      item
        Name = 'P2TOTLIQ_101'
        DataType = ftFloat
      end
      item
        Name = 'P2VDESCF_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ACRECONV_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ACREGER_101'
        DataType = ftFloat
      end
      item
        Name = 'P2VCOM04_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ACRERAT_101'
        DataType = ftFloat
      end
      item
        Name = 'P2PRECO_101'
        DataType = ftFloat
      end
      item
        Name = 'NOMEPRO'
        DataType = ftString
        Size = 53
      end
      item
        Name = 'NOMEPRO2'
        DataType = ftString
        Size = 53
      end
      item
        Name = 'MARCAPRO'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'SECAOPRO'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DESCALTER'
        DataType = ftMemo
        Size = 10
      end
      item
        Name = 'BAIXADO'
        DataType = ftInteger
      end
      item
        Name = 'UNDPRO'
        DataType = ftString
        Size = 3
      end
      item
        Name = 'P2CFO_101'
        DataType = ftFloat
      end
      item
        Name = 'P2AMBIENTE'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'P2QTD_ENTREGUE'
        DataType = ftFloat
      end
      item
        Name = 'P2QTD_ENTREGANDO'
        DataType = ftFloat
      end
      item
        Name = 'P2VCOMIS_EXTRA'
        DataType = ftFloat
      end
      item
        Name = 'P2QTD_ENTREGUE_101'
        DataType = ftFloat
      end
      item
        Name = 'P2QTD_ENTREGANDO_101'
        DataType = ftFloat
      end
      item
        Name = 'P2PCOMIS_EXTRA'
        DataType = ftFloat
      end
      item
        Name = 'P2PCOFPG'
        DataType = ftFloat
      end
      item
        Name = 'P2VCOMIS_EXTRA_101'
        DataType = ftFloat
      end
      item
        Name = 'P2CFOSUBECF'
        DataType = ftFloat
      end
      item
        Name = 'P2CFOSUBECF_101'
        DataType = ftFloat
      end
      item
        Name = 'P2CONSIG'
        DataType = ftFloat
      end
      item
        Name = 'P2CODAGRU'
        DataType = ftFloat
      end
      item
        Name = 'P2PCOM02'
        DataType = ftFloat
      end
      item
        Name = 'P2ST_IVA'
        DataType = ftFloat
      end
      item
        Name = 'P2ST_REDUT'
        DataType = ftFloat
      end
      item
        Name = 'P2ST_ICMCRED'
        DataType = ftFloat
      end
      item
        Name = 'P2ST_ICMDEB'
        DataType = ftFloat
      end
      item
        Name = 'P2REDUTICM'
        DataType = ftFloat
      end
      item
        Name = 'P2ST_IVA_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ST_REDUT_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ST_ICMCRED_101'
        DataType = ftFloat
      end
      item
        Name = 'P2ST_ICMDEB_101'
        DataType = ftFloat
      end
      item
        Name = 'P2REDUTICM_101'
        DataType = ftFloat
      end
      item
        Name = 'P2PRAZO'
        DataType = ftFloat
      end>
    StoreDefs = True
    TableName = 'TEM00000.DB'
    Left = 288
    Top = 8
    object Table1P2CODEMP: TFloatField
      FieldName = 'P2CODEMP'
    end
    object Table1P2LOTSEQ: TFloatField
      FieldName = 'P2LOTSEQ'
    end
    object Table1P2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
    end
    object Table1P2ORDEM: TFloatField
      FieldName = 'P2ORDEM'
    end
    object Table1P2ITEM: TFloatField
      FieldName = 'P2ITEM'
    end
    object Table1P2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
    end
    object Table1P2CODANT: TFloatField
      FieldName = 'P2CODANT'
    end
    object Table1P2QTD: TFloatField
      FieldName = 'P2QTD'
    end
    object Table1P2QTDDEV: TFloatField
      FieldName = 'P2QTDDEV'
    end
    object Table1P2LOTE: TStringField
      FieldName = 'P2LOTE'
    end
    object Table1P2PROMOCAO: TStringField
      FieldName = 'P2PROMOCAO'
      Size = 10
    end
    object Table1P2DTVCTO: TDateTimeField
      FieldName = 'P2DTVCTO'
    end
    object Table1P2DESC1: TFloatField
      FieldName = 'P2DESC1'
    end
    object Table1P2DESC2: TFloatField
      FieldName = 'P2DESC2'
    end
    object Table1P2VALDES: TFloatField
      FieldName = 'P2VALDES'
    end
    object Table1P2PRECO: TFloatField
      FieldName = 'P2PRECO'
    end
    object Table1P2SIT: TStringField
      FieldName = 'P2SIT'
      Size = 3
    end
    object Table1P2CODFAB: TFloatField
      FieldName = 'P2CODFAB'
    end
    object Table1P2BASEN: TFloatField
      FieldName = 'P2BASEN'
    end
    object Table1P2ICMSN: TFloatField
      FieldName = 'P2ICMSN'
    end
    object Table1P2REPAS: TFloatField
      FieldName = 'P2REPAS'
    end
    object Table1P2BASER: TFloatField
      FieldName = 'P2BASER'
    end
    object Table1P2ICMSR: TFloatField
      FieldName = 'P2ICMSR'
    end
    object Table1P2LISTA: TFloatField
      FieldName = 'P2LISTA'
    end
    object Table1P2STATUS: TFloatField
      FieldName = 'P2STATUS'
    end
    object Table1P2PCOTAB: TFloatField
      FieldName = 'P2PCOTAB'
    end
    object Table1P2UCPR: TFloatField
      FieldName = 'P2UCPR'
    end
    object Table1P2PCOCUS: TFloatField
      FieldName = 'P2PCOCUS'
    end
    object Table1P2PCOMAX: TFloatField
      FieldName = 'P2PCOMAX'
    end
    object Table1P2TOTDES: TFloatField
      FieldName = 'P2TOTDES'
    end
    object Table1P2DESCRAT: TFloatField
      FieldName = 'P2DESCRAT'
    end
    object Table1P2TABELA: TStringField
      FieldName = 'P2TABELA'
      Size = 1
    end
    object Table1P2ALIPI: TFloatField
      FieldName = 'P2ALIPI'
    end
    object Table1P2VALIPI: TFloatField
      FieldName = 'P2VALIPI'
    end
    object Table1P2BCINR: TFloatField
      FieldName = 'P2BCINR'
    end
    object Table1P2ICMSNR: TFloatField
      FieldName = 'P2ICMSNR'
    end
    object Table1P2ISENTAS: TFloatField
      FieldName = 'P2ISENTAS'
    end
    object Table1P2TOTOUT: TFloatField
      FieldName = 'P2TOTOUT'
    end
    object Table1P2ALIQ: TFloatField
      FieldName = 'P2ALIQ'
    end
    object Table1P2ALIQNR: TFloatField
      FieldName = 'P2ALIQNR'
    end
    object Table1P2PCOMIS: TFloatField
      FieldName = 'P2PCOMIS'
    end
    object Table1P2VCOMIS: TFloatField
      FieldName = 'P2VCOMIS'
    end
    object Table1P2VCOM02: TFloatField
      FieldName = 'P2VCOM02'
    end
    object Table1P2VCOM03: TFloatField
      FieldName = 'P2VCOM03'
    end
    object Table1P2DESCM: TFloatField
      FieldName = 'P2DESCM'
    end
    object Table1P2CFO: TFloatField
      FieldName = 'P2CFO'
    end
    object Table1P2SEMCOM: TFloatField
      FieldName = 'P2SEMCOM'
    end
    object Table1P2TOTLIQ: TFloatField
      FieldName = 'P2TOTLIQ'
    end
    object Table1P2PDESCF: TFloatField
      FieldName = 'P2PDESCF'
    end
    object Table1P2VDESCF: TFloatField
      FieldName = 'P2VDESCF'
    end
    object Table1P2ACRECONV: TFloatField
      FieldName = 'P2ACRECONV'
    end
    object Table1P2ACREGER: TFloatField
      FieldName = 'P2ACREGER'
    end
    object Table1P2DESC3: TFloatField
      FieldName = 'P2DESC3'
    end
    object Table1P2CODGRU: TFloatField
      FieldName = 'P2CODGRU'
    end
    object Table1P2VCOM04: TFloatField
      FieldName = 'P2VCOM04'
    end
    object Table1P2ACRERAT: TFloatField
      FieldName = 'P2ACRERAT'
    end
    object Table1P2QTD_101: TFloatField
      FieldName = 'P2QTD_101'
    end
    object Table1P2QTDDEV_101: TFloatField
      FieldName = 'P2QTDDEV_101'
    end
    object Table1P2LOTE_101: TStringField
      FieldName = 'P2LOTE_101'
    end
    object Table1P2PROMOCAO_101: TStringField
      FieldName = 'P2PROMOCAO_101'
      Size = 10
    end
    object Table1P2DTVCTO_101: TDateTimeField
      FieldName = 'P2DTVCTO_101'
    end
    object Table1P2VALDES_101: TFloatField
      FieldName = 'P2VALDES_101'
    end
    object Table1P2BASEN_101: TFloatField
      FieldName = 'P2BASEN_101'
    end
    object Table1P2ICMSN_101: TFloatField
      FieldName = 'P2ICMSN_101'
    end
    object Table1P2REPAS_101: TFloatField
      FieldName = 'P2REPAS_101'
    end
    object Table1P2BASER_101: TFloatField
      FieldName = 'P2BASER_101'
    end
    object Table1P2ICMSR_101: TFloatField
      FieldName = 'P2ICMSR_101'
    end
    object Table1P2TOTDES_101: TFloatField
      FieldName = 'P2TOTDES_101'
    end
    object Table1P2DESCRAT_101: TFloatField
      FieldName = 'P2DESCRAT_101'
    end
    object Table1P2VALIPI_101: TFloatField
      FieldName = 'P2VALIPI_101'
    end
    object Table1P2BCINR_101: TFloatField
      FieldName = 'P2BCINR_101'
    end
    object Table1P2ICMSNR_101: TFloatField
      FieldName = 'P2ICMSNR_101'
    end
    object Table1P2ISENTAS_101: TFloatField
      FieldName = 'P2ISENTAS_101'
    end
    object Table1P2TOTOUT_101: TFloatField
      FieldName = 'P2TOTOUT_101'
    end
    object Table1P2ALIQ_101: TFloatField
      FieldName = 'P2ALIQ_101'
    end
    object Table1P2ALIQNR_101: TFloatField
      FieldName = 'P2ALIQNR_101'
    end
    object Table1P2VCOMIS_101: TFloatField
      FieldName = 'P2VCOMIS_101'
    end
    object Table1P2VCOM02_101: TFloatField
      FieldName = 'P2VCOM02_101'
    end
    object Table1P2VCOM03_101: TFloatField
      FieldName = 'P2VCOM03_101'
    end
    object Table1P2DESCM_101: TFloatField
      FieldName = 'P2DESCM_101'
    end
    object Table1P2SEMCOM_101: TFloatField
      FieldName = 'P2SEMCOM_101'
    end
    object Table1P2TOTLIQ_101: TFloatField
      FieldName = 'P2TOTLIQ_101'
    end
    object Table1P2VDESCF_101: TFloatField
      FieldName = 'P2VDESCF_101'
    end
    object Table1P2ACRECONV_101: TFloatField
      FieldName = 'P2ACRECONV_101'
    end
    object Table1P2ACREGER_101: TFloatField
      FieldName = 'P2ACREGER_101'
    end
    object Table1P2VCOM04_101: TFloatField
      FieldName = 'P2VCOM04_101'
    end
    object Table1P2ACRERAT_101: TFloatField
      FieldName = 'P2ACRERAT_101'
    end
    object Table1P2PRECO_101: TFloatField
      FieldName = 'P2PRECO_101'
    end
    object Table1NOMEPRO: TStringField
      FieldName = 'NOMEPRO'
      Size = 53
    end
    object Table1NOMEPRO2: TStringField
      FieldName = 'NOMEPRO2'
      Size = 53
    end
    object Table1MARCAPRO: TStringField
      FieldName = 'MARCAPRO'
      Size = 40
    end
    object Table1SECAOPRO: TStringField
      FieldName = 'SECAOPRO'
      Size = 10
    end
    object Table1DESCALTER: TMemoField
      FieldName = 'DESCALTER'
      BlobType = ftMemo
      Size = 10
    end
    object Table1BAIXADO: TIntegerField
      FieldName = 'BAIXADO'
    end
    object Table1UNDPRO: TStringField
      FieldName = 'UNDPRO'
      Size = 3
    end
    object Table1P2CFO_101: TFloatField
      FieldName = 'P2CFO_101'
    end
    object Table1P2AMBIENTE: TStringField
      FieldName = 'P2AMBIENTE'
      Size = 30
    end
    object Table1P2QTD_ENTREGUE: TFloatField
      FieldName = 'P2QTD_ENTREGUE'
    end
    object Table1P2QTD_ENTREGANDO: TFloatField
      FieldName = 'P2QTD_ENTREGANDO'
    end
    object Table1P2VCOMIS_EXTRA: TFloatField
      FieldName = 'P2VCOMIS_EXTRA'
    end
    object Table1P2QTD_ENTREGUE_101: TFloatField
      FieldName = 'P2QTD_ENTREGUE_101'
    end
    object Table1P2QTD_ENTREGANDO_101: TFloatField
      FieldName = 'P2QTD_ENTREGANDO_101'
    end
    object Table1P2PCOMIS_EXTRA: TFloatField
      FieldName = 'P2PCOMIS_EXTRA'
    end
    object Table1P2PCOFPG: TFloatField
      FieldName = 'P2PCOFPG'
    end
    object Table1P2VCOMIS_EXTRA_101: TFloatField
      FieldName = 'P2VCOMIS_EXTRA_101'
    end
    object Table1P2CFOSUBECF: TFloatField
      FieldName = 'P2CFOSUBECF'
    end
    object Table1P2CFOSUBECF_101: TFloatField
      FieldName = 'P2CFOSUBECF_101'
    end
    object Table1P2CONSIG: TFloatField
      FieldName = 'P2CONSIG'
    end
    object Table1P2CODAGRU: TFloatField
      FieldName = 'P2CODAGRU'
    end
    object Table1P2PCOM02: TFloatField
      FieldName = 'P2PCOM02'
    end
    object Table1P2ST_IVA: TFloatField
      FieldName = 'P2ST_IVA'
    end
    object Table1P2ST_REDUT: TFloatField
      FieldName = 'P2ST_REDUT'
    end
    object Table1P2ST_ICMCRED: TFloatField
      FieldName = 'P2ST_ICMCRED'
    end
    object Table1P2ST_ICMDEB: TFloatField
      FieldName = 'P2ST_ICMDEB'
    end
    object Table1P2REDUTICM: TFloatField
      FieldName = 'P2REDUTICM'
    end
    object Table1P2ST_IVA_101: TFloatField
      FieldName = 'P2ST_IVA_101'
    end
    object Table1P2ST_REDUT_101: TFloatField
      FieldName = 'P2ST_REDUT_101'
    end
    object Table1P2ST_ICMCRED_101: TFloatField
      FieldName = 'P2ST_ICMCRED_101'
    end
    object Table1P2ST_ICMDEB_101: TFloatField
      FieldName = 'P2ST_ICMDEB_101'
    end
    object Table1P2REDUTICM_101: TFloatField
      FieldName = 'P2REDUTICM_101'
    end
    object Table1P2PRAZO: TFloatField
      FieldName = 'P2PRAZO'
    end
  end
end
