object frm_gerpedcadp02: Tfrm_gerpedcadp02
  Left = 192
  Top = 124
  Width = 928
  Height = 480
  Caption = 'Gerar cabecalho/formas de pagamentos dos pedidos'
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
    Top = 0
    Width = 920
    Height = 169
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 1
      Top = 18
      Width = 120
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'digo do cliente:'
    end
    object Label2: TLabel
      Left = 1
      Top = 36
      Width = 120
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Vendedor:'
    end
    object Label3: TLabel
      Left = 1
      Top = 54
      Width = 120
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Plano de Vendas:'
    end
    object Label4: TLabel
      Left = 1
      Top = 97
      Width = 120
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Deixar Pedido:'
    end
    object Label5: TLabel
      Left = 1
      Top = 72
      Width = 120
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Forma de Pagamento:'
    end
    object edt_codcli: TEdit
      Left = 124
      Top = 16
      Width = 77
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = edt_codcliExit
      OnKeyPress = edt_codcliKeyPress
    end
    object edt_nomcli: TEdit
      Left = 200
      Top = 16
      Width = 481
      Height = 19
      TabStop = False
      Color = 16764108
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 1
    end
    object edt_codven: TEdit
      Left = 124
      Top = 34
      Width = 77
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = edt_codvenExit
      OnKeyPress = edt_codvenKeyPress
    end
    object edt_nomven: TEdit
      Left = 200
      Top = 34
      Width = 481
      Height = 19
      TabStop = False
      Color = 16764108
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 3
    end
    object edt_codcondpag: TEdit
      Left = 124
      Top = 52
      Width = 77
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = edt_codcondpagExit
      OnKeyDown = edt_codcondpagKeyDown
    end
    object edt_nomcond: TEdit
      Left = 200
      Top = 52
      Width = 481
      Height = 19
      TabStop = False
      Color = 16764108
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 5
    end
    object CB_EMIDOC: TComboBox
      Left = 124
      Top = 93
      Width = 145
      Height = 21
      ItemHeight = 13
      ItemIndex = 1
      TabOrder = 6
      Text = 'Emitido'
      Items.Strings = (
        'Pendente'
        'Emitido')
    end
    object Memo1: TMemo
      Left = 734
      Top = 1
      Width = 185
      Height = 167
      Align = alRight
      Alignment = taCenter
      Color = clRed
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      Lines.Strings = (
        'Observacoes '
        'coloque o computador'
        'na data do caixa')
      ParentFont = False
      ReadOnly = True
      TabOrder = 7
    end
    object bbProcessar: TBitBtn
      Left = 72
      Top = 128
      Width = 153
      Height = 25
      Caption = 'Processar'
      TabOrder = 8
      OnClick = bbProcessarClick
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
    object bbSair: TBitBtn
      Left = 320
      Top = 128
      Width = 153
      Height = 25
      Caption = 'Sair'
      TabOrder = 9
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
    object edt_codfp: TEdit
      Left = 124
      Top = 70
      Width = 77
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 10
      OnExit = edt_codfpExit
      OnKeyPress = edt_codfpKeyPress
    end
    object edt_nomfp: TEdit
      Left = 200
      Top = 70
      Width = 481
      Height = 19
      TabStop = False
      Color = 16764108
      Ctl3D = False
      ParentCtl3D = False
      ReadOnly = True
      TabOrder = 11
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 169
    Width = 920
    Height = 239
    Align = alClient
    Caption = 'Pedidos sem cabecalhos:'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 39
      Width = 916
      Height = 198
      Align = alClient
      DataSource = src_ped
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'MARCADO'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2CHAVE'
          Width = 101
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2CODEMP'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'P2LOTSEQ'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MAXIMO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'MINIMO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDMAX'
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'QTDMIN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'TOTPED'
          Visible = True
        end>
    end
    object Panel3: TPanel
      Left = 2
      Top = 15
      Width = 916
      Height = 24
      Align = alTop
      TabOrder = 1
      object cb_todos: TCheckBox
        Left = 20
        Top = 7
        Width = 97
        Height = 17
        Caption = 'Todos'
        Checked = True
        State = cbChecked
        TabOrder = 0
        OnClick = cb_todosClick
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 408
    Width = 920
    Height = 41
    Align = alBottom
    Caption = 'Panel2'
    TabOrder = 2
  end
  object qr_ped: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'select '#39'x'#39' as marcado,p2chave,max(P2CODPRO) AS MAXIMO, min(P2COD' +
        'PRO) AS MINIMO,max(P2QTD) as qtdmax, min(p2qtd) as qtdmin'
      ',sum(p2totliq) as totped'
      ' from cadp02,cadp01'
      ' where p1chave(+)=p2chave'
      ' and p1lotseq(+)=p2lotseq'
      ' and p1codemp(+)=p2codemp'
      ' and p1chave is null'
      ' group by p2chave'
      'order by totped')
    UpdateObject = U_ped
    Left = 584
    Top = 96
    object qr_pedMARCADO: TStringField
      DisplayLabel = 'Gerar'
      FieldName = 'MARCADO'
      Size = 1
    end
    object qr_pedMAXIMO: TFloatField
      DisplayLabel = 'C'#243'd.Max'
      FieldName = 'MAXIMO'
    end
    object qr_pedMINIMO: TFloatField
      DisplayLabel = 'C'#243'd.Minimo'
      FieldName = 'MINIMO'
    end
    object qr_pedQTDMAX: TFloatField
      DisplayLabel = 'Qtd. Maxima'
      FieldName = 'QTDMAX'
    end
    object qr_pedQTDMIN: TFloatField
      DisplayLabel = 'Qtd Minima'
      FieldName = 'QTDMIN'
    end
    object qr_pedP2CHAVE: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'P2CHAVE'
    end
    object qr_pedP2LOTSEQ: TFloatField
      DisplayLabel = 'Lotseq'
      FieldName = 'P2LOTSEQ'
    end
    object qr_pedP2CODEMP: TFloatField
      DisplayLabel = 'C'#243'd.Empresa'
      FieldName = 'P2CODEMP'
    end
    object qr_pedTOTPED: TFloatField
      DisplayLabel = 'Total do Pedido'
      FieldName = 'TOTPED'
    end
  end
  object src_ped: TDataSource
    DataSet = qr_ped
    Left = 608
    Top = 96
  end
  object U_ped: TUpdateSQL
    ModifySQL.Strings = (
      ''
      'update CADP02'
      'set'
      '  MARCADO = :MARCADO,'
      '  MAXIMO = :MAXIMO,'
      '  MINIMO = :MINIMO,'
      '  QTDMAX = :QTDMAX,'
      '  QTDMIN = :QTDMIN,'
      'where'
      '  P2CHAVE = :OLD_P2CHAVE and'
      '  P2LOTSEQ = :OLD_P2LOTSEQ and'
      '  P2CODEMP = :OLD_P2CODEMP')
    InsertSQL.Strings = (
      'insert into CADP02'
      '  ('
      '  MARCADO,'
      '  MAXIMO,'
      '  MINIMO,'
      '  QTDMAX,'
      '  QTDMIN,'
      '  P2CHAVE,'
      '  P2LOTSEQ,'
      '  P2CODEMP'
      ')'
      'values'
      ''
      ' ('
      '  :MARCADO,'
      '  :MAXIMO,'
      '  :MINIMO,'
      '  :QTDMAX,'
      '  :QTDMIN,'
      '  :P2CHAVE,'
      '  :P2LOTSEQ,'
      '  :P2CODEMP'
      ')')
    DeleteSQL.Strings = (
      'delete from CADP02'
      'where'
      '  P2CODEMP = :OLD_P2CODEMP and'
      '  P2CHAVE  = :OLD_P2CHAVE and'
      '  P2LOTSEQ = :OLD_P2LOTSEQ')
    Left = 552
    Top = 96
  end
end
