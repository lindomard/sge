object Frm_Min: TFrm_Min
  Left = 35
  Top = 96
  Width = 441
  Height = 368
  Caption = 'Minuta de Entrega de Mercadorias'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 433
    Height = 334
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 44
      Top = 24
      Width = 56
      Height = 13
      Caption = 'Per'#237'odo de '
    end
    object Label2: TLabel
      Left = 194
      Top = 24
      Width = 6
      Height = 13
      Caption = #224
    end
    object Panel2: TPanel
      Left = 1
      Top = 291
      Width = 431
      Height = 42
      Align = alBottom
      TabOrder = 0
      object BitBtn1: TBitBtn
        Left = 138
        Top = 12
        Width = 75
        Height = 25
        Caption = '&Imprimir'
        TabOrder = 0
        OnClick = BitBtn1Click
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
      object BitBtn2: TBitBtn
        Left = 220
        Top = 12
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
    object MDT1: TMaskEdit
      Left = 112
      Top = 20
      Width = 66
      Height = 21
      EditMask = '99/99/9999;1; '
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object MDT2: TMaskEdit
      Left = 210
      Top = 20
      Width = 66
      Height = 21
      EditMask = '99/99/9999;1; '
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
    end
    object CBROTA: TCheckBox
      Left = 46
      Top = 46
      Width = 157
      Height = 17
      Caption = 'Selecionar Rotas'
      TabOrder = 3
      OnClick = CBROTAClick
    end
    object Panel3: TPanel
      Left = 2
      Top = 62
      Width = 345
      Height = 211
      TabOrder = 4
      object NOMROT: TEdit
        Left = 77
        Top = 145
        Width = 243
        Height = 21
        ReadOnly = True
        TabOrder = 0
      end
      object CODROT: TEdit
        Left = 7
        Top = 145
        Width = 70
        Height = 21
        TabOrder = 1
        OnExit = CODROTExit
        OnKeyPress = CODROTKeyPress
      end
      object SG1: TStringGrid
        Left = 8
        Top = 18
        Width = 315
        Height = 120
        ColCount = 2
        FixedCols = 0
        RowCount = 1
        FixedRows = 0
        TabOrder = 6
        ColWidths = (
          64
          242)
      end
      object LANCAR: TBitBtn
        Left = 6
        Top = 167
        Width = 75
        Height = 25
        Caption = '&Lan'#231'ar'
        TabOrder = 2
        OnClick = LANCARClick
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
      object ALTERAR: TBitBtn
        Left = 81
        Top = 167
        Width = 75
        Height = 25
        Caption = '&Alterar'
        TabOrder = 3
        OnClick = ALTERARClick
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
        NumGlyphs = 2
      end
      object EXCLUIR: TBitBtn
        Left = 156
        Top = 167
        Width = 75
        Height = 25
        Caption = '&Excluir'
        TabOrder = 4
        OnClick = EXCLUIRClick
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
        NumGlyphs = 2
      end
      object HeaderControl1: THeaderControl
        Left = 1
        Top = 1
        Width = 343
        Height = 17
        DragReorder = False
        Sections = <
          item
            ImageIndex = -1
            Text = 'C'#243'd.Rota'
            Width = 74
          end
          item
            ImageIndex = -1
            Text = 'Nome da Rota'
            Width = 243
          end>
      end
    end
  end
  object Qr_Rot: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select P1CHAVE,P1OBS,P2CODPRO,P2QTD,P2PRECO,PDNOME,'
      '                CNOME,CCELULAR,CFONERES, CFONECOM, CDTUREN,'
      '                CPONTOR, CTPLOG,CLOG,CNUM,CCOMPL,BNOME,'
      '                CCEP, LNOME,LUF, RTNOME, RTCEP,CADRT2.RTCODROT '
      '                From CADP01,CADP02,CADPRO,CADASS,CADBAI,'
      '                CADLOC,CADRT2,CADRT1 '
      '                Where P1CODEMP=1'
      '                and P2CHAVE=P1CHAVE'
      '                and PDCODBAR=P2CODPRO'
      '                and CCODASS=P1CODASS'
      '                and BCODBAI(+)=CCODBAI AND BCODLOC=CCODLOC'
      '                and LCODLOC=CCODLOC'
      '                and RTCEP=CCEP'
      '                and CADRT1.RTCODROT=CADRT2.RTCODROT'
      '                and P1CODEMP is null')
    Left = 206
    Top = 102
    object Qr_RotP1CHAVE: TFloatField
      FieldName = 'P1CHAVE'
    end
    object Qr_RotP1OBS: TMemoField
      FieldName = 'P1OBS'
      BlobType = ftMemo
      Size = 400
    end
    object Qr_RotP2CODPRO: TFloatField
      FieldName = 'P2CODPRO'
    end
    object Qr_RotP2QTD: TFloatField
      FieldName = 'P2QTD'
    end
    object Qr_RotP2PRECO: TFloatField
      FieldName = 'P2PRECO'
    end
    object Qr_RotPDNOME: TStringField
      FieldName = 'PDNOME'
      Size = 40
    end
    object Qr_RotCNOME: TStringField
      FieldName = 'CNOME'
      Size = 40
    end
    object Qr_RotCCELULAR: TStringField
      FieldName = 'CCELULAR'
      Size = 16
    end
    object Qr_RotCFONERES: TStringField
      FieldName = 'CFONERES'
      Size = 16
    end
    object Qr_RotCFONECOM: TStringField
      FieldName = 'CFONECOM'
      Size = 16
    end
    object Qr_RotCDTUREN: TDateTimeField
      FieldName = 'CDTUREN'
    end
    object Qr_RotCPONTOR: TStringField
      FieldName = 'CPONTOR'
      Size = 40
    end
    object Qr_RotCTPLOG: TStringField
      FieldName = 'CTPLOG'
      Size = 10
    end
    object Qr_RotCLOG: TStringField
      FieldName = 'CLOG'
      Size = 60
    end
    object Qr_RotCNUM: TStringField
      FieldName = 'CNUM'
      Size = 10
    end
    object Qr_RotCCOMPL: TStringField
      FieldName = 'CCOMPL'
      Size = 30
    end
    object Qr_RotBNOME: TStringField
      FieldName = 'BNOME'
      Size = 60
    end
    object Qr_RotCCEP: TStringField
      FieldName = 'CCEP'
      Size = 9
    end
    object Qr_RotLNOME: TStringField
      FieldName = 'LNOME'
      Size = 60
    end
    object Qr_RotLUF: TStringField
      FieldName = 'LUF'
      Size = 2
    end
    object Qr_RotRTNOME: TStringField
      FieldName = 'RTNOME'
      Size = 30
    end
    object Qr_RotRTCEP: TStringField
      FieldName = 'RTCEP'
      Size = 9
    end
    object Qr_RotRTCODROT: TFloatField
      FieldName = 'RTCODROT'
    end
  end
end
