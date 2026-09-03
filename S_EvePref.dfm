object Frm_EvePref: TFrm_EvePref
  Left = 192
  Top = 111
  Width = 544
  Height = 324
  Caption = 'Eventos Pr'#233'-Fixados'
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
    Top = 252
    Width = 536
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 456
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 1
      OnClick = BitBtn1Click
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
    object DBNavigator1: TDBNavigator
      Left = 3
      Top = 8
      Width = 450
      Height = 25
      DataSource = DM2.Src_EvePref
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert, nbDelete, nbEdit, nbPost, nbCancel]
      TabOrder = 0
      BeforeAction = DBNavigator1BeforeAction
    end
  end
  object Gb_Geral: TGroupBox
    Left = 0
    Top = 0
    Width = 536
    Height = 123
    Align = alTop
    Caption = 'Eventos Pre-Fixados Geral:'
    TabOrder = 1
    Visible = False
    object DBGrid2: TDBGrid
      Left = 2
      Top = 15
      Width = 532
      Height = 106
      Align = alClient
      DataSource = Src_EvePref
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
          FieldName = 'EPCODEVE'
          Width = 92
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EPQUANT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomeve'
          Width = 329
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 123
    Width = 536
    Height = 129
    Align = alClient
    Caption = 'Eventos Pr'#233'-Fixados:'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 532
      Height = 112
      Align = alClient
      DataSource = DM2.Src_EvePref
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      OnColExit = DBGrid1ColExit
      Columns = <
        item
          Expanded = False
          FieldName = 'EPCODEVE'
          Width = 93
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EPQUANT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomeve'
          Width = 332
          Visible = True
        end>
    end
  end
  object Src_EvePref: TDataSource
    DataSet = Qr_EvePref
    Left = 296
    Top = 40
  end
  object Qr_EvePref: TQuery
    OnCalcFields = Qr_EvePrefCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from EVEPREF where EPCODEMP is null')
    Left = 216
    Top = 56
    object Qr_EvePrefEPCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'EPCODEMP'
      Origin = 'SG_ASSOC.EVEPREF.EPCODEMP'
    end
    object Qr_EvePrefEPLOCAL: TFloatField
      DisplayLabel = 'Local'
      FieldName = 'EPLOCAL'
      Origin = 'SG_ASSOC.EVEPREF.EPLOCAL'
    end
    object Qr_EvePrefEPCODCLI: TFloatField
      DisplayLabel = 'C'#243'digo Funcion'#225'rio'
      FieldName = 'EPCODCLI'
      Origin = 'SG_ASSOC.EVEPREF.EPCODCLI'
    end
    object Qr_EvePrefEPCODEVE: TFloatField
      DisplayLabel = 'C'#243'digo Evento'
      FieldName = 'EPCODEVE'
      Origin = 'SG_ASSOC.EVEPREF.EPCODEVE'
    end
    object Qr_EvePrefnomeve: TStringField
      DisplayLabel = 'Nome do Evento'
      FieldKind = fkCalculated
      FieldName = 'nomeve'
      Size = 40
      Calculated = True
    end
    object Qr_EvePrefEPQUANT: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'EPQUANT'
      Origin = 'SG_ASSOC.EVEPREF.EPQUANT'
    end
  end
end
