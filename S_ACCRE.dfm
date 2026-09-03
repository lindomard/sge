object Frm_AcCRE: TFrm_AcCRE
  Left = 176
  Top = 106
  Width = 544
  Height = 435
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Cancelamento de Baixas de Duplicatas a Receber'
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
    Top = 89
    Width = 536
    Height = 61
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 29
      Top = 10
      Width = 129
      Height = 13
      Caption = 'Numero do Lote de Baixa..:'
    end
    object LOTE: TEdit
      Left = 160
      Top = 8
      Width = 116
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnKeyPress = LOTEKeyPress
    end
    object bbPesq: TBitBtn
      Left = 155
      Top = 33
      Width = 155
      Height = 25
      Caption = '&Pesquisar Lote'
      TabOrder = 1
      OnClick = bbPesqClick
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
    Top = 363
    Width = 536
    Height = 41
    Align = alBottom
    TabOrder = 1
    object bbExcluir: TBitBtn
      Left = 14
      Top = 9
      Width = 150
      Height = 25
      Caption = '&Excluir'
      TabOrder = 0
      OnClick = bbExcluirClick
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
    object bbCancelar: TBitBtn
      Left = 197
      Top = 8
      Width = 150
      Height = 25
      Caption = '&Cancelar a Opera'#231#227'o'
      TabOrder = 1
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
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 373
      Top = 7
      Width = 150
      Height = 25
      Caption = 'Sair'
      TabOrder = 2
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
  end
  object Panel3: TPanel
    Left = 0
    Top = 150
    Width = 536
    Height = 213
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 2
    object STG1: TStringGrid
      Left = 1
      Top = 18
      Width = 534
      Height = 194
      Align = alClient
      ColCount = 4
      DefaultRowHeight = 17
      FixedCols = 0
      RowCount = 1
      FixedRows = 0
      TabOrder = 0
      ColWidths = (
        64
        247
        126
        84)
    end
    object HeaderControl1: THeaderControl
      Left = 1
      Top = 1
      Width = 534
      Height = 17
      Sections = <
        item
          ImageIndex = -1
          Text = 'Duplicata'
          Width = 68
        end
        item
          ImageIndex = -1
          Text = 'Nome do Cliente'
          Width = 246
        end
        item
          ImageIndex = -1
          Text = 'Forma de Pagamento'
          Width = 128
        end
        item
          ImageIndex = -1
          Text = 'Valor'
          Width = 85
        end>
    end
    object pnl_Motivo: TPanel
      Left = 32
      Top = 40
      Width = 457
      Height = 137
      TabOrder = 2
      Visible = False
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 455
        Height = 107
        Align = alClient
        Caption = 'MOTIVO DE EXCLUS'#195'O OBRIGATORIO - MINIMO 20 LETRAS'
        TabOrder = 0
        object m_motivo: TMemo
          Left = 2
          Top = 15
          Width = 451
          Height = 90
          Align = alClient
          TabOrder = 0
        end
      end
      object Panel4: TPanel
        Left = 1
        Top = 108
        Width = 455
        Height = 28
        Align = alBottom
        TabOrder = 1
        object btn_confirmar: TButton
          Left = 16
          Top = 1
          Width = 185
          Height = 25
          Caption = '&Confirmar'
          TabOrder = 0
          OnClick = btn_confirmarClick
        end
        object btn_cancelar: TButton
          Left = 246
          Top = 1
          Width = 185
          Height = 25
          Caption = 'C&ancelar'
          TabOrder = 1
          OnClick = btn_cancelarClick
        end
      end
    end
  end
  object panel_filtros: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 89
    Align = alTop
    TabOrder = 3
    Visible = False
    object Label2: TLabel
      Left = 74
      Top = 21
      Width = 46
      Height = 13
      AutoSize = False
      Caption = 'Per'#237'odo:'
    end
    object Label3: TLabel
      Left = 208
      Top = 20
      Width = 6
      Height = 13
      Caption = #224
    end
    object Label4: TLabel
      Left = 13
      Top = 38
      Width = 104
      Height = 13
      Caption = 'Forma de Pagamento:'
    end
    object MDT1: TMaskEdit
      Left = 120
      Top = 16
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
      Left = 225
      Top = 16
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
    object CODFP: TEdit
      Left = 120
      Top = 34
      Width = 59
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = CODFPExit
    end
    object NOMFP: TEdit
      Left = 178
      Top = 34
      Width = 239
      Height = 19
      TabStop = False
      Color = 8454143
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
      Text = 'Todas...'
    end
  end
  object Qr_CRDup: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select FPDUP_CODEMP,FPNUMERO,FPDESD'
      ',FPDTEMIS,FPLOTE,FPCODEMP'
      ',FPTIPO,FPVALOR,FPDESC,FPJUROS,'
      ',FPCODECF,FPDEVOL,FPCODCLI'
      ' from FPCRDUP where FPCODEMP is null'
      '             and FPLOTE is null')
    Left = 270
    Top = 20
    object Qr_CRDupFPDUP_CODEMP: TFloatField
      FieldName = 'FPDUP_CODEMP'
      Origin = 'SG_ASSOC.FPCRDUP.FPDUP_CODEMP'
    end
    object Qr_CRDupFPNUMERO: TFloatField
      FieldName = 'FPNUMERO'
      Origin = 'SG_ASSOC.FPCRDUP.FPNUMERO'
    end
    object Qr_CRDupFPDESD: TStringField
      FieldName = 'FPDESD'
      Origin = 'SG_ASSOC.FPCRDUP.FPDESD'
      Size = 2
    end
    object Qr_CRDupFPDTEMIS: TDateTimeField
      FieldName = 'FPDTEMIS'
      Origin = 'SG_ASSOC.FPCRDUP.FPDTEMIS'
    end
    object Qr_CRDupFPLOTE: TFloatField
      FieldName = 'FPLOTE'
      Origin = 'SG_ASSOC.FPCRDUP.FPLOTE'
    end
    object Qr_CRDupFPCODEMP: TFloatField
      FieldName = 'FPCODEMP'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object Qr_CRDupFPTIPO: TFloatField
      FieldName = 'FPTIPO'
      Origin = 'SG_ASSOC.FPCRDUP.FPTIPO'
    end
    object Qr_CRDupFPVALOR: TFloatField
      FieldName = 'FPVALOR'
      Origin = 'SG_ASSOC.FPCRDUP.FPVALOR'
    end
    object Qr_CRDupFPDESC: TFloatField
      FieldName = 'FPDESC'
      Origin = 'SG_ASSOC.FPCRDUP.FPDESC'
    end
    object Qr_CRDupFPJUROS: TFloatField
      FieldName = 'FPJUROS'
      Origin = 'SG_ASSOC.FPCRDUP.FPJUROS'
    end
    object Qr_CRDupFPCODECF: TFloatField
      FieldName = 'FPCODECF'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODECF'
    end
    object Qr_CRDupFPDEVOL: TFloatField
      FieldName = 'FPDEVOL'
      Origin = 'SG_ASSOC.FPCRDUP.FPDEVOL'
    end
    object Qr_CRDupFPCODCLI: TFloatField
      FieldName = 'FPCODCLI'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODCLI'
    end
  end
  object Qr_FP: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select FPCODEMP,FPDATA,FPFORMA,FPNUMERO,'
      '       FPBANCO,FPSERIE,FPVALOR,FPLOTE,'
      '       FPCC,FPTIPO,FPCAIXA,FPCODLDR,'
      '       FPLOTSEQ,FPLOTSEQ_FC'
      '       ,FPDEV_CODEMP,FPDEV_CODECF,'
      '       FPDEV_NUMERO,FPDEV_DESD,FPDEV_DUP,'
      '       FPDEV_DTEMIS'
      'From FPCR where FPCODEMP is null'
      'and FPLOTE is null'
      '')
    Left = 314
    Top = 24
    object Qr_FPFPCODEMP: TFloatField
      FieldName = 'FPCODEMP'
      Origin = 'SG_ASSOC.FPCR.FPCODEMP'
    end
    object Qr_FPFPDATA: TDateTimeField
      FieldName = 'FPDATA'
      Origin = 'SG_ASSOC.FPCR.FPDATA'
    end
    object Qr_FPFPFORMA: TFloatField
      FieldName = 'FPFORMA'
      Origin = 'SG_ASSOC.FPCR.FPFORMA'
    end
    object Qr_FPFPNUMERO: TFloatField
      FieldName = 'FPNUMERO'
      Origin = 'SG_ASSOC.FPCR.FPNUMERO'
    end
    object Qr_FPFPBANCO: TFloatField
      FieldName = 'FPBANCO'
      Origin = 'SG_ASSOC.FPCR.FPBANCO'
    end
    object Qr_FPFPSERIE: TStringField
      FieldName = 'FPSERIE'
      Origin = 'SG_ASSOC.FPCR.FPSERIE'
    end
    object Qr_FPFPVALOR: TFloatField
      FieldName = 'FPVALOR'
      Origin = 'SG_ASSOC.FPCR.FPVALOR'
    end
    object Qr_FPFPLOTE: TFloatField
      FieldName = 'FPLOTE'
      Origin = 'SG_ASSOC.FPCR.FPLOTE'
    end
    object Qr_FPFPCC: TStringField
      FieldName = 'FPCC'
      Origin = 'SG_ASSOC.FPCR.FPCC'
    end
    object Qr_FPFPTIPO: TFloatField
      FieldName = 'FPTIPO'
      Origin = 'SG_ASSOC.FPCR.FPTIPO'
    end
    object Qr_FPFPCAIXA: TFloatField
      FieldName = 'FPCAIXA'
      Origin = 'SG_ASSOC.FPCR.FPCAIXA'
    end
    object Qr_FPFPCODLDR: TFloatField
      FieldName = 'FPCODLDR'
      Origin = 'SG_ASSOC.FPCR.FPCODLDR'
    end
    object Qr_FPFPLOTSEQ: TFloatField
      FieldName = 'FPLOTSEQ'
      Origin = 'SG_ASSOC.FPCR.FPLOTSEQ'
    end
    object Qr_FPFPLOTSEQ_FC: TFloatField
      FieldName = 'FPLOTSEQ_FC'
      Origin = 'SG_ASSOC.FPCR.FPLOTSEQ_FC'
    end
    object Qr_FPFPDEV_CODEMP: TFloatField
      FieldName = 'FPDEV_CODEMP'
      Origin = 'SG_ASSOC.FPCR.FPDEV_CODEMP'
    end
    object Qr_FPFPDEV_CODECF: TFloatField
      FieldName = 'FPDEV_CODECF'
      Origin = 'SG_ASSOC.FPCR.FPDEV_CODECF'
    end
    object Qr_FPFPDEV_NUMERO: TFloatField
      FieldName = 'FPDEV_NUMERO'
      Origin = 'SG_ASSOC.FPCR.FPDEV_NUMERO'
    end
    object Qr_FPFPDEV_DESD: TStringField
      FieldName = 'FPDEV_DESD'
      Origin = 'SG_ASSOC.FPCR.FPDEV_DESD'
      Size = 2
    end
    object Qr_FPFPDEV_DUP: TFloatField
      FieldName = 'FPDEV_DUP'
      Origin = 'SG_ASSOC.FPCR.FPDEV_DUP'
    end
    object Qr_FPFPDEV_DTEMIS: TDateTimeField
      FieldName = 'FPDEV_DTEMIS'
      Origin = 'SG_ASSOC.FPCR.FPDEV_DTEMIS'
    end
    object Qr_FPFPTARBAN: TFloatField
      FieldName = 'FPTARBAN'
    end
    object Qr_FPFPCODLDR_TARBAN: TFloatField
      FieldName = 'FPCODLDR_TARBAN'
    end
  end
end
