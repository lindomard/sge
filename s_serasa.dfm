object frm_serasa: Tfrm_serasa
  Left = 121
  Top = 113
  Width = 671
  Height = 473
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Gera Arquivos Serasa'
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 121
    Width = 663
    Height = 178
    Align = alClient
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CRNUMERO'
        Title.Caption = 'N'#250'mero'
        Width = 62
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDESD'
        Title.Caption = 'Desd.'
        Width = 44
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDTEMIS'
        Title.Caption = 'Emitido'
        Width = 121
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'valor'
        Title.Caption = 'Valor(R$)'
        Width = 103
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDTPAG'
        Title.Caption = 'Pago'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CRDTVCTO'
        Title.Caption = 'Vencimento'
        Width = 95
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipo'
        Title.Caption = 'Tipo'
        Width = 27
        Visible = True
      end
      item
        Color = clMoneyGreen
        Expanded = False
        FieldName = 'SIT'
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 663
    Height = 121
    Align = alTop
    TabOrder = 1
    object lbl_a: TLabel
      Left = 236
      Top = 35
      Width = 14
      Height = 25
      Caption = 'A'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl_de: TLabel
      Left = 48
      Top = 35
      Width = 43
      Height = 25
      Caption = 'DE..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object lbl_local: TLabel
      Left = 0
      Top = 99
      Width = 166
      Height = 13
      Alignment = taCenter
      Caption = 'SALVO EM C:\SGE\SERASA.TXT'
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object lbl_arq: TLabel
      Left = 8
      Top = 35
      Width = 83
      Height = 25
      Caption = 'Arquivo..:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object bb_busca: TBitBtn
      Left = 112
      Top = 72
      Width = 75
      Height = 25
      Caption = '&Procurar'
      TabOrder = 0
      OnClick = bb_buscaClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333FF3333333333333C0C333333333333F777F3333333333CC0F0C3
        333333333777377F33333333C30F0F0C333333337F737377F333333C00FFF0F0
        C33333F7773337377F333CC0FFFFFF0F0C3337773F33337377F3C30F0FFFFFF0
        F0C37F7373F33337377F00FFF0FFFFFF0F0C7733373F333373770FFFFF0FFFFF
        F0F073F33373F333373730FFFFF0FFFFFF03373F33373F333F73330FFFFF0FFF
        00333373F33373FF77333330FFFFF000333333373F333777333333330FFF0333
        3333333373FF7333333333333000333333333333377733333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object dtini: TDateEdit
      Left = 96
      Top = 35
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 1
    end
    object dtfim: TDateEdit
      Left = 272
      Top = 35
      Width = 121
      Height = 21
      NumGlyphs = 2
      TabOrder = 2
    end
    object bb_salvar: TBitBtn
      Left = 306
      Top = 72
      Width = 75
      Height = 25
      Caption = '&Salvar'
      TabOrder = 3
      OnClick = bb_salvarClick
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
    object bb_gerar: TBitBtn
      Left = 208
      Top = 72
      Width = 75
      Height = 25
      Caption = '&Gerar'
      TabOrder = 4
      OnClick = bb_gerarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
        000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
        00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
        F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
        0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
        FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
        FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
        0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
        00333377737FFFFF773333303300000003333337337777777333}
      NumGlyphs = 2
    end
    object rg_TIPO: TRadioGroup
      Left = 427
      Top = -1
      Width = 160
      Height = 92
      ItemIndex = 0
      Items.Strings = (
        'Remessa Normal'
        'Remessa Corre'#231#227'o'
        'Remessa Concilia'#231#227'o')
      TabOrder = 5
      OnClick = rg_TIPOClick
    end
    object cb_tipo: TComboBox
      Left = 430
      Top = 95
      Width = 145
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 6
      Text = 'Ambos CNPJ & CNPF'
      Items.Strings = (
        'Ambos CNPJ & CNPF'
        'Somente CNPJ'
        'Somente CNPF')
    end
    object edt_arquivo: TEdit
      Left = 91
      Top = 35
      Width = 301
      Height = 21
      ReadOnly = True
      TabOrder = 7
      Visible = False
      OnDblClick = edt_arquivoDblClick
    end
  end
  object mm_serasa: TMemo
    Left = 0
    Top = 299
    Width = 663
    Height = 104
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -8
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object cli: TMemo
    Left = 0
    Top = 403
    Width = 663
    Height = 3
    Align = alBottom
    Lines.Strings = (
      'c'
      'l'
      'i')
    TabOrder = 3
    Visible = False
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 423
    Width = 663
    Height = 19
    Panels = <
      item
        Alignment = taCenter
        Width = 150
      end
      item
        Alignment = taCenter
        Width = 200
      end
      item
        Alignment = taCenter
        Width = 40
      end>
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 406
    Width = 663
    Height = 17
    Align = alBottom
    TabOrder = 5
  end
  object qr_caddar: TQuery
    OnCalcFields = qr_caddarCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      ''
      
        'select CDTCAD,CRSTATUS, CSTATUS, CTPPESSOA, CCNPJ, CCPF, CRCODCL' +
        'I, '
      ' CRNUMERO, CRDTEMIS, CRDTPAG, CRVALOR, CRDTVCTO, crDESD,'
      #39'NORMAL'#39' AS SIT '
      ' from caddar  ,CADCLI'
      '       '
      '       where ((CRCODEMP=1))  and '
      '       CCODCLI=CRCODCLI and '
      ' (cadcli.ccnpj<>0 or cadcli.ccpf<>0)'
      ' and ( '
      ' ( crdtemis>='#39'01/11/2008'#39
      ' and crdtemis<='#39'08/11/2008'#39')'
      ' or (crdtpag>='#39'01/11/2008'#39
      ' and crdtpag<='#39'08/11/2008'#39')'
      ' ) '
      ' UNION '
      
        'select CDTCAD,CRSTATUS, CSTATUS, CTPPESSOA, CCNPJ, CCPF, CRCODCL' +
        'I, '
      ' CRNUMERO, CRDTEMIS, CRDTPAG, CRVALOR, CRDTVCTO, crDESD,'
      #39'CANCELADA'#39' AS SIT '
      ' from old_caddar  ,CADCLI'
      '       '
      '       where ((CRCODEMP=1))  and '
      '       CCODCLI=CRCODCLI and '
      ' (cadcli.ccnpj<>0 or cadcli.ccpf<>0)'
      ' and crstatus=9 '
      ' and ( '
      ' ( crdtemis>='#39'01/11/2008'#39
      ' and crdtemis<='#39'08/11/2008'#39')'
      ' or (crdtpag>='#39'01/11/2008'#39
      ' and crdtpag<='#39'08/11/2008'#39')'
      ' ) '
      '  ORDER BY SIT, CRDTEMIS, CRDTPAG, crDESD  ')
    Left = 392
    object qr_caddarCDTCAD: TDateTimeField
      FieldName = 'CDTCAD'
    end
    object qr_caddarCRSTATUS: TFloatField
      FieldName = 'CRSTATUS'
    end
    object qr_caddarCSTATUS: TFloatField
      FieldName = 'CSTATUS'
    end
    object qr_caddarCTPPESSOA: TFloatField
      FieldName = 'CTPPESSOA'
    end
    object qr_caddarCCNPJ: TFloatField
      FieldName = 'CCNPJ'
    end
    object qr_caddarCCPF: TFloatField
      FieldName = 'CCPF'
    end
    object qr_caddarCRCODCLI: TFloatField
      FieldName = 'CRCODCLI'
    end
    object qr_caddarCRNUMERO: TFloatField
      FieldName = 'CRNUMERO'
    end
    object qr_caddarCRDTEMIS: TDateTimeField
      FieldName = 'CRDTEMIS'
    end
    object qr_caddarCRDTPAG: TDateTimeField
      FieldName = 'CRDTPAG'
    end
    object qr_caddarCRVALOR: TFloatField
      FieldName = 'CRVALOR'
    end
    object qr_caddarCRDTVCTO: TDateTimeField
      FieldName = 'CRDTVCTO'
    end
    object qr_caddarCRDESD: TStringField
      FieldName = 'CRDESD'
      Size = 2
    end
    object qr_caddarSIT: TStringField
      FieldName = 'SIT'
      Size = 9
    end
    object qr_caddarvalor: TStringField
      FieldKind = fkCalculated
      FieldName = 'valor'
      Size = 10
      Calculated = True
    end
    object qr_caddartipo: TStringField
      FieldKind = fkCalculated
      FieldName = 'tipo'
      Size = 2
      Calculated = True
    end
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 352
  end
  object DataSource1: TDataSource
    DataSet = qr_caddar
    Left = 320
  end
  object Query1: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 264
  end
  object Open_File: TOpenDialog
    Left = 56
    Top = 64
  end
end
