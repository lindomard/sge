object Frm_TrelUF: TFrm_TrelUF
  Left = 27
  Top = 33
  Width = 727
  Height = 523
  Caption = 'Relat'#243'rios Tabulados'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 455
    Width = 719
    Height = 41
    Align = alBottom
    TabOrder = 1
    object BBINCLUIR: TBitBtn
      Left = 2
      Top = 8
      Width = 120
      Height = 25
      Caption = '&Incluir Rel'#225'torio'
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
    object BBGRAVAR: TBitBtn
      Left = 241
      Top = 8
      Width = 120
      Height = 25
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 1
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
      Left = 360
      Top = 8
      Width = 120
      Height = 25
      Caption = '&Cancelar Opera'#231'ao'
      Enabled = False
      TabOrder = 2
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
      Left = 479
      Top = 8
      Width = 120
      Height = 25
      Caption = '&Excluir Relat'#243'rio'
      TabOrder = 3
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
      Left = 598
      Top = 8
      Width = 120
      Height = 25
      Caption = '&Sair'
      TabOrder = 4
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
    object BBALTERAR: TBitBtn
      Left = 121
      Top = 8
      Width = 120
      Height = 25
      Caption = 'Alterar Relat'#243'rio'
      TabOrder = 5
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 719
    Height = 455
    Align = alClient
    TabOrder = 0
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 224
      Height = 453
      Align = alLeft
      Caption = 'Relat'#243'rios Tabulados'
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 220
        Height = 436
        Align = alClient
        DataSource = Src_Rel
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDrawColumnCell = DBGrid1DrawColumnCell
        OnDblClick = DBGrid1DblClick
        OnEnter = DBGrid1Enter
        OnKeyDown = DBGrid1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'TCNOME'
            Title.Caption = 'Nome do Relat'#243'rio'
            Visible = True
          end>
      end
    end
    object GroupBox2: TGroupBox
      Left = 225
      Top = 1
      Width = 493
      Height = 453
      Align = alClient
      Caption = 'Informa'#231'oes Sobre o Relat'#243'rio:'
      Enabled = False
      TabOrder = 1
      object Label1: TLabel
        Left = 8
        Top = 18
        Width = 40
        Height = 13
        Caption = 'Nome...:'
      end
      object Label2: TLabel
        Left = 7
        Top = 173
        Width = 182
        Height = 13
        Caption = 'Quantidade de Linhas por Pagina.......:'
      end
      object Label3: TLabel
        Left = 8
        Top = 195
        Width = 180
        Height = 13
        Caption = 'Quantidade de Caracteres por Linha..:'
      end
      object Label4: TLabel
        Left = 8
        Top = 215
        Width = 180
        Height = 13
        Caption = 'Quantidade de Colunas......................:'
      end
      object Label5: TLabel
        Left = 279
        Top = 216
        Width = 27
        Height = 13
        Caption = 'Pular '
      end
      object Label6: TLabel
        Left = 358
        Top = 216
        Width = 127
        Height = 13
        Caption = 'Caracteres de uma p/outra'
      end
      object RGTFONTE: TRadioGroup
        Left = 7
        Top = 38
        Width = 450
        Height = 74
        Caption = 'Fonte Padrao:'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          '1&0cpp Normal Padrao 80 Colunas'
          '1&2cpp  Padrao 96 colunas'
          '1&7cpp Padrao 136 Colunas'
          '2&0cpp Padrao 160 Colunas'
          '&Negrito'
          '&Expandido Padrao 40 Colunas')
        TabOrder = 1
      end
      object RGENTREL: TRadioGroup
        Left = 8
        Top = 116
        Width = 450
        Height = 47
        Caption = 'Tamanho das Entrelinhas:'
        Columns = 2
        Items.Strings = (
          '6 Linhas por Polegada(Padrao)'
          '8 Linhas por Polegada')
        TabOrder = 2
      end
      object QTDLP: TEdit
        Left = 194
        Top = 166
        Width = 80
        Height = 21
        TabOrder = 3
        OnKeyPress = QTDLPKeyPress
      end
      object QTDCOL: TEdit
        Left = 194
        Top = 188
        Width = 80
        Height = 21
        TabOrder = 4
        OnKeyPress = QTDLPKeyPress
      end
      object GroupBox3: TGroupBox
        Left = 11
        Top = 382
        Width = 462
        Height = 64
        Caption = 'Observa'#231'oes:'
        TabOrder = 9
        object Memo1: TMemo
          Left = 2
          Top = 15
          Width = 458
          Height = 47
          Align = alClient
          TabOrder = 0
        end
      end
      object NOMREL: TEdit
        Left = 55
        Top = 14
        Width = 127
        Height = 21
        TabOrder = 0
      end
      object NUMCOL: TEdit
        Left = 194
        Top = 211
        Width = 81
        Height = 21
        TabOrder = 5
        OnKeyPress = QTDLPKeyPress
      end
      object INTCOL: TEdit
        Left = 307
        Top = 211
        Width = 47
        Height = 21
        TabOrder = 6
        OnKeyPress = QTDLPKeyPress
      end
      object RG_TPCOL: TRadioGroup
        Left = 8
        Top = 233
        Width = 465
        Height = 33
        Caption = 'Tipo de Coluna'
        Columns = 2
        ItemIndex = 0
        Items.Strings = (
          '&Sequencial '
          '&Lado a Lado Mesmo Valor')
        TabOrder = 7
      end
      object RG_ORDEM: TRadioGroup
        Left = 10
        Top = 267
        Width = 463
        Height = 100
        Caption = 'Ordem de Impressao:'
        Columns = 2
        TabOrder = 8
      end
      object CB_MPAGGR: TCheckBox
        Left = 12
        Top = 368
        Width = 245
        Height = 17
        Caption = 'Avan'#231'ar Pagina ao Trocar de Grupo'
        TabOrder = 10
      end
    end
  end
  object Qr_Rel: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CTDVCA Where TCCODEMP is null')
    Left = 344
    Top = 16
    object Qr_RelTCCODEMP: TFloatField
      FieldName = 'TCCODEMP'
      Origin = 'SG_ASSOC.CTDVCA.TCCODEMP'
    end
    object Qr_RelTCDOC: TStringField
      FieldName = 'TCDOC'
      Origin = 'SG_ASSOC.CTDVCA.TCDOC'
      Size = 10
    end
    object Qr_RelTCNOME: TStringField
      FieldName = 'TCNOME'
      Origin = 'SG_ASSOC.CTDVCA.TCNOME'
    end
    object Qr_RelTCQTDLIN: TIntegerField
      FieldName = 'TCQTDLIN'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDLIN'
    end
    object Qr_RelTCQTDCOL: TIntegerField
      FieldName = 'TCQTDCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDCOL'
    end
    object Qr_RelTCFPADRAO: TIntegerField
      FieldName = 'TCFPADRAO'
      Origin = 'SG_ASSOC.CTDVCA.TCFPADRAO'
    end
    object Qr_RelTCQTDITEM: TIntegerField
      FieldName = 'TCQTDITEM'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDITEM'
    end
    object Qr_RelTCQTDLPP: TIntegerField
      FieldName = 'TCQTDLPP'
      Origin = 'SG_ASSOC.CTDVCA.TCQTDLPP'
    end
    object Qr_RelTCOBS: TStringField
      FieldName = 'TCOBS'
      Origin = 'SG_ASSOC.CTDVCA.TCOBS'
      Size = 200
    end
    object Qr_RelTCNUMCOL: TIntegerField
      FieldName = 'TCNUMCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCNUMCOL'
    end
    object Qr_RelTCINTCOL: TIntegerField
      FieldName = 'TCINTCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCINTCOL'
    end
    object Qr_RelTCTPCOL: TIntegerField
      DisplayLabel = 'Tipo Coluna'
      FieldName = 'TCTPCOL'
      Origin = 'SG_ASSOC.CTDVCA.TCTPCOL'
    end
    object Qr_RelTCORDEM: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'TCORDEM'
      Origin = 'SG_ASSOC.CTDVCA.TCORDEM'
    end
    object Qr_RelTCMPAGGR: TIntegerField
      FieldName = 'TCMPAGGR'
      Origin = 'SG_ASSOC.CTDVCA.TCMPAGGR'
    end
  end
  object Src_Rel: TDataSource
    DataSet = Qr_Rel
    OnDataChange = Src_RelDataChange
    Left = 376
    Top = 16
  end
end
