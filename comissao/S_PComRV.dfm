object Frm_PComRV: TFrm_PComRV
  Left = 202
  Top = 216
  Width = 743
  Height = 449
  Caption = 'Pesquisa no arquivo de contas recebidas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 727
    Height = 142
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 8
      Top = 8
      Width = 70
      Height = 13
      Caption = 'Data Inicial:'
    end
    object Label3: TLabel
      Left = 156
      Top = 8
      Width = 63
      Height = 13
      Caption = 'Data Final:'
    end
    object lbl_codcli: TLabel
      Left = 32
      Top = 27
      Width = 44
      Height = 13
      Caption = 'Cliente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 0
      Top = 68
      Width = 86
      Height = 13
      Caption = 'N'#250'mero Inicial:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 169
      Top = 68
      Width = 79
      Height = 13
      Caption = 'N'#250'mero Final:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 43
      Top = 86
      Width = 34
      Height = 13
      Caption = 'Valor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object bbAtualizar: TBitBtn
      Left = 528
      Top = 81
      Width = 89
      Height = 22
      Caption = '&Atualizar'
      TabOrder = 0
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
    object CB_COMISBCOAB: TCheckBox
      Left = 363
      Top = 119
      Width = 313
      Height = 17
      Caption = 'Aceitar titulos com cobran'#231'a bancaria em aberto'
      TabOrder = 1
    end
    object CB_TITABERTO: TCheckBox
      Left = 10
      Top = 118
      Width = 215
      Height = 17
      Caption = 'Aceitar Qualquer T'#237'tulo em Aberto'
      TabOrder = 2
    end
    object mdt1: TMaskEdit
      Left = 81
      Top = 6
      Width = 73
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 3
      Text = '  /  /    '
    end
    object mdt2: TMaskEdit
      Left = 221
      Top = 6
      Width = 73
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 4
      Text = '  /  /    '
    end
    object CODCLI: TEdit
      Left = 81
      Top = 24
      Width = 61
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnExit = CODCLIExit
      OnKeyPress = CODCLIKeyPress
    end
    object lbx_codcli: TListBox
      Left = 141
      Top = 24
      Width = 356
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnKeyDown = lbx_codcliKeyDown
    end
    object OMITIR_CLI: TCheckBox
      Left = 80
      Top = 49
      Width = 50
      Height = 13
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object chave_ini: TEdit
      Left = 80
      Top = 65
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnExit = chave_iniExit
    end
    object chave_fin: TEdit
      Left = 249
      Top = 65
      Width = 61
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnExit = chave_finExit
    end
    object edt_valor: TEdit
      Left = 80
      Top = 83
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnExit = edt_valorExit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 370
    Width = 727
    Height = 41
    Align = alBottom
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
    Top = 142
    Width = 727
    Height = 228
    ActivePage = Ts_Selecionados
    Align = alClient
    TabOrder = 2
    object Ts_Selecionados: TTabSheet
      Caption = 'Selecionados'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 719
        Height = 200
        Align = alClient
        DataSource = Src_Dup
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
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
            FieldName = 'CRNUMERO'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRDESD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRDUP'
            Width = 29
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRDTEMIS'
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRDTVCTO'
            Width = 71
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRAZAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRVALOR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRDTBX'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRDTPAG'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRCOMVEN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRCODEMP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRICMSR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRVALFRE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRSEMCOM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRVLRACRE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRCOMTEL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRCOMSUP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRCOMV02'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRCOMV03'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRCODVEN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRCODV02'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRCODV03'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRCODECF'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRCODCLI'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRCODBCO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRCOMASSE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRCODASSE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRDESC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRJURD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRMULTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CRJUROS'
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
        Width = 719
        Height = 200
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
          'Or'#231'amento'
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
  object Query_Dup: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select '#39' '#39' OK,'
      
        '           CRCODEMP,CRNUMERO,CRDESD,CRDUP,CRDTEMIS,CRCODVEN,CRCO' +
        'DV02,CRCODV03,'
      
        '          CRDTVCTO,CRVALOR,CRDTBX,CRCOMVEN,CRCOMV02,CRCOMV03,CRC' +
        'ODBCO,'
      
        '          CRICMSR,CRVALFRE,CRSEMCOM, CRCODEMP-CRCODEMP AS CRVLRA' +
        'CRE,'
      
        '          CRCOMTEL, CRCOMSUP,CRCODECF,CRCODCLI,CRCOMASSE,CRCODAS' +
        'SE,CRAZAO,'
      
        '          CRDESC,CRDTPAG,CRJURD,CRMULTA,CRJUROS,CRVALPAG,CRLOTE,' +
        'CRLOTSEQ_LB,'
      '          CRTARBAN,CRDEVOL,CRNPED'
      '          from CADDAR,CADCLI'
      '         where CRCODEMP is null'
      '         AND CCODCLI=CRCODCLI'
      ''
      '')
    UpdateObject = U_Dup
    Left = 520
    Top = 8
    object Query_DupCRNUMERO: TFloatField
      DisplayLabel = 'Numero'
      FieldName = 'CRNUMERO'
      Origin = 'SG_ASSOC.CADDAR.CRNUMERO'
    end
    object Query_DupCRDESD: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'CRDESD'
      Origin = 'SG_ASSOC.CADDAR.CRDESD'
      Size = 2
    end
    object Query_DupCRDUP: TFloatField
      DisplayLabel = 'Dup'
      FieldName = 'CRDUP'
      Origin = 'SG_ASSOC.CADDAR.CRDUP'
    end
    object Query_DupCRDTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emissao'
      FieldName = 'CRDTEMIS'
      Origin = 'SG_ASSOC.CADDAR.CRDTEMIS'
    end
    object Query_DupCRDTVCTO: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'CRDTVCTO'
      Origin = 'SG_ASSOC.CADDAR.CRDTVCTO'
    end
    object Query_DupCRVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CRVALOR'
      Origin = 'SG_ASSOC.CADDAR.CRVALOR'
    end
    object Query_DupCRDTBX: TDateTimeField
      DisplayLabel = 'Dt.Baixa'
      FieldName = 'CRDTBX'
      Origin = 'SG_ASSOC.CADDAR.CRDTBX'
    end
    object Query_DupCRCOMVEN: TFloatField
      DisplayLabel = 'Com.Vend'
      FieldName = 'CRCOMVEN'
      Origin = 'SG_ASSOC.CADDAR.CRCOMVEN'
    end
    object Query_DupCRAZAO: TStringField
      DisplayLabel = 'Razao Social'
      FieldName = 'CRAZAO'
      Origin = 'SG_ASSOC.CADCLI.CRAZAO'
      Size = 40
    end
    object Query_DupCRCODEMP: TFloatField
      DisplayLabel = 'Emp'
      FieldName = 'CRCODEMP'
      Origin = 'SG_ASSOC.CADDAR.CRCODEMP'
    end
    object Query_DupCRICMSR: TFloatField
      DisplayLabel = 'Icms Retido'
      FieldName = 'CRICMSR'
      Origin = 'SG_ASSOC.CADDAR.CRICMSR'
    end
    object Query_DupCRVALFRE: TFloatField
      DisplayLabel = 'Frete'
      FieldName = 'CRVALFRE'
      Origin = 'SG_ASSOC.CADDAR.CRVALFRE'
    end
    object Query_DupCRSEMCOM: TFloatField
      DisplayLabel = 'Sem Comis'
      FieldName = 'CRSEMCOM'
      Origin = 'SG_ASSOC.CADDAR.CRSEMCOM'
    end
    object Query_DupCRVLRACRE: TFloatField
      DisplayLabel = 'Vlr.Acres'
      FieldName = 'CRVLRACRE'
      Origin = 'SG_ASSOC.CADDAR.CRCODEMP'
    end
    object Query_DupCRCOMTEL: TFloatField
      DisplayLabel = 'Com.Tel'
      FieldName = 'CRCOMTEL'
      Origin = 'SG_ASSOC.CADDAR.CRCOMTEL'
    end
    object Query_DupCRCOMSUP: TFloatField
      DisplayLabel = 'Com.Sup'
      FieldName = 'CRCOMSUP'
      Origin = 'SG_ASSOC.CADDAR.CRCOMSUP'
    end
    object Query_DupCRCOMV02: TFloatField
      DisplayLabel = 'Com.V02'
      FieldName = 'CRCOMV02'
      Origin = 'SG_ASSOC.CADDAR.CRCOMV02'
    end
    object Query_DupCRCOMV03: TFloatField
      DisplayLabel = 'Com.V03'
      FieldName = 'CRCOMV03'
      Origin = 'SG_ASSOC.CADDAR.CRCOMV03'
    end
    object Query_DupCRCODVEN: TFloatField
      DisplayLabel = 'Com.Vend'
      FieldName = 'CRCODVEN'
      Origin = 'SG_ASSOC.CADDAR.CRCODVEN'
    end
    object Query_DupCRCODV02: TFloatField
      DisplayLabel = 'Cod.V02'
      FieldName = 'CRCODV02'
      Origin = 'SG_ASSOC.CADDAR.CRCODV02'
    end
    object Query_DupCRCODV03: TFloatField
      DisplayLabel = 'Cod.V03'
      FieldName = 'CRCODV03'
      Origin = 'SG_ASSOC.CADDAR.CRCODV03'
    end
    object Query_DupCRCODECF: TFloatField
      DisplayLabel = 'Cod.ECF'
      FieldName = 'CRCODECF'
      Origin = 'SG_ASSOC.CADDAR.CRCODECF'
    end
    object Query_DupCRCODCLI: TFloatField
      DisplayLabel = 'Cod.Cli'
      FieldName = 'CRCODCLI'
      Origin = 'SG_ASSOC.CADDAR.CRCODCLI'
    end
    object Query_DupCRCODBCO: TFloatField
      DisplayLabel = 'Cod.Bco'
      FieldName = 'CRCODBCO'
      Origin = 'SG_ASSOC.CADDAR.CRCODBCO'
    end
    object Query_DupCRCOMASSE: TFloatField
      DisplayLabel = 'Com.Asses'
      FieldName = 'CRCOMASSE'
      Origin = 'SG_ASSOC.CADDAR.CRCOMASSE'
    end
    object Query_DupCRCODASSE: TFloatField
      DisplayLabel = 'Cod.Asses'
      FieldName = 'CRCODASSE'
      Origin = 'SG_ASSOC.CADDAR.CRCODASSE'
    end
    object Query_DupCRDESC: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'CRDESC'
      Origin = 'SG_ASSOC.CADDAR.CRDESC'
    end
    object Query_DupOK: TStringField
      FieldName = 'OK'
      FixedChar = True
      Size = 1
    end
    object Query_DupCRDTPAG: TDateTimeField
      DisplayLabel = 'Dt.Pgto'
      FieldName = 'CRDTPAG'
    end
    object Query_DupCRJURD: TFloatField
      DisplayLabel = 'Juros Dia'
      FieldName = 'CRJURD'
    end
    object Query_DupCRMULTA: TFloatField
      DisplayLabel = 'Multa'
      FieldName = 'CRMULTA'
    end
    object Query_DupCRJUROS: TFloatField
      DisplayLabel = 'Juros Rec'
      FieldName = 'CRJUROS'
    end
    object Query_DupCRVALPAG: TFloatField
      FieldName = 'CRVALPAG'
    end
    object Query_DupCRLOTE: TFloatField
      FieldName = 'CRLOTE'
    end
    object Query_DupCRLOTSEQ_LB: TFloatField
      FieldName = 'CRLOTSEQ_LB'
    end
    object Query_DupCRTARBAN: TFloatField
      FieldName = 'CRTARBAN'
    end
    object Query_DupCRDEVOL: TFloatField
      FieldName = 'CRDEVOL'
    end
    object Query_DupCRNPED: TFloatField
      FieldName = 'CRNPED'
    end
    object Query_DupCRVALOR_ACRES: TFloatField
      FieldName = 'CRVALOR_ACRES'
    end
  end
  object Src_Dup: TDataSource
    DataSet = Query_Dup
    Left = 560
    Top = 16
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
    Left = 616
    Top = 24
  end
end
