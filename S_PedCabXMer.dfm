object Frm_PedCabXMer: TFrm_PedCabXMer
  Left = 192
  Top = 114
  Width = 579
  Height = 375
  Caption = 'Frm_PedCabXMer'
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
    Top = 303
    Width = 571
    Height = 41
    Align = alBottom
    TabOrder = 0
    object bbVerificar: TBitBtn
      Left = 17
      Top = 9
      Width = 161
      Height = 25
      Caption = 'Verificar'
      TabOrder = 0
      OnClick = bbVerificarClick
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
    object bbRecalcular: TBitBtn
      Left = 187
      Top = 9
      Width = 161
      Height = 25
      Caption = 'Recalcular Mercadorias'
      TabOrder = 1
      Visible = False
      OnClick = bbRecalcularClick
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
    object BitBtn1: TBitBtn
      Left = 362
      Top = 9
      Width = 161
      Height = 25
      Caption = '&Sair'
      TabOrder = 2
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
        03333377777777777F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F333333337F333301111111110333337F333333337F33330111111111
        0333337F3333333F7F333301111111B10333337F333333737F33330111111111
        0333337F333333337F333301111111110333337F33FFFFF37F3333011EEEEE11
        0333337F377777F37F3333011EEEEE110333337F37FFF7F37F3333011EEEEE11
        0333337F377777337F333301111111110333337F333333337F33330111111111
        0333337FFFFFFFFF7F3333000000000003333377777777777333}
      NumGlyphs = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 571
    Height = 70
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 9
      Top = 13
      Width = 74
      Height = 13
      Caption = 'Data Inicial.:'
    end
    object Label2: TLabel
      Left = 213
      Top = 13
      Width = 67
      Height = 13
      Caption = 'Data Final.:'
    end
    object MDT1: TMaskEdit
      Left = 84
      Top = 10
      Width = 91
      Height = 21
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 0
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 287
      Top = 11
      Width = 93
      Height = 21
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object GroupBox2: TGroupBox
      Left = 385
      Top = 1
      Width = 185
      Height = 68
      Align = alRight
      Caption = 'Itens a Serem Verificados:'
      TabOrder = 2
      object CB_PRODSERV: TCheckBox
        Left = 8
        Top = 16
        Width = 153
        Height = 17
        Caption = 'Produtos/Servicos'
        Checked = True
        State = cbChecked
        TabOrder = 0
      end
      object CB_NFS: TCheckBox
        Left = 8
        Top = 31
        Width = 153
        Height = 17
        Caption = 'Notas Fiscais'
        Checked = True
        State = cbChecked
        TabOrder = 1
      end
      object CB_DUPLIC: TCheckBox
        Left = 7
        Top = 48
        Width = 153
        Height = 17
        Caption = 'Duplicatas'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 70
    Width = 571
    Height = 233
    Align = alClient
    Caption = 'Pedidos Divergentes:'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 567
      Height = 216
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
          FieldName = 'TPCODEMP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TPCHAVE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TPTOTCAB'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TPTOTTFRE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TPTOTMER'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TPTOTSER'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TPTOTDUP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TPTOTNFS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TPTIPO'
          Visible = True
        end>
    end
  end
  object Tb_Ped: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      ' Select 0 as TPCODEMP'
      '       ,0 AS TPCHAVE'
      '       ,0 as TPTOTCAB'
      '       ,0 as TPTOTTFRE'
      '       ,0 AS TPTOTMER'
      '       ,0 AS TPTOTSER'
      '       ,0 AS TPTOTDUP'
      '       ,sum(NSTOTNOTA) AS TPTOTNFS'
      '       ,0 AS TPTIPO'
      '       from CADNS'
      '       where NSSTATUS<>9 and NSCHAVEP>0'
      '    and NSDTEMIS>='#39'01/01/2009'#39
      '    and NSDTEMIS<='#39'01/01/2009'#39
      ' group by NSCHAVEP')
    Left = 112
    Top = 56
    object Tb_PedTPCODEMP: TFloatField
      DisplayLabel = 'Empresa'
      FieldName = 'TPCODEMP'
    end
    object Tb_PedTPCHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'TPCHAVE'
    end
    object Tb_PedTPTOTCAB: TFloatField
      DisplayLabel = 'Cabecalho'
      FieldName = 'TPTOTCAB'
    end
    object Tb_PedTPTOTTFRE: TFloatField
      DisplayLabel = 'Frete'
      FieldName = 'TPTOTTFRE'
    end
    object Tb_PedTPTOTMER: TFloatField
      DisplayLabel = 'Mercadorias'
      FieldName = 'TPTOTMER'
    end
    object Tb_PedTPTOTSER: TFloatField
      DisplayLabel = 'Servicos'
      FieldName = 'TPTOTSER'
    end
    object Tb_PedTPTOTDUP: TFloatField
      DisplayLabel = 'Duplicatas'
      FieldName = 'TPTOTDUP'
    end
    object Tb_PedTPTOTNFS: TFloatField
      DisplayLabel = 'Notas Fiscais'
      FieldName = 'TPTOTNFS'
    end
    object Tb_PedTPTIPO: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'TPTIPO'
    end
  end
  object Src_Ped: TDataSource
    DataSet = Tb_Ped
    Left = 168
    Top = 24
  end
end
