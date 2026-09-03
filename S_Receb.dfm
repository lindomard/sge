object Frm_Receb: TFrm_Receb
  Left = 6
  Top = 26
  Width = 791
  Height = 540
  Caption = 'Caixa'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 80
    Width = 665
    Height = 422
    Align = alClient
    Caption = 'Pedidos Pendentes:'
    TabOrder = 0
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 661
      Height = 322
      Align = alClient
      DataSource = Src_Ped
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'P1CHAVE'
          Width = 59
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1CODCLI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomcli'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1DATAP'
          Width = 75
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1TOTALL'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'OBS01'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomtip'
          Width = 114
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1CODVEN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1TOTALB'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P1TOTDES'
          Visible = True
        end>
    end
    object GroupBox3: TGroupBox
      Left = 2
      Top = 337
      Width = 661
      Height = 83
      Align = alBottom
      Caption = 'Pedido Selecionado.:'
      TabOrder = 1
      object Label1: TLabel
        Left = 7
        Top = 15
        Width = 45
        Height = 13
        Caption = 'Chave.:'
      end
      object Label2: TLabel
        Left = 177
        Top = 16
        Width = 36
        Height = 13
        Caption = 'Data.:'
      end
      object Label4: TLabel
        Left = 6
        Top = 36
        Width = 68
        Height = 13
        Caption = 'Total Bruto:'
      end
      object Label5: TLabel
        Left = 176
        Top = 36
        Width = 65
        Height = 13
        Caption = 'Descontos:'
      end
      object Label6: TLabel
        Left = 429
        Top = 38
        Width = 81
        Height = 13
        Caption = 'Total L'#237'quido:'
      end
      object Label7: TLabel
        Left = 429
        Top = 17
        Width = 85
        Height = 13
        Caption = 'C'#243'd.Vendedor:'
      end
      object Label8: TLabel
        Left = 6
        Top = 57
        Width = 48
        Height = 13
        Caption = 'Cliente.:'
      end
      object Label9: TLabel
        Left = 429
        Top = 59
        Width = 73
        Height = 13
        Caption = 'Tipo Pedido:'
      end
      object DBEdit1: TDBEdit
        Left = 78
        Top = 13
        Width = 80
        Height = 19
        Ctl3D = False
        DataField = 'P1CHAVE'
        DataSource = Src_Ped
        ParentCtl3D = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 248
        Top = 14
        Width = 80
        Height = 19
        Ctl3D = False
        DataField = 'P1DATAP'
        DataSource = Src_Ped
        ParentCtl3D = False
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 78
        Top = 34
        Width = 80
        Height = 19
        Ctl3D = False
        DataField = 'P1TOTALB'
        DataSource = Src_Ped
        ParentCtl3D = False
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 248
        Top = 35
        Width = 80
        Height = 19
        Ctl3D = False
        DataField = 'P1TOTDES'
        DataSource = Src_Ped
        ParentCtl3D = False
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 519
        Top = 35
        Width = 80
        Height = 19
        Ctl3D = False
        DataField = 'P1TOTALL'
        DataSource = Src_Ped
        ParentCtl3D = False
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 519
        Top = 14
        Width = 80
        Height = 19
        Ctl3D = False
        DataField = 'P1CODVEN'
        DataSource = Src_Ped
        ParentCtl3D = False
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 78
        Top = 55
        Width = 80
        Height = 19
        Ctl3D = False
        DataField = 'P1CODCLI'
        DataSource = Src_Ped
        ParentCtl3D = False
        TabOrder = 6
      end
      object DBEdit8: TDBEdit
        Left = 162
        Top = 56
        Width = 258
        Height = 19
        Ctl3D = False
        DataField = 'nomcli'
        DataSource = Src_Ped
        ParentCtl3D = False
        TabOrder = 7
      end
      object DBEdit9: TDBEdit
        Left = 519
        Top = 56
        Width = 144
        Height = 19
        Ctl3D = False
        DataField = 'nomtip'
        DataSource = Src_Ped
        ParentCtl3D = False
        TabOrder = 8
      end
    end
  end
  object GroupBox2: TGroupBox
    Left = 665
    Top = 80
    Width = 110
    Height = 422
    Align = alRight
    Caption = 'A'#231#227'o:'
    TabOrder = 1
    object bbSair: TBitBtn
      Left = 3
      Top = 363
      Width = 103
      Height = 55
      Caption = '&Sair'
      TabOrder = 0
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbEmitirCupom: TBitBtn
      Left = 3
      Top = 17
      Width = 103
      Height = 55
      Caption = '&Emitir Cupom'
      TabOrder = 1
      OnClick = bbEmitirCupomClick
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
    object bbCancelar: TBitBtn
      Left = 3
      Top = 127
      Width = 103
      Height = 55
      Caption = '&Cancelar Cupom'
      TabOrder = 2
      OnClick = bbCancelarClick
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
    end
    object bbAtualizar: TBitBtn
      Left = 3
      Top = 183
      Width = 103
      Height = 55
      Caption = '&Atualizar Pedidos'
      TabOrder = 3
      OnClick = bbAtualizarClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbConfigurar: TBitBtn
      Left = 3
      Top = 302
      Width = 103
      Height = 55
      Caption = '&Configurar'
      TabOrder = 4
      OnClick = bbConfigurarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555000005
        5555555555FFFFF5555555550BBBBB0005555555F77777FFF555555BBBBBBBBB
        0055555777777777FF5555BBBBBBBBBBB0055577777777777FF55BBBBBBBBBBB
        BB0557777777777777F55BBBBBB55555BB0057777775555577FFBBBBBB555555
        5BB0777777555555577FBBBBB555555555B57777755555555575BBBB05555555
        55557777F55555555555BBBB0555555555557777F55555555555BBBB05555555
        55557777F555555555555BBB0555555555555777F555555555555BBB00555555
        55555777FF555555555555BBB0055555555555777FF555555555555BBB005555
        5555555777FF5555555555555BB5555555555555577555555555}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbReemitir: TBitBtn
      Left = 3
      Top = 72
      Width = 103
      Height = 55
      Caption = '&Reemitir Cupom'
      TabOrder = 5
      OnClick = bbReemitirClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object bbVProd: TBitBtn
      Left = 3
      Top = 240
      Width = 103
      Height = 55
      Caption = '&Ver Produtos'
      TabOrder = 6
      OnClick = bbVProdClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object HeaderControl1: THeaderControl
    Left = 0
    Top = 0
    Width = 775
    Height = 17
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Sections = <
      item
        ImageIndex = -1
        Text = 'Terminal ECF - 0025'
        Width = 200
      end
      item
        ImageIndex = -1
        Text = 'Operador: Lindomar Divino Cordeiro'
        Width = 300
      end
      item
        ImageIndex = -1
        Text = 'Data: 10/09/2002'
        Width = 150
      end
      item
        ImageIndex = -1
        Text = 'Horas: 10:10:10'
        Width = 150
      end>
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 17
    Width = 775
    Height = 63
    Align = alTop
    TabOrder = 3
    object Label3: TLabel
      Left = 1
      Top = 1
      Width = 773
      Height = 61
      Align = alClient
      AutoSize = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -40
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 288
    Top = 40
  end
  object Tb_Ped: TQuery
    OnCalcFields = Tb_PedCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select P1CODEMP,P1LOTSEQ,P1CHAVE,P1DATAP,P1CODCLI,P1CODVEN,P1TIP' +
        'O,'
      'max(P1OBS1) as OBS01,'
      'sum(P1TOTALB) AS P1TOTALB,sum(P1TOTDES) as P1TOTDES,'
      'sum(P1TOTALL) as P1TOTALL'
      'from CADP01'
      'WHERE P1CHAVE is null'
      
        'group by P1CODEMP,P1LOTSEQ,P1CHAVE,P1DATAP,P1CODCLI,P1CODVEN,P1T' +
        'IPO')
    Left = 360
    Top = 32
    object Tb_PedP1CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P1CHAVE'
      Origin = 'SG_ASSOC.CADP01.P1CHAVE'
    end
    object Tb_PedP1DATAP: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'P1DATAP'
      Origin = 'SG_ASSOC.CADP01.P1DATAP'
    end
    object Tb_PedP1CODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'P1CODCLI'
      Origin = 'SG_ASSOC.CADP01.P1CODCLI'
    end
    object Tb_PedP1TOTALL: TFloatField
      DisplayLabel = 'Total L'#237'quido'
      FieldName = 'P1TOTALL'
      Origin = 'SG_ASSOC.CADP01.P1TOTALL'
    end
    object Tb_PedP1CODVEN: TFloatField
      DisplayLabel = 'C'#243'd.Vend'
      FieldName = 'P1CODVEN'
      Origin = 'SG_ASSOC.CADP01.P1CODVEN'
    end
    object Tb_PedP1TIPO: TFloatField
      DisplayLabel = 'Tipo Pedido'
      FieldName = 'P1TIPO'
      Origin = 'SG_ASSOC.CADP01.P1TIPO'
    end
    object Tb_PedP1TOTALB: TFloatField
      DisplayLabel = 'Total Bruto'
      FieldName = 'P1TOTALB'
      Origin = 'SG_ASSOC.CADP01.P1TOTALB'
    end
    object Tb_PedP1TOTDES: TFloatField
      DisplayLabel = 'Descontos'
      FieldName = 'P1TOTDES'
      Origin = 'SG_ASSOC.CADP01.P1TOTDES'
    end
    object Tb_Pednomcli: TStringField
      DisplayLabel = 'Cliente:'
      FieldKind = fkCalculated
      FieldName = 'nomcli'
      Size = 40
      Calculated = True
    end
    object Tb_Pednomtip: TStringField
      DisplayLabel = 'Tipo do Pedido'
      FieldKind = fkCalculated
      FieldName = 'nomtip'
      Calculated = True
    end
    object Tb_PedP1CODEMP: TFloatField
      FieldName = 'P1CODEMP'
      Origin = 'SG_ASSOC.CADP01.P1CODEMP'
    end
    object Tb_PedP1LOTSEQ: TFloatField
      FieldName = 'P1LOTSEQ'
      Origin = 'SG_ASSOC.CADP01.P1LOTSEQ'
    end
    object Tb_PedOBS01: TStringField
      DisplayLabel = 'Observacoes Linha 01'
      FieldName = 'OBS01'
      Origin = 'SG_ASSOC.CADP01.P1OBS1'
      Size = 60
    end
  end
  object Src_Ped: TDataSource
    DataSet = Tb_Ped
    Left = 400
    Top = 32
  end
  object Qr_Ped02: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADP02 '
      'where P2CODEMP is null')
    Left = 312
    Top = 16
    object Qr_Ped02P2CODEMP: TFloatField
      FieldName = 'P2CODEMP'
      Origin = 'SG_ASSOC.CADP02.P2CODEMP'
    end
    object Qr_Ped02P2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
      Origin = 'SG_ASSOC.CADP02.P2CHAVE'
    end
    object Qr_Ped02P2ORDEM: TFloatField
      FieldName = 'P2ORDEM'
      Origin = 'SG_ASSOC.CADP02.P2ORDEM'
    end
    object Qr_Ped02P2ITEM: TFloatField
      FieldName = 'P2ITEM'
      Origin = 'SG_ASSOC.CADP02.P2ITEM'
    end
    object Qr_Ped02P2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Qr_Ped02P2QTD: TFloatField
      FieldName = 'P2QTD'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Qr_Ped02P2LOTE: TStringField
      FieldName = 'P2LOTE'
      Origin = 'SG_ASSOC.CADP02.P2LOTE'
    end
    object Qr_Ped02P2DTVCTO: TDateTimeField
      FieldName = 'P2DTVCTO'
      Origin = 'SG_ASSOC.CADP02.P2DTVCTO'
    end
    object Qr_Ped02P2DESC1: TFloatField
      FieldName = 'P2DESC1'
      Origin = 'SG_ASSOC.CADP02.P2DESC1'
    end
    object Qr_Ped02P2DESC2: TFloatField
      FieldName = 'P2DESC2'
      Origin = 'SG_ASSOC.CADP02.P2DESC2'
    end
    object Qr_Ped02P2VALDES: TFloatField
      FieldName = 'P2VALDES'
      Origin = 'SG_ASSOC.CADP02.P2VALDES'
    end
    object Qr_Ped02P2PRECO: TFloatField
      FieldName = 'P2PRECO'
      Origin = 'SG_ASSOC.CADP02.P2PRECO'
    end
    object Qr_Ped02P2SIT: TStringField
      FieldName = 'P2SIT'
      Origin = 'SG_ASSOC.CADP02.P2SIT'
      Size = 3
    end
    object Qr_Ped02P2CODFAB: TFloatField
      FieldName = 'P2CODFAB'
      Origin = 'SG_ASSOC.CADP02.P2CODFAB'
    end
    object Qr_Ped02P2BASEN: TFloatField
      FieldName = 'P2BASEN'
      Origin = 'SG_ASSOC.CADP02.P2BASEN'
    end
    object Qr_Ped02P2ICMSN: TFloatField
      FieldName = 'P2ICMSN'
      Origin = 'SG_ASSOC.CADP02.P2ICMSN'
    end
    object Qr_Ped02P2REPAS: TFloatField
      FieldName = 'P2REPAS'
      Origin = 'SG_ASSOC.CADP02.P2REPAS'
    end
    object Qr_Ped02P2BASER: TFloatField
      FieldName = 'P2BASER'
      Origin = 'SG_ASSOC.CADP02.P2BASER'
    end
    object Qr_Ped02P2ICMSR: TFloatField
      FieldName = 'P2ICMSR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSR'
    end
    object Qr_Ped02P2LISTA: TFloatField
      FieldName = 'P2LISTA'
      Origin = 'SG_ASSOC.CADP02.P2LISTA'
    end
    object Qr_Ped02P2STATUS: TFloatField
      FieldName = 'P2STATUS'
      Origin = 'SG_ASSOC.CADP02.P2STATUS'
    end
    object Qr_Ped02P2PCOTAB: TFloatField
      FieldName = 'P2PCOTAB'
      Origin = 'SG_ASSOC.CADP02.P2PCOTAB'
    end
    object Qr_Ped02P2UCPR: TFloatField
      FieldName = 'P2UCPR'
      Origin = 'SG_ASSOC.CADP02.P2UCPR'
    end
    object Qr_Ped02P2TOTDES: TFloatField
      FieldName = 'P2TOTDES'
      Origin = 'SG_ASSOC.CADP02.P2TOTDES'
    end
    object Qr_Ped02P2TABELA: TStringField
      FieldName = 'P2TABELA'
      Origin = 'SG_ASSOC.CADP02.P2TABELA'
      Size = 1
    end
    object Qr_Ped02P2ALIPI: TFloatField
      FieldName = 'P2ALIPI'
      Origin = 'SG_ASSOC.CADP02.P2ALIPI'
    end
    object Qr_Ped02P2VALIPI: TFloatField
      FieldName = 'P2VALIPI'
      Origin = 'SG_ASSOC.CADP02.P2VALIPI'
    end
    object Qr_Ped02P2BCINR: TFloatField
      FieldName = 'P2BCINR'
      Origin = 'SG_ASSOC.CADP02.P2BCINR'
    end
    object Qr_Ped02P2ICMSNR: TFloatField
      FieldName = 'P2ICMSNR'
      Origin = 'SG_ASSOC.CADP02.P2ICMSNR'
    end
    object Qr_Ped02P2ISENTAS: TFloatField
      FieldName = 'P2ISENTAS'
      Origin = 'SG_ASSOC.CADP02.P2ISENTAS'
    end
    object Qr_Ped02P2ALIQ: TFloatField
      FieldName = 'P2ALIQ'
      Origin = 'SG_ASSOC.CADP02.P2ALIQ'
    end
    object Qr_Ped02P2ALIQNR: TFloatField
      FieldName = 'P2ALIQNR'
      Origin = 'SG_ASSOC.CADP02.P2ALIQNR'
    end
    object Qr_Ped02P2PCOMIS: TFloatField
      FieldName = 'P2PCOMIS'
      Origin = 'SG_ASSOC.CADP02.P2PCOMIS'
    end
    object Qr_Ped02P2VCOMIS: TFloatField
      FieldName = 'P2VCOMIS'
      Origin = 'SG_ASSOC.CADP02.P2VCOMIS'
    end
    object Qr_Ped02P2DESCM: TFloatField
      FieldName = 'P2DESCM'
      Origin = 'SG_ASSOC.CADP02.P2DESCM'
    end
    object Qr_Ped02P2CFO: TFloatField
      FieldName = 'P2CFO'
      Origin = 'SG_ASSOC.CADP02.P2CFO'
    end
    object Qr_Ped02P2SEMCOM: TFloatField
      FieldName = 'P2SEMCOM'
      Origin = 'SG_ASSOC.CADP02.P2SEMCOM'
    end
    object Qr_Ped02P2TOTLIQ: TFloatField
      FieldName = 'P2TOTLIQ'
      Origin = 'SG_ASSOC.CADP02.P2TOTLIQ'
    end
    object Qr_Ped02P2PDESCF: TFloatField
      FieldName = 'P2PDESCF'
      Origin = 'SG_ASSOC.CADP02.P2PDESCF'
    end
    object Qr_Ped02P2VDESCF: TFloatField
      FieldName = 'P2VDESCF'
      Origin = 'SG_ASSOC.CADP02.P2VDESCF'
    end
    object Qr_Ped02P2DESCRAT: TFloatField
      FieldName = 'P2DESCRAT'
      Origin = 'SG_ASSOC.CADP02.P2DESCRAT'
    end
    object Qr_Ped02P2CODANT: TFloatField
      FieldName = 'P2CODANT'
      Origin = 'SG_ASSOC.CADP02.P2CODANT'
    end
  end
end
