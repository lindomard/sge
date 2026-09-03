object Frm_PforC: TFrm_PforC
  Left = 18
  Top = 88
  Width = 716
  Height = 450
  Caption = 'Confirma'#231#227'o do Pedido de Entrada'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clBlue
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 708
    Height = 205
    Align = alTop
    Caption = 'Dados da Nota Fiscal de Entrada'
    TabOrder = 0
    object Label2: TLabel
      Left = 9
      Top = 18
      Width = 97
      Height = 13
      Caption = 'N'#250'mero...................:'
    end
    object Label3: TLabel
      Left = 224
      Top = 15
      Width = 36
      Height = 13
      Caption = 'S'#233'rie...:'
    end
    object Label6: TLabel
      Left = 348
      Top = 17
      Width = 49
      Height = 13
      Caption = 'Sub-S'#233'rie:'
    end
    object Label4: TLabel
      Left = 9
      Top = 40
      Width = 96
      Height = 13
      Caption = 'CFO........................:'
    end
    object Label5: TLabel
      Left = 224
      Top = 39
      Width = 95
      Height = 13
      Caption = 'Data Emiss'#227'o.........:'
    end
    object Label7: TLabel
      Left = 9
      Top = 63
      Width = 97
      Height = 13
      Caption = 'Base Icms Normal...:'
    end
    object Label12: TLabel
      Left = 224
      Top = 59
      Width = 97
      Height = 13
      Caption = 'Al'#237'quota..................:'
    end
    object Label8: TLabel
      Left = 409
      Top = 58
      Width = 61
      Height = 13
      Caption = 'Icms Normal:'
    end
    object Label10: TLabel
      Left = 224
      Top = 83
      Width = 95
      Height = 13
      Caption = 'Icms Retido............:'
    end
    object Label9: TLabel
      Left = 9
      Top = 85
      Width = 98
      Height = 13
      Caption = 'Base Icms Retido....:'
    end
    object Label11: TLabel
      Left = 224
      Top = 128
      Width = 96
      Height = 13
      Caption = 'Frete.......................:'
    end
    object Label15: TLabel
      Left = 9
      Top = 150
      Width = 97
      Height = 13
      Caption = 'Seguro....................:'
    end
    object Label17: TLabel
      Left = 409
      Top = 126
      Width = 67
      Height = 13
      Caption = 'IPI.................:'
    end
    object Label16: TLabel
      Left = 9
      Top = 128
      Width = 100
      Height = 13
      Caption = 'Outras......................:'
    end
    object Label20: TLabel
      Left = 224
      Top = 148
      Width = 94
      Height = 13
      Caption = 'Total Desconto......:'
    end
    object Label18: TLabel
      Left = 9
      Top = 107
      Width = 100
      Height = 13
      Caption = 'Total Mercadorias....:'
    end
    object Label21: TLabel
      Left = 9
      Top = 174
      Width = 97
      Height = 13
      Caption = 'Total Positivo..........:'
    end
    object Label23: TLabel
      Left = 404
      Top = 174
      Width = 77
      Height = 13
      Caption = 'Total Inalterado:'
    end
    object Label19: TLabel
      Left = 224
      Top = 108
      Width = 101
      Height = 13
      Caption = 'Total da Nota...........:'
    end
    object Label22: TLabel
      Left = 224
      Top = 172
      Width = 94
      Height = 13
      Caption = 'Total Negativo.......:'
    end
    object NUMNF: TEdit
      Left = 109
      Top = 15
      Width = 73
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 0
      OnExit = NUMNFExit
    end
    object SERIE: TEdit
      Left = 261
      Top = 14
      Width = 71
      Height = 21
      TabOrder = 1
      OnExit = SERIEExit
    end
    object SUBSERIE: TEdit
      Left = 401
      Top = 13
      Width = 72
      Height = 21
      TabOrder = 2
    end
    object CFO: TEdit
      Left = 109
      Top = 37
      Width = 73
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 3
      OnExit = CFOExit
    end
    object MBASEN: TEdit
      Left = 109
      Top = 59
      Width = 73
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 5
      OnExit = MBASENExit
      OnKeyPress = MBASENKeyPress
    end
    object ALIQ: TEdit
      Left = 324
      Top = 56
      Width = 50
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 6
      OnExit = ALIQExit
      OnKeyPress = MBASENKeyPress
    end
    object ICMSN: TEdit
      Left = 475
      Top = 56
      Width = 73
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 7
      OnExit = ICMSNExit
      OnKeyPress = MBASENKeyPress
    end
    object MBASER: TEdit
      Left = 109
      Top = 82
      Width = 73
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 8
      OnExit = MBASERExit
      OnKeyPress = MBASENKeyPress
    end
    object MICMSR: TEdit
      Left = 324
      Top = 78
      Width = 73
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 9
      OnExit = MICMSRExit
      OnKeyPress = MBASENKeyPress
    end
    object TOTMER: TEdit
      Left = 109
      Top = 104
      Width = 73
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 10
      OnExit = TOTMERExit
      OnKeyPress = MBASENKeyPress
    end
    object TOTNOT: TEdit
      Left = 324
      Top = 100
      Width = 73
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 11
      OnExit = TOTNOTExit
      OnKeyPress = MBASENKeyPress
    end
    object OUTRAS: TEdit
      Left = 109
      Top = 126
      Width = 73
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 12
      OnExit = OUTRASExit
      OnKeyPress = MBASENKeyPress
    end
    object FRETE: TEdit
      Left = 324
      Top = 122
      Width = 73
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 13
      OnExit = FRETEExit
      OnKeyPress = MBASENKeyPress
    end
    object IPI: TEdit
      Left = 479
      Top = 124
      Width = 73
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 14
      OnExit = IPIExit
      OnKeyPress = MBASENKeyPress
    end
    object SEGURO: TEdit
      Left = 109
      Top = 147
      Width = 73
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 15
      OnExit = SEGUROExit
    end
    object DESC: TEdit
      Left = 324
      Top = 145
      Width = 73
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 16
      OnExit = DESCExit
      OnKeyPress = MBASENKeyPress
    end
    object TOTPOS: TEdit
      Left = 109
      Top = 169
      Width = 73
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 17
      OnExit = TOTPOSExit
      OnKeyPress = MBASENKeyPress
    end
    object TOTNEG: TEdit
      Left = 325
      Top = 168
      Width = 73
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 18
      OnExit = TOTNEGExit
      OnKeyPress = MBASENKeyPress
    end
    object TOTINA: TEdit
      Left = 484
      Top = 168
      Width = 73
      Height = 21
      BiDiMode = bdRightToLeft
      ParentBiDiMode = False
      TabOrder = 19
      OnExit = TOTINAExit
      OnKeyPress = MBASENKeyPress
    end
    object DATAE: TMaskEdit
      Left = 324
      Top = 34
      Width = 73
      Height = 21
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 4
      Text = '  /  /    '
      OnExit = DATAEExit
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 205
    Width = 708
    Height = 178
    Align = alTop
    Caption = 'Dados das Duplicatas(Contas a Pagar)'
    TabOrder = 1
    object Panel1: TPanel
      Left = 2
      Top = 137
      Width = 704
      Height = 39
      Align = alBottom
      TabOrder = 0
      object Label1: TLabel
        Left = 5
        Top = 11
        Width = 129
        Height = 13
        Caption = 'Quantidade dup.Lan'#231'adas:'
      end
      object Label13: TLabel
        Left = 202
        Top = 13
        Width = 27
        Height = 13
        Caption = 'Total:'
      end
      object DBNavigator1: TDBNavigator
        Left = 384
        Top = 6
        Width = 234
        Height = 25
        DataSource = Src_CP
        VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
        TabOrder = 0
      end
      object QTDD: TEdit
        Left = 140
        Top = 8
        Width = 50
        Height = 21
        BiDiMode = bdRightToLeft
        Enabled = False
        ParentBiDiMode = False
        TabOrder = 1
      end
      object TOTAL: TEdit
        Left = 240
        Top = 8
        Width = 111
        Height = 21
        BiDiMode = bdRightToLeft
        Enabled = False
        ParentBiDiMode = False
        TabOrder = 2
      end
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 704
      Height = 122
      Align = alClient
      DataSource = Src_CP
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnColExit = DBGrid1ColExit
      OnExit = DBGrid1Exit
      Columns = <
        item
          Expanded = False
          FieldName = 'CANUMERO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CADESD'
          Title.Caption = 'Parc'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAVALOR'
          Width = 76
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CADTVCTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CAVALDES'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CADTDESC'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CABANCO'
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 383
    Width = 708
    Height = 33
    Align = alClient
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 178
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Gravar'
      TabOrder = 0
      OnClick = BitBtn1Click
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
    object BitBtn2: TBitBtn
      Left = 282
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = BitBtn2Click
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
    object BitBtn3: TBitBtn
      Left = 398
      Top = 9
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 2
      OnClick = BitBtn3Click
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
  object Qr_CP: TQuery
    CachedUpdates = True
    AfterInsert = Qr_CPAfterInsert
    AfterPost = Qr_CPAfterPost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * FROM CADDAP where '
      'CACODEMP like :EMPRESA and '
      'CANUMERO like :NUMERO and'
      'CADESD       like :DESD and'
      'CACODFOR  like :CODFOR and'
      'CADTEMIS   like :DTEMIS')
    UpdateObject = U_CP
    Left = 46
    Top = 240
    ParamData = <
      item
        DataType = ftString
        Name = 'EMPRESA'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NUMERO'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DESD'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODFOR'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DTEMIS'
        ParamType = ptUnknown
        Value = ''
      end>
    object Qr_CPCACODEMP: TFloatField
      FieldName = 'CACODEMP'
      Origin = 'SG_ASSOC.CADDAP.CACODEMP'
    end
    object Qr_CPCANUMERO: TFloatField
      FieldName = 'CANUMERO'
      Origin = 'SG_ASSOC.CADDAP.CANUMERO'
    end
    object Qr_CPCADESD: TStringField
      FieldName = 'CADESD'
      Origin = 'SG_ASSOC.CADDAP.CADESD'
      Size = 2
    end
    object Qr_CPCACODFOR: TFloatField
      FieldName = 'CACODFOR'
      Origin = 'SG_ASSOC.CADDAP.CACODFOR'
    end
    object Qr_CPCADTEMIS: TDateTimeField
      FieldName = 'CADTEMIS'
      Origin = 'SG_ASSOC.CADDAP.CADTEMIS'
    end
    object Qr_CPCAVALOR: TFloatField
      FieldName = 'CAVALOR'
      Origin = 'SG_ASSOC.CADDAP.CAVALOR'
    end
    object Qr_CPCADTVCTO: TDateTimeField
      FieldName = 'CADTVCTO'
      Origin = 'SG_ASSOC.CADDAP.CADTVCTO'
    end
    object Qr_CPCASTATUS: TFloatField
      FieldName = 'CASTATUS'
      Origin = 'SG_ASSOC.CADDAP.CASTATUS'
    end
    object Qr_CPCAVALDES: TFloatField
      FieldName = 'CAVALDES'
      Origin = 'SG_ASSOC.CADDAP.CAVALDES'
    end
    object Qr_CPCADTDESC: TDateTimeField
      FieldName = 'CADTDESC'
      Origin = 'SG_ASSOC.CADDAP.CADTDESC'
    end
    object Qr_CPCADESC: TFloatField
      FieldName = 'CADESC'
      Origin = 'SG_ASSOC.CADDAP.CADESC'
    end
    object Qr_CPCAJUROS: TFloatField
      FieldName = 'CAJUROS'
      Origin = 'SG_ASSOC.CADDAP.CAJUROS'
    end
    object Qr_CPCABANCO: TFloatField
      FieldName = 'CABANCO'
      Origin = 'SG_ASSOC.CADDAP.CABANCO'
    end
    object Qr_CPCALOTE: TFloatField
      FieldName = 'CALOTE'
      Origin = 'SG_ASSOC.CADDAP.CALOTE'
    end
    object Qr_CPCACHAVEP: TFloatField
      FieldName = 'CACHAVEP'
      Origin = 'SG_ASSOC.CADDAP.CACHAVEP'
    end
    object Qr_CPCADTBX: TDateTimeField
      FieldName = 'CADTBX'
      Origin = 'SG_ASSOC.CADDAP.CADTBX'
    end
    object Qr_CPCADTPAG: TDateTimeField
      FieldName = 'CADTPAG'
      Origin = 'SG_ASSOC.CADDAP.CADTPAG'
    end
    object Qr_CPCAUSRBAI: TFloatField
      FieldName = 'CAUSRBAI'
      Origin = 'SG_ASSOC.CADDAP.CAUSRBAI'
    end
    object Qr_CPCACAIXA: TFloatField
      FieldName = 'CACAIXA'
      Origin = 'SG_ASSOC.CADDAP.CACAIXA'
    end
    object Qr_CPCACODLDR: TFloatField
      FieldName = 'CACODLDR'
      Origin = 'SG_ASSOC.CADDAP.CACODLDR'
    end
  end
  object U_CP: TUpdateSQL
    ModifySQL.Strings = (
      'update CADDAP'
      'set'
      '  CACODEMP = :CACODEMP,'
      '  CANUMERO = :CANUMERO,'
      '  CADESD = :CADESD,'
      '  CACODFOR = :CACODFOR,'
      '  CADTEMIS = :CADTEMIS,'
      '  CAVALOR = :CAVALOR,'
      '  CADTVCTO = :CADTVCTO,'
      '  CASTATUS = :CASTATUS,'
      '  CAVALDES = :CAVALDES,'
      '  CADTDESC = :CADTDESC,'
      '  CADESC = :CADESC,'
      '  CAJUROS = :CAJUROS,'
      '  CABANCO = :CABANCO,'
      '  CALOTE = :CALOTE,'
      '  CACHAVEP = :CACHAVEP,'
      '  CADTBX = :CADTBX,'
      '  CADTPAG = :CADTPAG,'
      '  CAUSRBAI = :CAUSRBAI,'
      '  CACAIXA = :CACAIXA,'
      '  CACODLDR = :CACODLDR'
      'where'
      '  CACODEMP = :OLD_CACODEMP and'
      '  CANUMERO = :OLD_CANUMERO and'
      '  CADESD = :OLD_CADESD and'
      '  CACODFOR = :OLD_CACODFOR and'
      '  CADTEMIS = :OLD_CADTEMIS')
    InsertSQL.Strings = (
      'insert into CADDAP'
      '  (CACODEMP, CANUMERO, CADESD, CACODFOR, CADTEMIS, CAVALOR, '
      'CADTVCTO, CASTATUS, '
      
        '   CAVALDES, CADTDESC, CADESC, CAJUROS, CABANCO, CALOTE, CACHAVE' +
        'P, '
      'CADTBX, '
      '   CADTPAG, CAUSRBAI, CACAIXA, CACODLDR)'
      'values'
      
        '  (:CACODEMP, :CANUMERO, :CADESD, :CACODFOR, :CADTEMIS, :CAVALOR' +
        ', '
      ':CADTVCTO, '
      
        '   :CASTATUS, :CAVALDES, :CADTDESC, :CADESC, :CAJUROS, :CABANCO,' +
        ' '
      ':CALOTE, '
      '   :CACHAVEP, :CADTBX, :CADTPAG, :CAUSRBAI, :CACAIXA, :CACODLDR)')
    DeleteSQL.Strings = (
      'delete from CADDAP'
      'where'
      '  CACODEMP = :OLD_CACODEMP and'
      '  CANUMERO = :OLD_CANUMERO and'
      '  CADESD = :OLD_CADESD and'
      '  CACODFOR = :OLD_CACODFOR and'
      '  CADTEMIS = :OLD_CADTEMIS')
    Left = 74
    Top = 235
  end
  object Src_CP: TDataSource
    DataSet = Qr_CP
    Left = 108
    Top = 235
  end
end
