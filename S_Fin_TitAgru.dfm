object Frm_Fin_TitAgru: TFrm_Fin_TitAgru
  Left = 75
  Top = 8
  Width = 725
  Height = 480
  Caption = 'Gera T'#237'tulos Agrupado Por dia e Financeira'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 717
    Height = 73
    Align = alTop
    TabOrder = 0
    object Label4: TLabel
      Left = 161
      Top = 15
      Width = 110
      Height = 13
      Caption = 'Emitidas no Per'#237'odo de'
    end
    object Label5: TLabel
      Left = 391
      Top = 14
      Width = 6
      Height = 13
      Caption = #224
    end
    object lbl_datainc: TLabel
      Left = 209
      Top = 47
      Width = 84
      Height = 13
      Caption = 'Data da Inclus'#227'o:'
    end
    object MDT1: TMaskEdit
      Left = 281
      Top = 11
      Width = 81
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
      Left = 420
      Top = 11
      Width = 81
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object bbAplicar: TBitBtn
      Left = 5
      Top = 38
      Width = 200
      Height = 25
      Caption = '&Selecionar'
      TabOrder = 2
      OnClick = bbAplicarClick
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
      Left = 484
      Top = 38
      Width = 200
      Height = 25
      Caption = '&Sair'
      TabOrder = 3
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
    object DATAINC: TMaskEdit
      Left = 329
      Top = 43
      Width = 81
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 4
      Text = '  /  /    '
      OnExit = DATAINCExit
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 73
    Width = 717
    Height = 319
    Align = alClient
    Caption = 'Resumo dos T'#237'tulos a Serem Gerados'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 713
      Height = 302
      Align = alClient
      DataSource = Src_Dup
      FixedColor = 16764622
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlue
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'nomfin'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Title.Alignment = taCenter
          Width = 121
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DTVCTO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODFP'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 392
    Width = 717
    Height = 57
    Align = alBottom
    TabOrder = 2
    object BitBtn1: TBitBtn
      Left = 225
      Top = 12
      Width = 218
      Height = 33
      Caption = 'Gerar Agora'
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333FFFFFFFFFFFFF33000077777770033377777777777773F000007888888
        00037F3337F3FF37F37F00000780088800037F3337F77F37F37F000007800888
        00037F3337F77FF7F37F00000788888800037F3337777777337F000000000000
        00037F3FFFFFFFFFFF7F00000000000000037F77777777777F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF00037F7F333333337F7F000FFFFFFFFF
        00037F7F333333337F7F000FFFFFFFFF07037F7F33333333777F000FFFFFFFFF
        0003737FFFFFFFFF7F7330099999999900333777777777777733}
      NumGlyphs = 2
    end
  end
  object Qr_Dup: TQuery
    OnCalcFields = Qr_DupCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select sum(CRVALOR) as VALOR,'
      '       sum(CRTOTNF) AS TOTNOT,'
      
        '       CRDTVCTO+DECODE(FPPRAZO_FIN,NULL,0,FPPRAZO_FIN) AS DTVCTO' +
        ','
      '       CRCODPV as CODFP,'
      '       FPCODCLI AS CODCLI,'
      '       max(CRDTEMIS) AS DTEMIS,'
      '       max(CRDTEMIS) AS DTEMIS2,'
      '       TO_CHAR(max(CRDTEMIS),'#39'dd/mm/yyyy'#39')  as numdoc'
      'from caddar,CADFP'
      'where crdtemis>='#39'21/02/2007'#39
      'AND FPCODIGO=CRCODPV'
      'GROUP BY CRDTVCTO,FPPRAZO_FIN,CRCODPV,FPCODCLI')
    Left = 408
    Top = 16
    object Qr_DupVALOR: TFloatField
      DisplayLabel = 'Valor total'
      FieldName = 'VALOR'
      Origin = 'SG_ASSOC.CADDAR.CRVALOR'
    end
    object Qr_DupTOTNOT: TFloatField
      DisplayLabel = 'Total das Notas'
      FieldName = 'TOTNOT'
      Origin = 'SG_ASSOC.CADDAR.CRTOTNF'
    end
    object Qr_DupCODFP: TFloatField
      DisplayLabel = 'C'#243'digo da Forma de Pagamento'
      FieldName = 'CODFP'
      Origin = 'SG_ASSOC.CADDAR.CRCODPV'
    end
    object Qr_DupDTVCTO: TDateTimeField
      DisplayLabel = 'Data de Vencimento'
      FieldName = 'DTVCTO'
    end
    object Qr_Dupnomfin: TStringField
      DisplayLabel = 'Nome da Financeira'
      FieldKind = fkCalculated
      FieldName = 'nomfin'
      Size = 40
      Calculated = True
    end
    object Qr_DupCODCLI: TFloatField
      DisplayLabel = 'C'#243'digo do Cliente'
      FieldName = 'CODCLI'
    end
    object Qr_DupDTEMIS: TDateTimeField
      FieldName = 'DTEMIS'
    end
    object Qr_DupNUMDOC: TStringField
      FieldName = 'NUMDOC'
      Size = 10
    end
    object Qr_Dupprazo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'prazo'
      Calculated = True
    end
    object Qr_DupDTEMIS2: TDateTimeField
      FieldName = 'DTEMIS2'
    end
  end
  object Src_Dup: TDataSource
    DataSet = Qr_Dup
    Left = 448
    Top = 24
  end
end
