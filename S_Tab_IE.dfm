object Frm_Tab_IE: TFrm_Tab_IE
  Left = 65
  Top = 41
  Width = 703
  Height = 380
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Instru'#231#245'es Especiais'
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
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 305
    Width = 695
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BBINCLUIR: TBitBtn
      Left = 2
      Top = 8
      Width = 113
      Height = 25
      Caption = '&Incluir'
      TabOrder = 0
      OnClick = BBINCLUIRClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33333333FF33333333FF333993333333300033377F3333333777333993333333
        300033F77FFF3333377739999993333333333777777F3333333F399999933333
        33003777777333333377333993333333330033377F3333333377333993333333
        3333333773333333333F333333333333330033333333F33333773333333C3333
        330033333337FF3333773333333CC333333333FFFFF77FFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC3993337777777777377333333333CC333
        333333333337733333FF3333333C333330003333333733333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BBALTERAR: TBitBtn
      Left = 115
      Top = 8
      Width = 113
      Height = 25
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = BBALTERARClick
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
    object BBGRAVAR: TBitBtn
      Left = 228
      Top = 8
      Width = 113
      Height = 25
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 2
      OnClick = BBGRAVARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333FFFFF3333333333000003333333333F777773FF333333008F88800
        33333337733333773F33330FFF8F888F033333733333333373F330DEFFF8F8FE
        D03337F33333333337F330DDEFFFFFEDD0333733333FFF33373F0BBFDE000EDF
        BB037F33337773F3337F0AABB08880BBAA037F3337F3F7F3337F0EEAA08080AA
        EE037F3337F737F3337F0AABB08880BBAA037F33373FF733337F0BBFDE000EDB
        BB0373F333777333337330DDEFFFFFEDD03337F33333333337F330DEF8F8FFFE
        D033373F333333333733330FFF8F8FFF03333373FF33333F733333300FF8F800
        3333333773FFFF77333333333000003333333333377777333333}
      NumGlyphs = 2
    end
    object BBCANCELAR: TBitBtn
      Left = 341
      Top = 8
      Width = 113
      Height = 25
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 3
      OnClick = BBCANCELARClick
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
    object BBEXCLUIR: TBitBtn
      Left = 454
      Top = 8
      Width = 113
      Height = 25
      Caption = '&Excluir'
      TabOrder = 4
      OnClick = BBEXCLUIRClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333FF33333333333330003333333333333777333333333333
        300033FFFFFF3333377739999993333333333777777F3333333F399999933333
        3300377777733333337733333333333333003333333333333377333333333333
        3333333333333333333F333333333333330033333F33333333773333C3333333
        330033337F3333333377333CC3333333333333F77FFFFFFF3FF33CCCCCCCCCC3
        993337777777777F77F33CCCCCCCCCC399333777777777737733333CC3333333
        333333377F33333333FF3333C333333330003333733333333777333333333333
        3000333333333333377733333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BBSAIR: TBitBtn
      Left = 567
      Top = 8
      Width = 113
      Height = 25
      Caption = '&Sair'
      TabOrder = 5
      OnClick = BBSAIRClick
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 185
    Height = 305
    Align = alLeft
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 183
      Height = 303
      Align = alClient
      DataSource = Src_TDVOP
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'TOCOND01'
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 185
    Top = 0
    Width = 510
    Height = 305
    Align = alClient
    Enabled = False
    TabOrder = 2
    object Label1: TLabel
      Left = 8
      Top = 100
      Width = 94
      Height = 13
      Caption = 'Campo ou Valor:'
    end
    object Label2: TLabel
      Left = 9
      Top = 125
      Width = 93
      Height = 13
      Caption = 'Operador.........:'
    end
    object Label3: TLabel
      Left = 8
      Top = 147
      Width = 94
      Height = 13
      Caption = 'Campo ou Valor:'
    end
    object Label4: TLabel
      Left = 9
      Top = 173
      Width = 93
      Height = 13
      Caption = 'Operador.........:'
    end
    object Label5: TLabel
      Left = 8
      Top = 195
      Width = 94
      Height = 13
      Caption = 'Campo ou Valor:'
    end
    object Label9: TLabel
      Left = 9
      Top = 52
      Width = 94
      Height = 13
      Caption = 'Campo ou Valor:'
    end
    object Label10: TLabel
      Left = 9
      Top = 77
      Width = 93
      Height = 13
      Caption = 'Operador.........:'
    end
    object Label6: TLabel
      Left = 8
      Top = 19
      Width = 98
      Height = 13
      Caption = 'Gerar Campo.....:'
    end
    object CB_OP1: TComboBox
      Left = 115
      Top = 96
      Width = 350
      Height = 21
      ItemHeight = 13
      Sorted = True
      TabOrder = 3
    end
    object CB_OPER1: TComboBox
      Left = 115
      Top = 118
      Width = 350
      Height = 21
      ItemHeight = 13
      Sorted = True
      TabOrder = 4
      Items.Strings = (
        ''
        'Dividir'
        'Multiplicar'
        'Porcentagem'
        'Somar'
        'Subtrair')
    end
    object CB_OP2: TComboBox
      Left = 115
      Top = 141
      Width = 350
      Height = 21
      ItemHeight = 13
      Sorted = True
      TabOrder = 5
    end
    object CB_OPER2: TComboBox
      Left = 115
      Top = 166
      Width = 350
      Height = 21
      ItemHeight = 13
      Sorted = True
      TabOrder = 6
      Items.Strings = (
        'Dividir'
        'Multiplicar'
        'Porcentagem'
        'Somar'
        'Subtrair')
    end
    object CB_OP3: TComboBox
      Left = 115
      Top = 189
      Width = 350
      Height = 21
      ItemHeight = 13
      Sorted = True
      TabOrder = 7
    end
    object DBMemo1: TDBMemo
      Left = 1
      Top = 215
      Width = 508
      Height = 89
      Align = alBottom
      DataField = 'moper'
      DataSource = Src_TDVOP
      ReadOnly = True
      TabOrder = 8
    end
    object CB_OP0: TComboBox
      Left = 115
      Top = 51
      Width = 350
      Height = 21
      ItemHeight = 13
      Sorted = True
      TabOrder = 1
    end
    object CB_OPER0: TComboBox
      Left = 115
      Top = 73
      Width = 350
      Height = 21
      ItemHeight = 13
      Sorted = True
      TabOrder = 2
      Items.Strings = (
        ''
        'Dividir'
        'Multiplicar'
        'Porcentagem'
        'Somar'
        'Subtrair')
    end
    object NOMCAM: TEdit
      Left = 115
      Top = 12
      Width = 128
      Height = 21
      TabOrder = 0
    end
  end
  object Src_TDVOP: TDataSource
    DataSet = Qr_TDVOP
    OnDataChange = Src_TDVOPDataChange
    Left = 48
    Top = 16
  end
  object Qr_TDVOP: TQuery
    OnCalcFields = Qr_TDVOPCalcFields
    DatabaseName = 'SG_ASSOC'
    Filter = 'TOTDET=99'
    Filtered = True
    SQL.Strings = (
      'Select * from CTDVOP where '
      'TOCODEMP like :CODEMP and'
      'TODOC        like  :DOC        and'
      'TONOME     like  :NOME      and'
      'TOTDET      like  :TDET      and '
      'TOCODIGO  like  :CODIGO'
      'order by TOCOND01')
    Left = 112
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'CODEMP'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'DOC'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'TDET'
        ParamType = ptUnknown
        Value = ''
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptUnknown
        Value = ''
      end>
    object Qr_TDVOPTOCODEMP: TFloatField
      FieldName = 'TOCODEMP'
      Origin = 'SG_ASSOC.CTDVOP.TOCODEMP'
    end
    object Qr_TDVOPTODOC: TStringField
      FieldName = 'TODOC'
      Origin = 'SG_ASSOC.CTDVOP.TODOC'
      Size = 10
    end
    object Qr_TDVOPTONOME: TStringField
      FieldName = 'TONOME'
      Origin = 'SG_ASSOC.CTDVOP.TONOME'
    end
    object Qr_TDVOPTOTOP1: TStringField
      FieldName = 'TOTOP1'
      Origin = 'SG_ASSOC.CTDVOP.TOTOP1'
      Size = 1
    end
    object Qr_TDVOPTOOP1: TStringField
      FieldName = 'TOOP1'
      Origin = 'SG_ASSOC.CTDVOP.TOOP1'
      Size = 40
    end
    object Qr_TDVOPTOPER1: TStringField
      FieldName = 'TOPER1'
      Origin = 'SG_ASSOC.CTDVOP.TOPER1'
      Size = 1
    end
    object Qr_TDVOPTOTOP2: TStringField
      FieldName = 'TOTOP2'
      Origin = 'SG_ASSOC.CTDVOP.TOTOP2'
      Size = 1
    end
    object Qr_TDVOPTOOP2: TStringField
      FieldName = 'TOOP2'
      Origin = 'SG_ASSOC.CTDVOP.TOOP2'
      Size = 40
    end
    object Qr_TDVOPTOPER2: TStringField
      FieldName = 'TOPER2'
      Origin = 'SG_ASSOC.CTDVOP.TOPER2'
      Size = 1
    end
    object Qr_TDVOPTOTOP3: TStringField
      FieldName = 'TOTOP3'
      Origin = 'SG_ASSOC.CTDVOP.TOTOP3'
      Size = 1
    end
    object Qr_TDVOPTOOP3: TStringField
      FieldName = 'TOOP3'
      Origin = 'SG_ASSOC.CTDVOP.TOOP3'
      Size = 40
    end
    object Qr_TDVOPcampo1: TStringField
      FieldKind = fkCalculated
      FieldName = 'campo1'
      Size = 60
      Calculated = True
    end
    object Qr_TDVOPcampo2: TStringField
      FieldKind = fkCalculated
      FieldName = 'campo2'
      Size = 60
      Calculated = True
    end
    object Qr_TDVOPmoper: TStringField
      FieldKind = fkCalculated
      FieldName = 'moper'
      Size = 200
      Calculated = True
    end
    object Qr_TDVOPTOTOP0: TStringField
      FieldName = 'TOTOP0'
      Origin = 'SG_ASSOC.CTDVOP.TOTOP0'
      Size = 1
    end
    object Qr_TDVOPTOOP0: TStringField
      FieldName = 'TOOP0'
      Origin = 'SG_ASSOC.CTDVOP.TOOP0'
      Size = 40
    end
    object Qr_TDVOPTOPER0: TStringField
      FieldName = 'TOPER0'
      Origin = 'SG_ASSOC.CTDVOP.TOPER0'
      Size = 1
    end
    object Qr_TDVOPcampo0: TStringField
      FieldKind = fkCalculated
      FieldName = 'campo0'
      Size = 60
      Calculated = True
    end
    object Qr_TDVOPcampo3: TStringField
      FieldKind = fkCalculated
      FieldName = 'campo3'
      Size = 60
      Calculated = True
    end
    object Qr_TDVOPTOCONDT1: TStringField
      FieldName = 'TOCONDT1'
      Origin = 'SG_ASSOC.CTDVOP.TOCONDT1'
      Size = 1
    end
    object Qr_TDVOPTOCOND01: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'TOCOND01'
      Origin = 'SG_ASSOC.CTDVOP.TOCOND01'
      Size = 30
    end
    object Qr_TDVOPTOCONDOP: TStringField
      FieldName = 'TOCONDOP'
      Origin = 'SG_ASSOC.CTDVOP.TOCONDOP'
      Size = 5
    end
    object Qr_TDVOPTOCONDT2: TStringField
      FieldName = 'TOCONDT2'
      Origin = 'SG_ASSOC.CTDVOP.TOCONDT2'
      Size = 1
    end
    object Qr_TDVOPTOCOND02: TStringField
      FieldName = 'TOCOND02'
      Origin = 'SG_ASSOC.CTDVOP.TOCOND02'
      Size = 30
    end
    object Qr_TDVOPcond01: TStringField
      FieldKind = fkCalculated
      FieldName = 'cond01'
      Size = 60
      Calculated = True
    end
    object Qr_TDVOPcond02: TStringField
      FieldKind = fkCalculated
      FieldName = 'cond02'
      Size = 60
      Calculated = True
    end
    object Qr_TDVOPTODESOP0: TStringField
      FieldName = 'TODESOP0'
      Origin = 'SG_ASSOC.CTDVOP.TODESOP0'
      Size = 80
    end
    object Qr_TDVOPTODESOP1: TStringField
      FieldName = 'TODESOP1'
      Origin = 'SG_ASSOC.CTDVOP.TODESOP1'
      Size = 80
    end
    object Qr_TDVOPTODESOP2: TStringField
      FieldName = 'TODESOP2'
      Origin = 'SG_ASSOC.CTDVOP.TODESOP2'
      Size = 80
    end
    object Qr_TDVOPTODESOP3: TStringField
      FieldName = 'TODESOP3'
      Origin = 'SG_ASSOC.CTDVOP.TODESOP3'
      Size = 80
    end
    object Qr_TDVOPTODCOND01: TStringField
      FieldName = 'TODCOND01'
      Origin = 'SG_ASSOC.CTDVOP.TODCOND01'
      Size = 80
    end
    object Qr_TDVOPTODCOND02: TStringField
      FieldName = 'TODCOND02'
      Origin = 'SG_ASSOC.CTDVOP.TODCOND02'
      Size = 80
    end
    object Qr_TDVOPTOTDET: TFloatField
      FieldName = 'TOTDET'
      Origin = 'SG_ASSOC.CTDVOP.TOTDET'
    end
    object Qr_TDVOPTOCODIGO: TFloatField
      FieldName = 'TOCODIGO'
      Origin = 'SG_ASSOC.CTDVOP.TOCODIGO'
    end
  end
end
