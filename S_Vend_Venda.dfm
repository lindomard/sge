object Frm_Vend_Venda: TFrm_Vend_Venda
  Left = 110
  Top = 67
  Width = 645
  Height = 466
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Vendas por Vendedor:'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 370
    Width = 637
    Height = 65
    Align = alBottom
    Caption = 'Resumo do Per'#237'odo:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object ST_CABTOTVDA: TStaticText
      Left = 10
      Top = 19
      Width = 96
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Vendas Per'#237'odo'
      Color = 16759739
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 0
    end
    object ST_CABDEVOL: TStaticText
      Left = 152
      Top = 19
      Width = 96
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Devolu'#231#227'o'
      Color = 12895487
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 1
    end
    object ST_CABTOTLIQ: TStaticText
      Left = 294
      Top = 19
      Width = 96
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Total L'#237'quido'
      Color = 16759739
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 2
    end
    object ST_CABCOMISSAO: TStaticText
      Left = 391
      Top = 19
      Width = 96
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Valor Comiss'#227'o'
      Color = 16759739
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 3
    end
    object ST_CABCOTA: TStaticText
      Left = 488
      Top = 19
      Width = 96
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Cota Per'#237'odo'
      Color = 11468759
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 4
    end
    object ST_CABPERC: TStaticText
      Left = 584
      Top = 19
      Width = 47
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '%'
      Color = 11468759
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 5
    end
    object ST_TOTVDA: TStaticText
      Left = 10
      Top = 37
      Width = 96
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Color = 16759739
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 6
    end
    object ST_DEVOL: TStaticText
      Left = 152
      Top = 37
      Width = 96
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Color = 12895487
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 7
    end
    object ST_TOTLIQ: TStaticText
      Left = 294
      Top = 37
      Width = 96
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Color = 16759739
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 8
    end
    object ST_COMISSAO: TStaticText
      Left = 391
      Top = 37
      Width = 96
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Color = 16759739
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 9
    end
    object ST_COTA: TStaticText
      Left = 488
      Top = 37
      Width = 96
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Color = 11468759
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 10
    end
    object ST_PERC: TStaticText
      Left = 585
      Top = 37
      Width = 47
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Color = 11468759
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 11
    end
    object ST_CABQTDPED: TStaticText
      Left = 106
      Top = 19
      Width = 45
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Qt.Ped'
      Color = 16759739
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 12
    end
    object ST_QTDPED: TStaticText
      Left = 106
      Top = 37
      Width = 45
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Color = 16759739
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 13
    end
    object ST_CABQTDPEDDEV: TStaticText
      Left = 248
      Top = 19
      Width = 45
      Height = 17
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = 'Qt.Ped'
      Color = 16759739
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 14
    end
    object ST_QTDPEDDEV: TStaticText
      Left = 248
      Top = 37
      Width = 45
      Height = 17
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSunken
      Caption = '0,00'
      Color = 16759739
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 15
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 145
    Width = 637
    Height = 225
    Align = alClient
    Caption = 'Totaliza'#231#227'o Di'#225'ria:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 633
      Height = 208
      Align = alClient
      DataSource = Src_TotVda
      FixedColor = 12058623
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'P1DATAP'
          Title.Alignment = taCenter
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRTOTAL'
          Title.Alignment = taCenter
          Width = 94
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VLRTOTAL_DEV'
          Title.Alignment = taCenter
          Width = 86
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtdped'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'qtddev'
          Title.Alignment = taCenter
          Width = 81
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'totalliq'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'valorcomisliq'
          Title.Alignment = taCenter
          Width = 80
          Visible = True
        end>
    end
  end
  object gb_cab: TGroupBox
    Left = 0
    Top = 0
    Width = 637
    Height = 145
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 11
      Top = 12
      Width = 63
      Height = 13
      AutoSize = False
      Caption = 'Per'#237'odo.....'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 158
      Top = 13
      Width = 6
      Height = 13
      Caption = #224
    end
    object Label26: TLabel
      Left = 8
      Top = 55
      Width = 59
      Height = 13
      Caption = 'Vendedor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label1: TLabel
      Left = 11
      Top = 34
      Width = 56
      Height = 13
      Caption = 'M'#234's/Ano:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 95
      Top = 32
      Width = 7
      Height = 13
      Caption = '/'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object MDT1: TMaskEdit
      Left = 67
      Top = 11
      Width = 80
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
      Left = 175
      Top = 11
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
    object CODVEN: TEdit
      Left = 67
      Top = 53
      Width = 80
      Height = 19
      Hint = 'Digite o C'#243'digo a Ser Filtrado'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnExit = CODVENExit
      OnKeyPress = CODVENKeyPress
    end
    object lbx_codven: TListBox
      Left = 146
      Top = 53
      Width = 484
      Height = 38
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnKeyDown = lbx_codvenKeyDown
    end
    object OMITIR_VEN: TCheckBox
      Left = 67
      Top = 73
      Width = 57
      Height = 17
      Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
    end
    object MMES: TEdit
      Left = 67
      Top = 29
      Width = 25
      Height = 19
      Hint = 'Digite o C'#243'digo a Ser Filtrado'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnExit = MMESExit
    end
    object MANO: TEdit
      Left = 108
      Top = 29
      Width = 39
      Height = 19
      Hint = 'Digite o C'#243'digo a Ser Filtrado'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnExit = MANOExit
    end
    object bbSair: TBitBtn
      Left = 491
      Top = 93
      Width = 140
      Height = 40
      Hint = 'Click aqui para Fechar esta janela'
      Caption = '&Sair'
      TabOrder = 8
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
    object BBATUALIZAR: TBitBtn
      Left = 8
      Top = 93
      Width = 140
      Height = 40
      Cursor = crHandPoint
      Hint = 'Seleciona os Registros'
      Caption = '&Atualizar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = BBATUALIZARClick
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
  object Qr_TotVda: TQuery
    OnCalcFields = Qr_TotVdaCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select p1codven as codven,vnome as nomeven,P1DATAP,'
      '       Sum(decode(p1tipo'
      '       ,8,0'
      '       ,12,0'
      '       ,13,0'
      '       ,19,0'
      '       ,p2vcomis)'
      '       ) as VlrComissao,'
      ' Sum(decode(p1tipo'
      '       ,8,p2vcomis'
      '       ,12,p2vcomis'
      '       ,13,p2vcomis'
      '       ,19,p2vcomis'
      '       ,0)'
      '       ) as VlrComissao_dev,'
      ' Sum(decode(p1tipo'
      '       ,8,0'
      '       ,12,0'
      '       ,13,0'
      '       ,19,0'
      '       ,P2VCOMIS_EXTRA)'
      '        ) as VlrComissao_extra,'
      ' Sum(decode(p1tipo'
      '       ,8,P2VCOMIS_EXTRA'
      '       ,12,P2VCOMIS_EXTRA'
      '       ,13,P2VCOMIS_EXTRA'
      '       ,19,P2VCOMIS_EXTRA'
      '       ,0)'
      '       ) as VlrComissao_extra_dev,'
      ' Sum(decode(p1tipo'
      '       ,8,0'
      '       ,12,0'
      '       ,13,0'
      '       ,19,0'
      '       ,  (( (P2QTD*P2PRECO)-P2TOTDES) *p2Pcomis/100)'
      '                   )'
      '       )  as VCalcComissao,'
      ' Sum(decode(p1tipo'
      '       ,8,  (( (P2QTD*P2PRECO)-P2TOTDES)*p2Pcomis/100)'
      '       ,12,(( (P2QTD*P2PRECO)-P2TOTDES)*p2Pcomis/100)'
      '       ,13,(( (P2QTD*P2PRECO)-P2TOTDES)*p2Pcomis/100)'
      '       ,19,(( (P2QTD*P2PRECO)-P2TOTDES)*p2Pcomis/100)'
      '       ,0)'
      '       ) as VCalcComissao_dev,'
      ' Sum(decode(p1tipo'
      '       ,8,0'
      '       ,12,0'
      '       ,13,0'
      '       ,19,0'
      '       , (( (P2QTD*P2PRECO)-P2TOTDES)*P2PCOMIS_EXTRA/100)'
      '       )'
      '       ) as VCalcComissao_extra,'
      'Sum(decode(p1tipo'
      '       ,8,(( (P2QTD*P2PRECO)-P2TOTDES)*P2PCOMIS_EXTRA/100)'
      '       ,12,(( (P2QTD*P2PRECO)-P2TOTDES)*P2PCOMIS_EXTRA/100)'
      '       ,13,(( (P2QTD*P2PRECO)-P2TOTDES)*P2PCOMIS_EXTRA/100)'
      '       ,19,(( (P2QTD*P2PRECO)-P2TOTDES)*P2PCOMIS_EXTRA/100)'
      '       ,0)'
      '       ) as VCalcComissao_dev_extra,'
      ' Sum(decode(p1tipo'
      '       ,8,0'
      '       ,12,0'
      '       ,13,0'
      '       ,19,0'
      '       ,(p2qtd*p2preco) )'
      '       )  as valorsdesc,'
      ' Sum(decode(p1tipo'
      '       ,8,(p2qtd*p2preco)'
      '       ,12,(p2qtd*p2preco)'
      '       ,13,(p2qtd*p2preco)'
      '       ,19,(p2qtd*p2preco)'
      '       ,0 )'
      '       )  as valorsdesc_dev,'
      ' Sum(decode(p1tipo'
      '       ,8,0'
      '       ,12,0'
      '       ,13,0'
      '       ,19,0'
      '       ,(p2totliq-p2descrat) )'
      '       ) as vlrtotal,'
      'Sum(decode(p1tipo'
      '       ,8,(p2totliq-p2descrat)'
      '       ,12,(p2totliq-p2descrat)'
      '       ,13,(p2totliq-p2descrat)'
      '       ,19,(p2totliq-p2descrat)'
      '       ,0 )'
      '       ) as vlrtotal_dev,'
      'Sum(decode(p1tipo'
      '       ,8,0'
      '       ,12,0'
      '       ,13,0'
      '       ,19,0'
      '       ,1  )'
      '       ) as ped,'
      ' Sum(decode(p1tipo'
      '       ,8,1'
      '       ,12,1'
      '       ,13,1'
      '       ,19,1'
      '       ,0  )'
      '       ) as ped_dev'
      ' from CADP01,CADP02,CADVEN where  P2CODEMP=P1CODEMP and'
      '               P2LOTSEQ=P1LOTSEQ'
      '               and P2CHAVE=P1CHAVE and P1TIPO<>0 AND P1TIPO<>10'
      '               and P1STATUS <9'
      '               AND P1DATAP<='#39'01/01/1900'#39
      '               AND VCODVEN=P1CODVEN'
      ''
      'GROUP BY P1CODVEN,VNOME,P1DATAP')
    Left = 312
    Top = 32
    object Qr_TotVdaCODVEN: TFloatField
      FieldName = 'CODVEN'
    end
    object Qr_TotVdaNOMEVEN: TStringField
      FieldName = 'NOMEVEN'
      Size = 40
    end
    object Qr_TotVdaVLRCOMISSAO_EXTRA: TFloatField
      DisplayLabel = 'Vlr.Comis.Extra'
      FieldName = 'VLRCOMISSAO_EXTRA'
    end
    object Qr_TotVdaVLRCOMISSAO_EXTRA_DEV: TFloatField
      DisplayLabel = 'Vlr.comis.Extra Dev'
      FieldName = 'VLRCOMISSAO_EXTRA_DEV'
    end
    object Qr_TotVdaVCALCCOMISSAO: TFloatField
      DisplayLabel = 'Vlr.Comiss'#227'o'
      FieldName = 'VCALCCOMISSAO'
    end
    object Qr_TotVdaVCALCCOMISSAO_DEV: TFloatField
      DisplayLabel = 'Vlr.Comiss'#227'o Dev'
      FieldName = 'VCALCCOMISSAO_DEV'
    end
    object Qr_TotVdaVCALCCOMISSAO_EXTRA: TFloatField
      DisplayLabel = 'Comis.Extra'
      FieldName = 'VCALCCOMISSAO_EXTRA'
    end
    object Qr_TotVdaVCALCCOMISSAO_DEV_EXTRA: TFloatField
      DisplayLabel = 'Vlr.Comis.Extra Dev'
      FieldName = 'VCALCCOMISSAO_DEV_EXTRA'
    end
    object Qr_TotVdaVLRTOTAL: TFloatField
      DisplayLabel = 'Valor Venda'
      FieldName = 'VLRTOTAL'
    end
    object Qr_TotVdaVLRTOTAL_DEV: TFloatField
      DisplayLabel = 'Total Devol'
      FieldName = 'VLRTOTAL_DEV'
    end
    object Qr_TotVdaPED: TFloatField
      DisplayLabel = 'Qtd.Ped'
      FieldName = 'PED'
    end
    object Qr_TotVdaPED_DEV: TFloatField
      DisplayLabel = 'Qtd.Ped.Dev'
      FieldName = 'PED_DEV'
    end
    object Qr_TotVdaP1DATAP: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'P1DATAP'
    end
    object Qr_TotVdavalorcomisliq: TFloatField
      DisplayLabel = 'Vlr.Comiss'#227'o'
      FieldKind = fkCalculated
      FieldName = 'valorcomisliq'
      Calculated = True
    end
    object Qr_TotVdaqtddev: TFloatField
      DisplayLabel = 'Qtd.Ped.Dev'
      FieldKind = fkCalculated
      FieldName = 'qtddev'
      Calculated = True
    end
    object Qr_TotVdaqtdped: TFloatField
      DisplayLabel = 'Qtd.Pedidos'
      FieldKind = fkCalculated
      FieldName = 'qtdped'
      Calculated = True
    end
    object Qr_TotVdatotalliq: TFloatField
      DisplayLabel = 'Venda-Devolu'#231#227'o'
      FieldKind = fkCalculated
      FieldName = 'totalliq'
      Calculated = True
    end
  end
  object Src_TotVda: TDataSource
    DataSet = Qr_TotVda
    Left = 352
    Top = 40
  end
end
