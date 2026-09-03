object frm_caucao_remessa_pesquisar: Tfrm_caucao_remessa_pesquisar
  Left = 192
  Top = 117
  Width = 891
  Height = 540
  Caption = 'Pesquisar Titulos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 883
    Height = 161
    Align = alTop
    TabOrder = 0
    object Label62: TLabel
      Left = 107
      Top = 6
      Width = 177
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Titulos com Vencimentos entre:'
    end
    object Label63: TLabel
      Left = 436
      Top = 8
      Width = 15
      Height = 13
      Caption = 'at'#233
    end
    object lbl_codcli: TLabel
      Left = 178
      Top = 27
      Width = 35
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label1: TLabel
      Left = 99
      Top = 68
      Width = 116
      Height = 13
      Caption = 'Banco/Conta Cobran'#231'a:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object edt_datini: TDateEdit
      Left = 288
      Top = 3
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 0
    end
    object edt_datfin: TDateEdit
      Left = 483
      Top = 3
      Width = 121
      Height = 21
      Ctl3D = False
      NumGlyphs = 2
      ParentCtl3D = False
      TabOrder = 1
    end
    object edt_codcli: TEdit
      Left = 227
      Top = 23
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnExit = edt_codcliExit
      OnKeyPress = edt_codcliKeyPress
    end
    object lbx_codcli: TListBox
      Left = 288
      Top = 23
      Width = 478
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnKeyDown = lbx_codcliKeyDown
    end
    object OMITIR_CLI: TCheckBox
      Left = 226
      Top = 48
      Width = 50
      Height = 13
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
    end
    object edt_codbco: TEdit
      Left = 227
      Top = 64
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnExit = edt_codbcoExit
      OnKeyPress = edt_codbcoKeyPress
    end
    object lbx_codbco: TListBox
      Left = 288
      Top = 64
      Width = 478
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnKeyDown = lbx_codbcoKeyDown
    end
    object omitir_bco: TCheckBox
      Left = 226
      Top = 89
      Width = 50
      Height = 13
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object bbAtualizar: TBitBtn
      Left = 187
      Top = 113
      Width = 151
      Height = 30
      Caption = '&Atualizar'
      TabOrder = 8
      OnClick = bbAtualizarClick
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
    object SAIR: TBitBtn
      Left = 392
      Top = 114
      Width = 151
      Height = 30
      Caption = '&Sair e Selecionar'
      TabOrder = 9
      OnClick = SAIRClick
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
    object cb_todos: TCheckBox
      Left = 2
      Top = 144
      Width = 50
      Height = 13
      Caption = 'Todos'
      Checked = True
      ParentShowHint = False
      ShowHint = True
      State = cbChecked
      TabOrder = 10
      OnClick = cb_todosClick
    end
    object bbCancelar: TBitBtn
      Left = 613
      Top = 113
      Width = 151
      Height = 30
      Caption = 'Sair Sem Selecionar'
      TabOrder = 11
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
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 161
    Width = 883
    Height = 348
    Align = alClient
    DataSource = Src_Dup
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'OK'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRNUMERO'
        Title.Alignment = taCenter
        Width = 52
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDESD'
        Title.Alignment = taCenter
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDUP'
        Title.Alignment = taCenter
        Width = 42
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'crazao'
        Title.Alignment = taCenter
        Width = 299
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDTEMIS'
        Title.Alignment = taCenter
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDTVCTO'
        Title.Alignment = taCenter
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRVALOR'
        Title.Alignment = taCenter
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'parcela'
        Title.Alignment = taCenter
        Width = 67
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRID_NEW'
        Title.Alignment = taCenter
        Visible = True
      end>
  end
  object U_Dup: TUpdateSQL
    ModifySQL.Strings = (
      'update CADDAR'
      'set'
      '  CRCODEMP = :CRCODEMP,'
      '  CRNUMERO = :CRNUMERO,'
      '  CRDESD = :CRDESD,'
      '  CRDUP = :CRDUP,'
      '  CRCODCLI = :CRCODCLI,'
      '  CRVALOR = :CRVALOR,'
      '  CRDTEMIS = :CRDTEMIS,'
      '  CRDTVCTO = :CRDTVCTO,'
      '  CRDTPAG = :CRDTPAG,'
      '  CRDTBX = :CRDTBX,'
      '  CRVALPAG = :CRVALPAG,'
      '  CRCODVEN = :CRCODVEN,'
      '  CRDESC = :CRDESC,'
      '  CRDEVOL = :CRDEVOL,'
      '  CRJUROS = :CRJUROS,'
      '  CRCODBCO = :CRCODBCO,'
      '  CRLOTE = :CRLOTE,'
      '  CRICMSR = :CRICMSR,'
      '  CRJURD = :CRJURD,'
      '  CRMULTA = :CRMULTA,'
      '  CRVALFRE = :CRVALFRE,'
      '  CRCOMVEN = :CRCOMVEN,'
      '  CRCOMTEL = :CRCOMTEL,'
      '  CRCOMSUP = :CRCOMSUP,'
      '  CRSEMCOM = :CRSEMCOM,'
      '  CRCOMV02 = :CRCOMV02,'
      '  CRCOMV03 = :CRCOMV03,'
      '  CRCODV02 = :CRCODV02,'
      '  CRCODV03 = :CRCODV03,'
      '  CRCODECF = :CRCODECF,'
      '  CRLOTSEQ_LB = :CRLOTSEQ_LB,'
      '  CRTARBAN = :CRTARBAN,'
      '  CRCODASSE = :CRCODASSE,'
      '  CRCOMASSE = :CRCOMASSE'
      'where'
      '  CRCODEMP = :OLD_CRCODEMP and'
      '  CRNUMERO = :OLD_CRNUMERO and'
      '  CRDESD = :OLD_CRDESD and'
      '  CRDUP = :OLD_CRDUP and'
      '  CRCODCLI = :OLD_CRCODCLI and'
      '  CRVALOR = :OLD_CRVALOR and'
      '  CRDTEMIS = :OLD_CRDTEMIS and'
      '  CRDTVCTO = :OLD_CRDTVCTO and'
      '  CRDTPAG = :OLD_CRDTPAG and'
      '  CRDTBX = :OLD_CRDTBX and'
      '  CRVALPAG = :OLD_CRVALPAG and'
      '  CRCODVEN = :OLD_CRCODVEN and'
      '  CRDESC = :OLD_CRDESC and'
      '  CRDEVOL = :OLD_CRDEVOL and'
      '  CRJUROS = :OLD_CRJUROS and'
      '  CRCODBCO = :OLD_CRCODBCO and'
      '  CRLOTE = :OLD_CRLOTE and'
      '  CRICMSR = :OLD_CRICMSR and'
      '  CRJURD = :OLD_CRJURD and'
      '  CRMULTA = :OLD_CRMULTA and'
      '  CRVALFRE = :OLD_CRVALFRE and'
      '  CRCOMVEN = :OLD_CRCOMVEN and'
      '  CRCOMTEL = :OLD_CRCOMTEL and'
      '  CRCOMSUP = :OLD_CRCOMSUP and'
      '  CRSEMCOM = :OLD_CRSEMCOM and'
      '  CRCOMV02 = :OLD_CRCOMV02 and'
      '  CRCOMV03 = :OLD_CRCOMV03 and'
      '  CRCODV02 = :OLD_CRCODV02 and'
      '  CRCODV03 = :OLD_CRCODV03 and'
      '  CRCODECF = :OLD_CRCODECF and'
      '  CRLOTSEQ_LB = :OLD_CRLOTSEQ_LB and'
      '  CRTARBAN = :OLD_CRTARBAN and'
      '  CRCODASSE = :OLD_CRCODASSE and'
      '  CRCOMASSE = :OLD_CRCOMASSE')
    InsertSQL.Strings = (
      'insert into CADDAR'
      
        '  (CRCODEMP, CRNUMERO, CRDESD, CRDUP, CRCODCLI, CRVALOR, CRDTEMI' +
        'S, CRDTVCTO, '
      
        '   CRDTPAG, CRDTBX, CRVALPAG, CRCODVEN, CRDESC, CRDEVOL, CRJUROS' +
        ', CRCODBCO, '
      
        '   CRLOTE, CRICMSR, CRJURD, CRMULTA, CRVALFRE, CRCOMVEN, CRCOMTE' +
        'L, CRCOMSUP, '
      
        '   CRSEMCOM, CRCOMV02, CRCOMV03, CRCODV02, CRCODV03, CRCODECF, C' +
        'RLOTSEQ_LB, '
      '   CRTARBAN, CRCODASSE, CRCOMASSE)'
      'values'
      
        '  (:CRCODEMP, :CRNUMERO, :CRDESD, :CRDUP, :CRCODCLI, :CRVALOR, :' +
        'CRDTEMIS, '
      
        '   :CRDTVCTO, :CRDTPAG, :CRDTBX, :CRVALPAG, :CRCODVEN, :CRDESC, ' +
        ':CRDEVOL, '
      
        '   :CRJUROS, :CRCODBCO, :CRLOTE, :CRICMSR, :CRJURD, :CRMULTA, :C' +
        'RVALFRE, '
      
        '   :CRCOMVEN, :CRCOMTEL, :CRCOMSUP, :CRSEMCOM, :CRCOMV02, :CRCOM' +
        'V03, :CRCODV02, '
      
        '   :CRCODV03, :CRCODECF, :CRLOTSEQ_LB, :CRTARBAN, :CRCODASSE, :C' +
        'RCOMASSE)')
    DeleteSQL.Strings = (
      'delete from CADDAR'
      'where'
      '  CRCODEMP = :OLD_CRCODEMP and'
      '  CRNUMERO = :OLD_CRNUMERO and'
      '  CRDESD = :OLD_CRDESD and'
      '  CRDUP = :OLD_CRDUP and'
      '  CRCODCLI = :OLD_CRCODCLI and'
      '  CRVALOR = :OLD_CRVALOR and'
      '  CRDTEMIS = :OLD_CRDTEMIS and'
      '  CRDTVCTO = :OLD_CRDTVCTO and'
      '  CRDTPAG = :OLD_CRDTPAG and'
      '  CRDTBX = :OLD_CRDTBX and'
      '  CRVALPAG = :OLD_CRVALPAG and'
      '  CRCODVEN = :OLD_CRCODVEN and'
      '  CRDESC = :OLD_CRDESC and'
      '  CRDEVOL = :OLD_CRDEVOL and'
      '  CRJUROS = :OLD_CRJUROS and'
      '  CRCODBCO = :OLD_CRCODBCO and'
      '  CRLOTE = :OLD_CRLOTE and'
      '  CRICMSR = :OLD_CRICMSR and'
      '  CRJURD = :OLD_CRJURD and'
      '  CRMULTA = :OLD_CRMULTA and'
      '  CRVALFRE = :OLD_CRVALFRE and'
      '  CRCOMVEN = :OLD_CRCOMVEN and'
      '  CRCOMTEL = :OLD_CRCOMTEL and'
      '  CRCOMSUP = :OLD_CRCOMSUP and'
      '  CRSEMCOM = :OLD_CRSEMCOM and'
      '  CRCOMV02 = :OLD_CRCOMV02 and'
      '  CRCOMV03 = :OLD_CRCOMV03 and'
      '  CRCODV02 = :OLD_CRCODV02 and'
      '  CRCODV03 = :OLD_CRCODV03 and'
      '  CRCODECF = :OLD_CRCODECF and'
      '  CRLOTSEQ_LB = :OLD_CRLOTSEQ_LB and'
      '  CRTARBAN = :OLD_CRTARBAN and'
      '  CRCODASSE = :OLD_CRCODASSE and'
      '  CRCOMASSE = :OLD_CRCOMASSE')
    Left = 640
    Top = 32
  end
  object Src_Dup: TDataSource
    DataSet = Qr_Dup
    Left = 584
    Top = 24
  end
  object Qr_Dup: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select '#39' '#39' OK,'
      
        '           P2CODEMP,P2CHAVE,P2ORDEM,P2LOTSEQ,P1CODCLI,CRAZAO,P1D' +
        'ATANF,SUM(P2TOTLIQ) AS P2TOTLIQ, P2CODVEN'
      '          from CADP02, CADP01, CADCLI'
      
        '         where P2CODVEN is null AND P1CHAVE=P2CHAVE AND P1ORDEM=' +
        'P2ORDEM AND P1CODEMP=P2CODEMP AND P1LOTSEQ=P2LOTSEQ'
      '         AND CCODCLI=P1CODCLI '
      
        'GROUP BY P2CODEMP, P2CHAVE, P2ORDEM,P2LOTSEQ, P1CODCLI, CRAZAO, ' +
        'P1DATANF,P2CODVEN'
      'ORDER BY P2CHAVE')
    UpdateObject = U_Dup
    Left = 544
    Top = 16
    object Qr_DupOK: TStringField
      FieldName = 'OK'
      FixedChar = True
      Size = 1
    end
    object Qr_DupCRNUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CRNUMERO'
    end
    object Qr_DupCRDESD: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'CRDESD'
      Size = 2
    end
    object Qr_DupCRDUP: TFloatField
      DisplayLabel = 'Dup'
      FieldName = 'CRDUP'
    end
    object Qr_Dupcrazao: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'crazao'
      Size = 100
    end
    object Qr_DupCRDTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emiss'#227'o'
      FieldName = 'CRDTEMIS'
    end
    object Qr_DupCRDTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'CRDTVCTO'
    end
    object Qr_DupCRVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CRVALOR'
    end
    object Qr_Dupparcela: TStringField
      DisplayLabel = 'Parcela'
      FieldName = 'parcela'
      Size = 10
    end
    object Qr_DupCRID_NEW: TFloatField
      DisplayLabel = 'Chave Id'
      FieldName = 'CRID_NEW'
    end
    object Qr_DupCODBCO_LDR: TFloatField
      FieldName = 'CODBCO_LDR'
    end
    object Qr_DupCRID_LDR_NEW: TFloatField
      FieldName = 'CRID_LDR_NEW'
    end
  end
end
