object Frm_PChq_CP: TFrm_PChq_CP
  Left = 0
  Top = 12
  Width = 798
  Height = 521
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Pesquisa de cheques no arquivo'
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
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 145
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 318
      Top = 4
      Width = 129
      Height = 13
      Caption = 'Pesquisar na data de :'
    end
    object lbl_periodo: TLabel
      Left = 222
      Top = 4
      Width = 8
      Height = 13
      Caption = #224
    end
    object Label2: TLabel
      Left = 84
      Top = 4
      Width = 48
      Height = 13
      Caption = 'Periodo:'
    end
    object lbl_codcli: TLabel
      Left = 78
      Top = 23
      Width = 54
      Height = 13
      Caption = 'Emitente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 83
      Top = 64
      Width = 48
      Height = 13
      Caption = 'N'#250'mero:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 210
      Top = 65
      Width = 8
      Height = 13
      Caption = #224
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 93
      Top = 82
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
    object Label6: TLabel
      Left = 210
      Top = 83
      Width = 8
      Height = 13
      Caption = #224
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 22
      Top = 102
      Width = 108
      Height = 13
      Caption = 'Nome do Emitente:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CB_TIPO: TComboBox
      Left = 446
      Top = 1
      Width = 142
      Height = 21
      BevelKind = bkFlat
      Ctl3D = False
      ItemHeight = 13
      ItemIndex = 0
      ParentCtl3D = False
      TabOrder = 0
      Text = 'Data deposito'
      OnExit = CB_TIPOExit
      Items.Strings = (
        'Data deposito'
        'Data Emiss'#227'o')
    end
    object MDTI: TMaskEdit
      Left = 135
      Top = 2
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDTIExit
    end
    object bbAtualizar: TBitBtn
      Left = 294
      Top = 119
      Width = 166
      Height = 23
      Caption = '&Atualizar'
      TabOrder = 3
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
    object CB_OMITIRDIA: TCheckBox
      Left = 298
      Top = 68
      Width = 164
      Height = 17
      Caption = 'Omitir Cheques Imediatos'
      TabOrder = 4
    end
    object MDTF: TMaskEdit
      Left = 234
      Top = 2
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 2
      Text = '  /  /    '
      OnExit = MDTFExit
    end
    object CODFOR: TEdit
      Left = 135
      Top = 20
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnExit = CODFORExit
      OnKeyPress = CODFORKeyPress
    end
    object lbx_codfor: TListBox
      Left = 196
      Top = 20
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
      OnKeyDown = lbx_codforKeyDown
    end
    object OMITIR_FOR: TCheckBox
      Left = 135
      Top = 45
      Width = 50
      Height = 13
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
    end
    object NUMCHQI: TEdit
      Left = 135
      Top = 61
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnExit = NUMCHQIExit
    end
    object NUMCHQF: TEdit
      Left = 224
      Top = 61
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnExit = NUMCHQFExit
    end
    object VALORI: TEdit
      Left = 135
      Top = 79
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnExit = VALORIExit
      OnKeyPress = VALORIKeyPress
    end
    object VALORF: TEdit
      Left = 224
      Top = 79
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnExit = VALORFExit
      OnKeyPress = VALORIKeyPress
    end
    object EMITENTE: TEdit
      Left = 135
      Top = 97
      Width = 242
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnKeyPress = VALORIKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 446
    Width = 790
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 145
    Width = 790
    Height = 301
    Align = alClient
    Caption = 'Itens pesquisados: (Click duplo marca/desmarca selec'#227'o)'
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 786
      Height = 242
      Align = alClient
      DataSource = Src_Chq
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
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBGrid1DrawColumnCell
      OnDblClick = DBGrid1DblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'OK'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHNUMERO'
          Width = 58
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHBANCO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHDTDEP'
          Width = 83
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHVALOR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FRAZAO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHEMIT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHSERIE'
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHLOTSEQ'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHAGENCIA'
          Width = 55
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHCC'
          Width = 69
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHDTEMIS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHCODEMP'
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CHSEQ'
          Visible = True
        end>
    end
    object GroupBox2: TGroupBox
      Left = 2
      Top = 257
      Width = 786
      Height = 42
      Align = alBottom
      Caption = 'Totais:'
      TabOrder = 1
      object StaticText1: TStaticText
        Left = 7
        Top = 17
        Width = 144
        Height = 17
        BorderStyle = sbsSunken
        Caption = 'Quantidade de Cheques:'
        Color = 8454016
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object st_qtdchq: TStaticText
        Left = 151
        Top = 17
        Width = 55
        Height = 17
        AutoSize = False
        BorderStyle = sbsSunken
        Color = 8454016
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 1
      end
      object st_totchq: TStaticText
        Left = 311
        Top = 17
        Width = 78
        Height = 17
        AutoSize = False
        BorderStyle = sbsSunken
        Color = 8454016
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 2
      end
      object StaticText3: TStaticText
        Left = 207
        Top = 17
        Width = 103
        Height = 17
        BorderStyle = sbsSunken
        Caption = 'Total em Valores:'
        Color = 8454016
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 3
      end
      object st_totsel: TStaticText
        Left = 695
        Top = 17
        Width = 78
        Height = 17
        AutoSize = False
        BorderStyle = sbsSunken
        Color = 16711808
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 4
      end
      object StaticText4: TStaticText
        Left = 586
        Top = 17
        Width = 103
        Height = 17
        BorderStyle = sbsSunken
        Caption = 'Total em Valores:'
        Color = 16711808
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 5
      end
      object st_qtdsel: TStaticText
        Left = 529
        Top = 17
        Width = 55
        Height = 17
        AutoSize = False
        BorderStyle = sbsSunken
        Color = 16711808
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 6
      end
      object StaticText6: TStaticText
        Left = 418
        Top = 17
        Width = 108
        Height = 17
        BorderStyle = sbsSunken
        Caption = 'Qtd.Selecionados:'
        Color = 16711808
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clYellow
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 7
      end
    end
  end
  object Qr_Chq: TQuery
    CachedUpdates = True
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select '#39' '#39' AS OK, CHCODEMP,CHNUMERO,CHBANCO,CHSERIE,CHAGENCIA,'
      '          CHCC,CHDTDEP,CHDTEMIS,CHVALOR,CHLOTSEQ,CHEMIT'
      '         ,CHSEQ,FRAZAO'
      '         ,CHCOMP,CHCPF,CHRG,CHDTNAS,CHCODLDR_DEB,CHCODLDR'
      '          from CADCHCP,CADFOR'
      '         where CHCODEMP is null and'
      '         FCODFOR=CHCODEMP')
    UpdateObject = U_CHQ
    Left = 536
    Top = 16
    object Qr_ChqCHNUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'CHNUMERO'
      Origin = 'SG_ASSOC.CADCHQ.CHNUMERO'
    end
    object Qr_ChqCHBANCO: TFloatField
      DisplayLabel = 'Banco'
      FieldName = 'CHBANCO'
      Origin = 'SG_ASSOC.CADCHQ.CHBANCO'
    end
    object Qr_ChqCHSERIE: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'CHSERIE'
      Origin = 'SG_ASSOC.CADCHQ.CHSERIE'
    end
    object Qr_ChqCHAGENCIA: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'CHAGENCIA'
      Origin = 'SG_ASSOC.CADCHQ.CHAGENCIA'
      Size = 10
    end
    object Qr_ChqCHCC: TStringField
      DisplayLabel = 'C/C'
      FieldName = 'CHCC'
      Origin = 'SG_ASSOC.CADCHQ.CHCC'
    end
    object Qr_ChqCHDTDEP: TDateTimeField
      DisplayLabel = 'Dt.Dep'
      FieldName = 'CHDTDEP'
      Origin = 'SG_ASSOC.CADCHQ.CHDTDEP'
    end
    object Qr_ChqCHDTEMIS: TDateTimeField
      DisplayLabel = 'Dt.Emis'
      FieldName = 'CHDTEMIS'
      Origin = 'SG_ASSOC.CADCHQ.CHDTEMIS'
    end
    object Qr_ChqCHVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'CHVALOR'
      Origin = 'SG_ASSOC.CADCHQ.CHVALOR'
    end
    object Qr_ChqCHSEQ: TFloatField
      DisplayLabel = 'Chave'
      FieldName = 'CHSEQ'
      Origin = 'SG_ASSOC.CADCHQ.CHSEQ'
    end
    object Qr_ChqCHLOTSEQ: TFloatField
      DisplayLabel = 'Lote Seq'
      FieldName = 'CHLOTSEQ'
      Origin = 'SG_ASSOC.CADCHQ.CHLOTSEQ'
    end
    object Qr_ChqCHCODEMP: TFloatField
      DisplayLabel = 'C'#243'd.Emp'
      FieldName = 'CHCODEMP'
      Origin = 'SG_ASSOC.CADCHQ.CHCODEMP'
    end
    object Qr_ChqOK: TStringField
      FieldName = 'OK'
      FixedChar = True
      Size = 1
    end
    object Qr_ChqCHEMIT: TStringField
      DisplayLabel = 'Emitente'
      FieldName = 'CHEMIT'
      Size = 40
    end
    object Qr_ChqCHCOMP: TStringField
      FieldName = 'CHCOMP'
      Size = 4
    end
    object Qr_ChqCHCPF: TFloatField
      FieldName = 'CHCPF'
    end
    object Qr_ChqCHRG: TStringField
      FieldName = 'CHRG'
      Size = 40
    end
    object Qr_ChqCHDTNAS: TDateTimeField
      FieldName = 'CHDTNAS'
    end
    object Qr_ChqFRAZAO: TStringField
      DisplayLabel = 'Nome do Fornecedor'
      FieldName = 'FRAZAO'
      Size = 40
    end
    object Qr_ChqCHCODLDR_DEB: TFloatField
      FieldName = 'CHCODLDR_DEB'
    end
    object Qr_ChqCHCODLDR: TFloatField
      FieldName = 'CHCODLDR'
    end
  end
  object U_CHQ: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCHCP'
      'set'
      '  OK = :OK,'
      '  CHCODEMP = :CHCODEMP'
      'where'
      '  CHCODEMP = :OLD_CHCODEMP and'
      '  CHLOTSEQ = :OLD_CHLOTSEQ and'
      '  CHSEQ = :OLD_CHSEQ')
    InsertSQL.Strings = (
      'insert into CADCHCP'
      '  (OK, CHCODEMP)'
      'values'
      '  (:OK, :CHCODEMP)')
    DeleteSQL.Strings = (
      'delete from CADCHCP'
      'where'
      '  CHCODEMP = :OLD_CHCODEMP and'
      '  CHLOTSEQ = :OLD_CHLOTSEQ and'
      '  CHSEQ = :OLD_CHSEQ')
    Left = 560
    Top = 16
  end
  object Src_Chq: TDataSource
    DataSet = Qr_Chq
    Left = 592
    Top = 16
  end
end
