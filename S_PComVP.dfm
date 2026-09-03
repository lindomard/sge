object Frm_PComVP: TFrm_PComVP
  Left = 211
  Top = 251
  Width = 752
  Height = 353
  Caption = 'Pesquisa Comiss'#227'o por Vendedor'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 744
    Height = 31
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 61
      Height = 13
      Caption = 'Procurar por:'
    end
    object CB_TIPO: TComboBox
      Left = 89
      Top = 4
      Width = 145
      Height = 21
      BevelKind = bkSoft
      Style = csDropDownList
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 0
      Text = 'Per'#237'odo'
      OnChange = CB_TIPOChange
      Items.Strings = (
        'Per'#237'odo'
        'Data NF'
        'Data Pedido'
        'C'#243'digo Cliente')
    end
    object NOME: TMaskEdit
      Left = 238
      Top = 4
      Width = 164
      Height = 21
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
      OnKeyPress = NOMEKeyPress
    end
    object bbAtualizar: TBitBtn
      Left = 408
      Top = 4
      Width = 89
      Height = 22
      Caption = '&Atualizar'
      TabOrder = 2
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
  end
  object Panel2: TPanel
    Left = 0
    Top = 272
    Width = 744
    Height = 50
    Align = alClient
    TabOrder = 1
    object SAIR: TBitBtn
      Left = 500
      Top = 0
      Width = 225
      Height = 40
      Caption = '&Sair'
      TabOrder = 0
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object SELECIONAR: TBitBtn
      Left = 5
      Top = 0
      Width = 225
      Height = 40
      Caption = '&Selecionar Todos'
      TabOrder = 1
      OnClick = SELECIONARClick
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
      Layout = blGlyphTop
      NumGlyphs = 2
    end
    object DESMARCAR: TBitBtn
      Left = 256
      Top = 0
      Width = 225
      Height = 40
      Caption = '&Desmarcar todos'
      TabOrder = 2
      OnClick = DESMARCARClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
        555557777F777555F55500000000555055557777777755F75555005500055055
        555577F5777F57555555005550055555555577FF577F5FF55555500550050055
        5555577FF77577FF555555005050110555555577F757777FF555555505099910
        555555FF75777777FF555005550999910555577F5F77777775F5500505509990
        3055577F75F77777575F55005055090B030555775755777575755555555550B0
        B03055555F555757575755550555550B0B335555755555757555555555555550
        BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
        50BB555555555555575F555555555555550B5555555555555575}
      Layout = blGlyphTop
      NumGlyphs = 2
    end
  end
  object PG_SELECT: TPageControl
    Left = 0
    Top = 31
    Width = 744
    Height = 241
    ActivePage = Ts_Selecionados
    Align = alTop
    TabOrder = 2
    object Ts_Selecionados: TTabSheet
      Caption = 'Selecionados'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 736
        Height = 213
        Align = alClient
        DataSource = Src_Dup
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
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
            FieldName = 'OK'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2CHAVE'
            Title.Caption = 'Chave'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P1CODCLI'
            Title.Caption = 'Cod. Cliente'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRAZAO'
            Title.Caption = 'Nome do Cliente'
            Width = 359
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P1DATANF'
            Title.Caption = 'Data Emiss'#227'o NF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'P2TOTLIQ'
            Title.Caption = 'Total Liquido'
            Width = 69
            Visible = True
          end>
      end
    end
    object Ts_Filtros: TTabSheet
      Caption = 'Filtros'
      ImageIndex = 1
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 0
        Width = 736
        Height = 213
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Align = alClient
        Color = clSkyBlue
        Columns = 2
        Ctl3D = False
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ItemHeight = 16
        Items.Strings = (
          'Venda Normal'
          'Simples Remessa'
          'Devolu'#231#227'o a Fornecedor'
          'Remessa p/Troca'
          'Transferencia de Mercadorias'
          'Remessa p/Beneficiamento'
          'Remessa p/Venda(Vda.Fora do Estab.)'
          'Devolu'#231#227'o Cliente(Entrada) Normal'
          'Emprestimo de Mercadorias'
          'Nota Complementar'
          'Remessa Para Consigna'#231#245'es'
          'Devolu'#231#227'o Mercadoria Consigna'#231#245'es'
          'Devolu'#231#227'o Remessa p/Venda(Vda.Fora do Estab.)'
          'Venda Mercadoria Consignada'
          'Venda Remessa p/Venda(Vda.Fora do Estabel.)'
          'Todos')
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Style = lbOwnerDrawFixed
        TabOrder = 0
        OnClick = RG_TIPOPEDClick
      end
    end
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
    object Qr_DupP2CODEMP: TFloatField
      FieldName = 'P2CODEMP'
    end
    object Qr_DupP2CHAVE: TFloatField
      FieldName = 'P2CHAVE'
    end
    object Qr_DupP2ORDEM: TFloatField
      FieldName = 'P2ORDEM'
    end
    object Qr_DupP1CODCLI: TFloatField
      FieldName = 'P1CODCLI'
    end
    object Qr_DupCRAZAO: TStringField
      FieldName = 'CRAZAO'
      Size = 60
    end
    object Qr_DupP1DATANF: TDateTimeField
      FieldName = 'P1DATANF'
    end
    object Qr_DupP2TOTLIQ: TFloatField
      FieldName = 'P2TOTLIQ'
      DisplayFormat = '#,##0.00'
    end
    object Qr_DupP2CODVEN: TFloatField
      FieldName = 'P2CODVEN'
    end
    object Qr_DupP2LOTSEQ: TFloatField
      FieldName = 'P2LOTSEQ'
    end
    object Qr_DupTOTDUP: TFloatField
      FieldName = 'TOTDUP'
    end
    object Qr_DupTOTDUP_PAG: TFloatField
      FieldName = 'TOTDUP_PAG'
    end
  end
  object Src_Dup: TDataSource
    DataSet = Qr_Dup
    Left = 584
    Top = 24
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
end
