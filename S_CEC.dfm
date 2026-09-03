object Frm_CEC: TFrm_CEC
  Left = 89
  Top = 107
  Width = 647
  Height = 375
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Confer'#234'ncia Eletronica'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
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
    Width = 631
    Height = 97
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 12
      Top = 7
      Width = 113
      Height = 13
      Caption = 'N'#250'mero do Pedido.:'
    end
    object Label2: TLabel
      Left = 13
      Top = 29
      Width = 113
      Height = 13
      Caption = 'Data do Pedido.....:'
    end
    object Label4: TLabel
      Left = 14
      Top = 52
      Width = 111
      Height = 13
      Caption = 'Valor do Pedido....:'
    end
    object CHAVE: TEdit
      Left = 130
      Top = 4
      Width = 80
      Height = 21
      TabOrder = 0
      OnExit = CHAVEExit
      OnKeyPress = CHAVEKeyPress
    end
    object BitBtn1: TBitBtn
      Left = 130
      Top = 70
      Width = 170
      Height = 25
      Cursor = crHandPoint
      Caption = '&Inicializar a Confer'#234'ncia'
      TabOrder = 1
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333333333333333333333FFFFFFFFF333333300000000
        0333333777777777F33333330888888803333337FFFFFFF7F333333307777777
        0333333777777777F33333330FFFFFFF03333337F3F3FFF7F33333330F9F000F
        03333337F7377737F33333330FFFFFFF03333337F3333337F33333330FFFFFFF
        03333337F3FFFFF7F33333330F40004F03333337F77777F7F33333330F00000F
        03333337F7F337F7F33333330F00000F03333337F7FFF7F7F33333330F40004F
        03333337F7777737F33333330FFFFFFF03333337FFFFFFF7F333333300000000
        0333333777777777333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 304
      Top = 70
      Width = 170
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair'
      TabOrder = 2
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
    object DATAP: TEdit
      Left = 130
      Top = 26
      Width = 80
      Height = 21
      Enabled = False
      TabOrder = 3
    end
    object VALOR: TEdit
      Left = 130
      Top = 48
      Width = 80
      Height = 21
      Enabled = False
      TabOrder = 4
    end
    object NOMASS: TEdit
      Left = 212
      Top = 5
      Width = 269
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 5
    end
    object BitBtn5: TBitBtn
      Left = 488
      Top = 4
      Width = 99
      Height = 25
      Cursor = crHandPoint
      Caption = '&Nova Leitura'
      TabOrder = 6
      OnClick = BitBtn5Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 296
    Width = 631
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BitBtn3: TBitBtn
      Left = 155
      Top = 8
      Width = 150
      Height = 25
      Cursor = crHandPoint
      Caption = '&Apurar Conferencia'
      TabOrder = 0
      OnClick = BitBtn3Click
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
    object BitBtn4: TBitBtn
      Left = 309
      Top = 8
      Width = 150
      Height = 25
      Cursor = crHandPoint
      Caption = '&Sair do Programa'
      TabOrder = 1
      OnClick = BitBtn4Click
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
  object Panel3: TPanel
    Left = 0
    Top = 263
    Width = 631
    Height = 33
    Align = alBottom
    Caption = 'Panel3'
    TabOrder = 2
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 629
      Height = 31
      DataSource = Src_EleLei
      Align = alClient
      TabOrder = 0
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 97
    Width = 631
    Height = 166
    Align = alClient
    DataSource = Src_EleLei
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnColEnter = DBGrid1ColEnter
    OnKeyPress = DBGrid1KeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CECODPRO'
        Width = 136
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CEQTD'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Visible = True
      end>
  end
  object Tb_CEleLei: TQuery
    CachedUpdates = True
    AfterInsert = Tb_CEleLeiAfterInsert
    BeforePost = Tb_CEleLeiBeforePost
    OnCalcFields = Tb_CEleLeiCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CELELEI where CEITEM is null')
    UpdateObject = U_EleLei
    Left = 408
    Top = 16
    object Tb_CEleLeiCEITEM: TFloatField
      DisplayLabel = 'Item'
      FieldName = 'CEITEM'
      Origin = 'SG_ASSOC.CELELEI.CEITEM'
    end
    object Tb_CEleLeiCECODPRO: TFloatField
      DisplayLabel = 'C'#243'digo de Barra'
      FieldName = 'CECODPRO'
      Origin = 'SG_ASSOC.CELELEI.CECODPRO'
    end
    object Tb_CEleLeiCEQTD: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'CEQTD'
      Origin = 'SG_ASSOC.CELELEI.CEQTD'
    end
    object Tb_CEleLeidescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'descricao'
      Size = 40
      Calculated = True
    end
  end
  object U_EleLei: TUpdateSQL
    ModifySQL.Strings = (
      'update CELELEI'
      'set'
      '  CEITEM = :CEITEM,'
      '  CECODPRO = :CECODPRO,'
      '  CEQTD = :CEQTD'
      'where'
      '  CEITEM = :OLD_CEITEM')
    InsertSQL.Strings = (
      'insert into CELELEI'
      '  (CEITEM, CECODPRO, CEQTD)'
      'values'
      '  (:CEITEM, :CECODPRO, :CEQTD)')
    DeleteSQL.Strings = (
      'delete from CELELEI'
      'where'
      '  CEITEM = :OLD_CEITEM')
    Left = 436
    Top = 16
  end
  object Src_EleLei: TDataSource
    DataSet = Tb_CEleLei
    Left = 466
    Top = 16
  end
  object Tb_CeleRes: TQuery
    CachedUpdates = True
    OnCalcFields = Tb_CeleResCalcFields
    DatabaseName = 'SG_ASSOC'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From CELERES where CECODBAR is null')
    UpdateObject = U_CeleRes
    Left = 414
    Top = 54
    object Tb_CeleResCECODBAR: TFloatField
      DisplayLabel = 'C'#243'digo de Barra'
      FieldName = 'CECODBAR'
      Origin = 'SG_ASSOC.CELERES.CECODBAR'
    end
    object Tb_CeleResCEQTDL: TFloatField
      DisplayLabel = 'Quantidade Lidos'
      FieldName = 'CEQTDL'
      Origin = 'SG_ASSOC.CELERES.CEQTDL'
    end
    object Tb_CeleResCEQTDP: TFloatField
      DisplayLabel = 'Quantidade Pedido'
      FieldName = 'CEQTDP'
      Origin = 'SG_ASSOC.CELERES.CEQTDP'
    end
    object Tb_CeleResdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'descricao'
      Size = 40
      Calculated = True
    end
  end
  object U_CeleRes: TUpdateSQL
    ModifySQL.Strings = (
      'update CELERES'
      'set'
      '  CECODBAR = :CECODBAR,'
      '  CEQTDL = :CEQTDL,'
      '  CEQTDP = :CEQTDP'
      'where'
      '  CECODBAR = :OLD_CECODBAR')
    InsertSQL.Strings = (
      'insert into CELERES'
      '  (CECODBAR, CEQTDL, CEQTDP)'
      'values'
      '  (:CECODBAR, :CEQTDL, :CEQTDP)')
    DeleteSQL.Strings = (
      'delete from CELERES'
      'where'
      '  CECODBAR = :OLD_CECODBAR')
    Left = 448
    Top = 54
  end
  object Src_CeleRes: TDataSource
    DataSet = Tb_CeleRes
    Left = 480
    Top = 56
  end
end
