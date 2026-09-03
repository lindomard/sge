object Frm_CobEle_Remessa_Local: TFrm_CobEle_Remessa_Local
  Left = 6
  Top = 108
  Width = 755
  Height = 375
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Consulta de Lote de Remessa'
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
    Width = 739
    Height = 105
    Align = alTop
    TabOrder = 0
    object periodo: TLabel
      Left = 179
      Top = 12
      Width = 56
      Height = 13
      Caption = 'Per'#237'odo de:'
    end
    object a: TLabel
      Left = 365
      Top = 12
      Width = 6
      Height = 13
      Caption = 'a'
      Visible = False
    end
    object codcliente: TLabel
      Left = 151
      Top = 35
      Width = 85
      Height = 13
      Caption = 'C'#243'digo do Banco:'
    end
    object Label1: TLabel
      Left = 186
      Top = 59
      Width = 49
      Height = 13
      Caption = 'da Chave:'
    end
    object Label2: TLabel
      Left = 342
      Top = 59
      Width = 61
      Height = 13
      Caption = 'at'#233' a Chave:'
    end
    object lbl_cheio: TLabel
      Left = 551
      Top = 81
      Width = 42
      Height = 13
      Caption = 'lbl_cheio'
    end
    object MDT1: TMaskEdit
      Left = 246
      Top = 9
      Width = 87
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
      Left = 408
      Top = 9
      Width = 87
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object CODBCO: TEdit
      Left = 246
      Top = 31
      Width = 87
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = CODBCOExit
      OnKeyPress = CODBCOKeyPress
    end
    object NOMBCO: TEdit
      Left = 332
      Top = 31
      Width = 279
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 3
      Text = 'Todos...'
    end
    object MCHAVEI: TEdit
      Left = 246
      Top = 53
      Width = 87
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = MCHAVEIExit
    end
    object MCHAVEF: TEdit
      Left = 408
      Top = 53
      Width = 87
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      OnExit = MCHAVEFExit
    end
    object bbLocalizar: TBitBtn
      Left = 271
      Top = 76
      Width = 185
      Height = 25
      Caption = '&Localizar'
      TabOrder = 6
      OnClick = bbLocalizarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 296
    Width = 739
    Height = 41
    Align = alBottom
    TabOrder = 1
    object bbFechar: TBitBtn
      Left = 271
      Top = 4
      Width = 185
      Height = 35
      Caption = '&Fechar'
      TabOrder = 0
      OnClick = bbFecharClick
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
  object DBGrid1: TDBGrid
    Left = 0
    Top = 105
    Width = 739
    Height = 191
    Align = alClient
    DataSource = Src_RemBco
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'RECHAVE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RECODBCO'
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BCBANCO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REVALDUP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RELAYOUT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'REDATREM'
        Width = 85
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RESTATUS'
        Width = 39
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RECODEMP'
        Width = 48
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RELOTSEQ'
        Width = 50
        Visible = True
      end>
  end
  object Src_RemBco: TDataSource
    DataSet = Qr_RemBco
    Left = 480
    Top = 64
  end
  object Qr_RemBco: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select  sum(REVALDUP) AS REVALDUP'
      '       ,min(RECODEMP) as RECODEMP'
      '       ,RECODBCO      AS RECODBCO'
      '       ,RELOTSEQ      AS RELOTSEQ'
      '       ,RECHAVE       AS RECHAVE'
      '       ,RELAYOUT      AS RELAYOUT'
      '       ,TO_CHAR(REDATREM,'#39'DD/MM/YYYY'#39') AS REDATREM '
      '       ,TO_CHAR(REDATREM,'#39'HH:MM:SS'#39') AS REHORREM '
      '       ,RESTATUS      AS RESTATUS'
      '       ,BCBANCO       AS BCBANCO'
      'from CADREMBCO,CADBCO'
      'WHERE BCCODEMP=RECODEMP'
      'AND   BCCODBCO=RECODBCO'
      'group by RECODBCO'
      '       ,RELOTSEQ'
      '       ,RECHAVE'
      '       ,RELAYOUT'
      '       ,REDATREM'
      '       ,RESTATUS'
      '       ,BCBANCO')
    Left = 512
    Top = 64
    object Qr_RemBcoREVALDUP: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'REVALDUP'
      Origin = 'SG_ASSOC.CADREMBCO.REVALDUP'
    end
    object Qr_RemBcoRECODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'RECODEMP'
      Origin = 'SG_ASSOC.CADREMBCO.RECODEMP'
    end
    object Qr_RemBcoRECODBCO: TFloatField
      DisplayLabel = 'C'#243'd.Bco.'
      FieldName = 'RECODBCO'
      Origin = 'SG_ASSOC.CADREMBCO.RECODBCO'
    end
    object Qr_RemBcoRELOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'RELOTSEQ'
      Origin = 'SG_ASSOC.CADREMBCO.RELOTSEQ'
    end
    object Qr_RemBcoRECHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'RECHAVE'
      Origin = 'SG_ASSOC.CADREMBCO.RECHAVE'
    end
    object Qr_RemBcoRELAYOUT: TFloatField
      DisplayLabel = 'Layout'
      FieldName = 'RELAYOUT'
      Origin = 'SG_ASSOC.CADREMBCO.RELAYOUT'
    end
    object Qr_RemBcoRESTATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'RESTATUS'
      Origin = 'SG_ASSOC.CADREMBCO.RESTATUS'
    end
    object Qr_RemBcoBCBANCO: TStringField
      DisplayLabel = 'Nome do Banco'
      FieldName = 'BCBANCO'
      Origin = 'SG_ASSOC.CADBCO.BCBANCO'
      Size = 40
    end
    object Qr_RemBcoREHORREM: TStringField
      DisplayLabel = 'Hora da Remessa'
      FieldName = 'REHORREM'
      Size = 8
    end
    object Qr_RemBcoREDATREM: TStringField
      DisplayLabel = 'Data da Remessa'
      FieldName = 'REDATREM'
      Size = 10
    end
  end
end
