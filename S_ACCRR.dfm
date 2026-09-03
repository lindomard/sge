object Frm_AcCRR: TFrm_AcCRR
  Left = 99
  Top = 212
  Width = 974
  Height = 489
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Relat'#243'rio de Formas de Pagamentos de Duplicatas a Receber'
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
  object Panel1: TPanel
    Left = 0
    Top = 194
    Width = 966
    Height = 264
    Align = alBottom
    TabOrder = 0
    object sb_SalvarPadrao: TSpeedButton
      Left = 427
      Top = 232
      Width = 150
      Height = 28
      Hint = 'Salva as configura'#231#245'es como padr'#227'o'
      Caption = '&Salvar Padr'#227'o'
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
      ParentShowHint = False
      ShowHint = True
      OnClick = sb_SalvarPadraoClick
    end
    object Label24: TLabel
      Left = 71
      Top = 147
      Width = 65
      Height = 13
      Caption = 'Banco/Caixa:'
    end
    object Label6: TLabel
      Left = 73
      Top = 184
      Width = 56
      Height = 13
      Caption = 'Usu'#225'rio/Cx:'
    end
    object bbImprimir: TBitBtn
      Left = 227
      Top = 232
      Width = 150
      Height = 28
      Caption = '&Imprimir'
      TabOrder = 10
      OnClick = bbImprimirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
        8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
        8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
        8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object bbSair: TBitBtn
      Left = 607
      Top = 232
      Width = 150
      Height = 28
      Caption = '&Sair'
      TabOrder = 11
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
    object NRF: TEdit
      Left = 298
      Top = 109
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = NRFExit
    end
    object NRI: TEdit
      Left = 143
      Top = 109
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnExit = NRIExit
    end
    object CODCLI: TEdit
      Left = 143
      Top = 27
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = CODCLIExit
      OnKeyPress = CODCLIKeyPress
    end
    object MDT2: TMaskEdit
      Left = 239
      Top = 9
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object MDT1: TMaskEdit
      Left = 143
      Top = 9
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 0
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object bbAplicar: TBitBtn
      Left = 21
      Top = 232
      Width = 150
      Height = 28
      Caption = '&Aplicar'
      TabOrder = 9
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
    object cb_impgraf: TCheckBox
      Left = 397
      Top = 112
      Width = 110
      Height = 17
      Caption = 'Impress'#227'o Gr'#225'fica'
      TabOrder = 5
    end
    object LOTEI: TEdit
      Left = 143
      Top = 127
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      OnExit = LOTEIExit
    end
    object LOTEF: TEdit
      Left = 298
      Top = 127
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
      OnExit = LOTEFExit
    end
    object CB_INIBIRCHQP: TCheckBox
      Left = 398
      Top = 130
      Width = 252
      Height = 17
      Caption = 'Inibir Cheques Pre-Datados do dia'
      TabOrder = 6
    end
    object StaticText2: TStaticText
      Left = 9
      Top = 27
      Width = 135
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Cliente:'
      Color = 16754342
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 12
    end
    object StaticText3: TStaticText
      Left = 11
      Top = 109
      Width = 133
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'NR Inicial:'
      Color = 16754342
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 13
    end
    object StaticText4: TStaticText
      Left = 11
      Top = 127
      Width = 133
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Lote Inicial:'
      Color = 16754342
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 14
    end
    object StaticText1: TStaticText
      Left = 9
      Top = 9
      Width = 135
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Per'#237'odo de'
      Color = 16754342
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 15
    end
    object StaticText5: TStaticText
      Left = 222
      Top = 9
      Width = 18
      Height = 19
      Alignment = taCenter
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = #224
      Color = 16754342
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 16
    end
    object lbx_codcli: TListBox
      Left = 222
      Top = 27
      Width = 401
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 17
      OnKeyDown = lbx_codcliKeyDown
    end
    object OMITIR_CLI: TCheckBox
      Left = 144
      Top = 49
      Width = 51
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 18
    end
    object StaticText6: TStaticText
      Left = 11
      Top = 68
      Width = 133
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Forma de Pagamento:'
      Color = 16754342
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 19
    end
    object CODFP: TEdit
      Left = 143
      Top = 68
      Width = 80
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 20
      OnExit = CODFPExit
      OnKeyPress = CODFPKeyPress
    end
    object lbx_codfp: TListBox
      Left = 222
      Top = 68
      Width = 401
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 21
      OnKeyDown = lbx_codfpKeyDown
    end
    object OMITIR_FP: TCheckBox
      Left = 144
      Top = 91
      Width = 51
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 22
    end
    object StaticText7: TStaticText
      Left = 222
      Top = 109
      Width = 77
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'NR Final:'
      Color = 16754342
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 23
    end
    object StaticText8: TStaticText
      Left = 222
      Top = 127
      Width = 77
      Height = 19
      Alignment = taRightJustify
      AutoSize = False
      BorderStyle = sbsSingle
      Caption = 'Lote Final:'
      Color = 16754342
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      TabOrder = 24
    end
    object edt_codbco: TEdit
      Left = 143
      Top = 145
      Width = 50
      Height = 19
      Hint = 'Digite o C'#243'digo a Ser Filtrado'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 25
      OnExit = edt_codbcoExit
      OnKeyPress = edt_codbcoKeyPress
    end
    object lbx_codbco: TListBox
      Left = 192
      Top = 145
      Width = 333
      Height = 38
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 26
      OnKeyDown = lbx_codbcoKeyDown
    end
    object OMITIR_BCO: TCheckBox
      Left = 143
      Top = 164
      Width = 48
      Height = 17
      Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 27
    end
    object edt_codusr_cx: TEdit
      Left = 143
      Top = 182
      Width = 50
      Height = 19
      Hint = 'Digite o C'#243'digo a Ser Filtrado'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 28
      OnExit = edt_codusr_cxExit
      OnKeyPress = edt_codusr_cxKeyPress
    end
    object lbx_codusr_cx: TListBox
      Left = 192
      Top = 182
      Width = 333
      Height = 38
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 29
      OnKeyDown = lbx_codusr_cxKeyDown
    end
    object OMITIR_USR_CX: TCheckBox
      Left = 143
      Top = 201
      Width = 48
      Height = 17
      Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 30
    end
    object bbCorrigir: TBitBtn
      Left = 552
      Top = 192
      Width = 137
      Height = 25
      Caption = 'Corrigir Agora'
      TabOrder = 31
      OnClick = bbCorrigirClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 966
    Height = 194
    Align = alClient
    DataSource = Src_Temp
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'TP_OBS'
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_NUMERO'
        Width = 65
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_DESD'
        Width = 37
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_TIPO'
        Width = 28
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_IMPDTVCTO'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_IMPDATPAG'
        Width = 71
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_IMPCODCLI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_NOMCLI'
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'TP_IMPVALDUP'
        Width = 81
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'TP_IMPVLRST'
        Width = 80
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'TP_IMPVLRIPI'
        Width = 81
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'TP_IMPFPDESC'
        Width = 85
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'TP_IMPFPJUROS'
        Width = 78
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'TP_IMPFPDEVOL'
        Width = 83
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'TP_IMPFPVLRST'
        Width = 87
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'TP_IMPFPVALOR'
        Width = 85
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'TP_IMPNUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_PGFORMA'
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'TP_IMPPGNUMERO'
        Width = 82
        Visible = True
      end
      item
        Alignment = taRightJustify
        Expanded = False
        FieldName = 'TP_IMPPGVALOR'
        Width = 78
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_NUMLOT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TP_DTDEP'
        Visible = True
      end>
  end
  object RLReport1: TRLReport
    Left = 8
    Top = 463
    Width = 794
    Height = 1123
    DataSource = Src_Temp
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    NextReport = RLReport2
    Visible = False
    object RLBand1: TRLBand
      Left = 38
      Top = 54
      Width = 718
      Height = 35
      BandType = btColumnHeader
      Degrade.Direction = ddVertical
      Degrade.OppositeColor = 6619057
      object RLDBText1: TRLDBText
        Left = 0
        Top = 0
        Width = 164
        Height = 16
        Align = faLeftTop
        DataField = 'RAZAO_CAB'
        DataSource = DM1.Src_Emp
      end
      object RLLabel1: TRLLabel
        Left = 573
        Top = 1
        Width = 35
        Height = 16
        Caption = 'Data:'
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 632
        Top = 0
        Width = 84
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
      end
      object RLLabel2: TRLLabel
        Left = 0
        Top = 17
        Width = 157
        Height = 16
        Caption = 'Relat'#243'rio de Recebimento.'
      end
      object lbl_periodo: TRLLabel
        Left = 161
        Top = 17
        Width = 392
        Height = 16
        Alignment = taCenter
        AutoSize = False
      end
      object RLLabel3: TRLLabel
        Left = 572
        Top = 18
        Width = 48
        Height = 16
        Caption = 'P'#225'gina:'
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 632
        Top = 17
        Width = 84
        Height = 16
        Alignment = taRightJustify
        AutoSize = False
        Info = itPageNumber
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 121
      Width = 718
      Height = 18
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      DataFields = 'TP_NUMLOT'
      object RLBand3: TRLBand
        Left = 1
        Top = 0
        Width = 716
        Height = 9
        AfterPrint = RLBand3AfterPrint
        BeforePrint = RLBand3BeforePrint
        object RLDBText2: TRLDBText
          Left = 2
          Top = 0
          Width = 40
          Height = 7
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'TP_IMPNUMERO'
          DataSource = Src_Temp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText3: TRLDBText
          Left = 43
          Top = 0
          Width = 40
          Height = 7
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'TP_IMPDTVCTO'
          DataSource = Src_Temp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText4: TRLDBText
          Left = 85
          Top = 0
          Width = 40
          Height = 7
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'TP_IMPDATPAG'
          DataSource = Src_Temp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText5: TRLDBText
          Left = 126
          Top = 0
          Width = 23
          Height = 7
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataField = 'TP_IMPCODCLI'
          DataSource = Src_Temp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText6: TRLDBText
          Left = 146
          Top = 0
          Width = 4
          Height = 7
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataField = 'TP_IFEM'
          DataSource = Src_Temp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText7: TRLDBText
          Left = 151
          Top = 0
          Width = 181
          Height = 7
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'TP_NOMCLI'
          DataSource = Src_Temp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText8: TRLDBText
          Left = 332
          Top = 0
          Width = 40
          Height = 7
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'TP_IMPVALDUP'
          DataSource = Src_Temp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText9: TRLDBText
          Left = 375
          Top = 0
          Width = 40
          Height = 7
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'TP_IMPFPVLRST'
          DataSource = Src_Temp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText10: TRLDBText
          Left = 578
          Top = 0
          Width = 27
          Height = 7
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'TP_PGFORMA'
          DataSource = Src_Temp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText11: TRLDBText
          Left = 455
          Top = 0
          Width = 40
          Height = 7
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'TP_IMPFPJUROS'
          DataSource = Src_Temp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText12: TRLDBText
          Left = 497
          Top = 0
          Width = 40
          Height = 7
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'TP_IMPFPDEVOL'
          DataSource = Src_Temp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText13: TRLDBText
          Left = 538
          Top = 0
          Width = 40
          Height = 7
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'TP_IMPFPVALOR'
          DataSource = Src_Temp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText14: TRLDBText
          Left = 606
          Top = 0
          Width = 33
          Height = 7
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'TP_IMPPGDATA'
          DataSource = Src_Temp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText15: TRLDBText
          Left = 416
          Top = 0
          Width = 40
          Height = 7
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'TP_IMPFPDESC'
          DataSource = Src_Temp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText16: TRLDBText
          Left = 639
          Top = 0
          Width = 35
          Height = 7
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'TP_IMPPGNUMERO'
          DataSource = Src_Temp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText17: TRLDBText
          Left = 674
          Top = 0
          Width = 44
          Height = 7
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'TP_IMPPGVALOR'
          DataSource = Src_Temp
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand4: TRLBand
        Left = 1
        Top = 9
        Width = 716
        Height = 8
        BandType = btColumnFooter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        BeforePrint = RLBand4BeforePrint
        object RLLabel6: TRLLabel
          Left = 282
          Top = 0
          Width = 46
          Height = 7
          Caption = 'Total do Lote:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbl_numlot: TRLLabel
          Left = 128
          Top = 0
          Width = 55
          Height = 7
          Caption = 'N'#250'mero do Lote:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          BeforePrint = lbl_numlotBeforePrint
        end
        object RLDBResult1: TRLDBResult
          Left = 332
          Top = 0
          Width = 40
          Height = 7
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'TP_VALDUP'
          DataSource = Src_Temp
          DisplayMask = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult2: TRLDBResult
          Left = 375
          Top = 0
          Width = 40
          Height = 7
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'TP_VLRST'
          DataSource = Src_Temp
          DisplayMask = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult3: TRLDBResult
          Left = 416
          Top = 0
          Width = 40
          Height = 7
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'TP_FPDESC'
          DataSource = Src_Temp
          DisplayMask = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult4: TRLDBResult
          Left = 455
          Top = 0
          Width = 40
          Height = 7
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'TP_FPJUROS'
          DataSource = Src_Temp
          DisplayMask = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult5: TRLDBResult
          Left = 497
          Top = 0
          Width = 40
          Height = 7
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'TP_FPDEVOL'
          DataSource = Src_Temp
          DisplayMask = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object RLDBResult6: TRLDBResult
          Left = 538
          Top = 0
          Width = 40
          Height = 7
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'TP_FPVALOR'
          DataSource = Src_Temp
          DisplayMask = '#,##0.00'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          Info = riSum
          ParentFont = False
        end
        object lbl_totdoc: TRLLabel
          Left = 674
          Top = 0
          Width = 44
          Height = 7
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 89
      Width = 718
      Height = 32
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = False
      Borders.DrawRight = True
      Borders.DrawBottom = True
      object RLMemo1: TRLMemo
        Left = 334
        Top = 17
        Width = 40
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Valor do'
          'Titulo')
        ParentFont = False
      end
      object RLMemo2: TRLMemo
        Left = 3
        Top = 17
        Width = 40
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'N'#250'mero'
          'T'#237'tulo')
        ParentFont = False
      end
      object RLMemo3: TRLMemo
        Left = 45
        Top = 17
        Width = 40
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Data de'
          'Vcto.')
        ParentFont = False
      end
      object RLMemo4: TRLMemo
        Left = 86
        Top = 17
        Width = 40
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Data de'
          'Pgto.')
        ParentFont = False
      end
      object RLMemo5: TRLMemo
        Left = 127
        Top = 17
        Width = 206
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          ''
          'Nome do Cliente')
        ParentFont = False
      end
      object RLMemo6: TRLMemo
        Left = 375
        Top = 17
        Width = 40
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Retido'
          '+IPI')
        ParentFont = False
      end
      object RLMemo7: TRLMemo
        Left = 416
        Top = 17
        Width = 40
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Valor'
          'Desconto')
        ParentFont = False
      end
      object RLMemo8: TRLMemo
        Left = 456
        Top = 17
        Width = 40
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Valor'
          'Juros')
        ParentFont = False
      end
      object RLMemo9: TRLMemo
        Left = 497
        Top = 17
        Width = 40
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Valor'
          'Devolu'#231#245'es')
        ParentFont = False
      end
      object RLMemo10: TRLMemo
        Left = 538
        Top = 17
        Width = 40
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Valor'
          'Recebido')
        ParentFont = False
      end
      object RLMemo11: TRLMemo
        Left = 577
        Top = 17
        Width = 28
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Forma'
          'Pgto.')
        ParentFont = False
      end
      object RLMemo12: TRLMemo
        Left = 606
        Top = 17
        Width = 34
        Height = 15
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Data'
          'Doc.')
        ParentFont = False
      end
      object RLMemo13: TRLMemo
        Left = 639
        Top = 17
        Width = 36
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'N'#250'mero'
          'Doc.')
        ParentFont = False
      end
      object RLMemo14: TRLMemo
        Left = 674
        Top = 17
        Width = 44
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Lines.Strings = (
          'Valor'
          'Documento')
        ParentFont = False
      end
      object RLLabel4: TRLLabel
        Left = 2
        Top = 1
        Width = 576
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Caption = 'Dados Sobre o T'#237'tulo'
        Color = 16766935
        ParentColor = False
        Transparent = False
      end
      object RLLabel5: TRLLabel
        Left = 578
        Top = 1
        Width = 140
        Height = 16
        Alignment = taCenter
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Caption = 'Documentos Recebidos'
        Color = 16759260
        ParentColor = False
        Transparent = False
      end
    end
    object RLBand5: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 16
      BandType = btHeader
    end
    object RLBand6: TRLBand
      Left = 38
      Top = 139
      Width = 718
      Height = 8
      BandType = btSummary
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      BeforePrint = RLBand6BeforePrint
      object RLLabel7: TRLLabel
        Left = 282
        Top = 0
        Width = 39
        Height = 7
        Caption = 'Total Geral:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object RLDBResult8: TRLDBResult
        Left = 332
        Top = 0
        Width = 40
        Height = 7
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'TP_VALDUP'
        DataSource = Src_Temp
        DisplayMask = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult9: TRLDBResult
        Left = 375
        Top = 0
        Width = 40
        Height = 7
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'TP_VLRST'
        DataSource = Src_Temp
        DisplayMask = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult10: TRLDBResult
        Left = 416
        Top = 0
        Width = 40
        Height = 7
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'TP_FPDESC'
        DataSource = Src_Temp
        DisplayMask = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult11: TRLDBResult
        Left = 455
        Top = 0
        Width = 40
        Height = 7
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'TP_FPJUROS'
        DataSource = Src_Temp
        DisplayMask = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult12: TRLDBResult
        Left = 497
        Top = 0
        Width = 40
        Height = 7
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'TP_FPDEVOL'
        DataSource = Src_Temp
        DisplayMask = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object RLDBResult13: TRLDBResult
        Left = 539
        Top = 0
        Width = 40
        Height = 7
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        DataField = 'TP_FPVALOR'
        DataSource = Src_Temp
        DisplayMask = '#,##0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        Info = riSum
        ParentFont = False
      end
      object lbl_totgdoc: TRLLabel
        Left = 673
        Top = 0
        Width = 44
        Height = 7
        Alignment = taRightJustify
        AutoSize = False
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -7
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object RLReport2: TRLReport
      Left = 38
      Top = 147
      Width = 794
      Height = 1123
      DataSource = Src_ResFP
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      object RLBand7: TRLBand
        Left = 38
        Top = 38
        Width = 718
        Height = 35
        BandType = btColumnHeader
        Degrade.Direction = ddVertical
        Degrade.OppositeColor = 6619057
        object RLDBText18: TRLDBText
          Left = 0
          Top = 0
          Width = 164
          Height = 16
          Align = faLeftTop
          DataField = 'RAZAO_CAB'
          DataSource = DM1.Src_Emp
        end
        object RLLabel8: TRLLabel
          Left = 573
          Top = 1
          Width = 35
          Height = 16
          Caption = 'Data:'
        end
        object RLSystemInfo3: TRLSystemInfo
          Left = 632
          Top = 0
          Width = 84
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
        end
        object RLLabel9: TRLLabel
          Left = 0
          Top = 17
          Width = 237
          Height = 16
          Caption = 'Resumo das Formas dos Recebimentos'
        end
        object lbl_periodo2: TRLLabel
          Left = 241
          Top = 17
          Width = 326
          Height = 16
          Alignment = taCenter
          AutoSize = False
        end
        object RLLabel11: TRLLabel
          Left = 572
          Top = 18
          Width = 48
          Height = 16
          Caption = 'P'#225'gina:'
        end
        object RLSystemInfo4: TRLSystemInfo
          Left = 632
          Top = 17
          Width = 84
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Info = itPageNumber
        end
      end
      object RLBand8: TRLBand
        Left = 38
        Top = 73
        Width = 718
        Height = 8
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = True
        Borders.DrawRight = True
        Borders.DrawBottom = True
        Borders.FixedBottom = True
        object RLLabel10: TRLLabel
          Left = 1
          Top = 0
          Width = 68
          Height = 7
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel12: TRLLabel
          Left = 72
          Top = 0
          Width = 48
          Height = 7
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel13: TRLLabel
          Left = 121
          Top = 0
          Width = 68
          Height = 7
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel14: TRLLabel
          Left = 192
          Top = 0
          Width = 48
          Height = 7
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel15: TRLLabel
          Left = 241
          Top = 0
          Width = 68
          Height = 7
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel16: TRLLabel
          Left = 312
          Top = 0
          Width = 48
          Height = 7
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel17: TRLLabel
          Left = 362
          Top = 0
          Width = 68
          Height = 7
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel18: TRLLabel
          Left = 433
          Top = 0
          Width = 48
          Height = 7
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel19: TRLLabel
          Left = 481
          Top = 0
          Width = 68
          Height = 7
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel20: TRLLabel
          Left = 552
          Top = 0
          Width = 48
          Height = 7
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel21: TRLLabel
          Left = 601
          Top = 0
          Width = 68
          Height = 7
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Descri'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLLabel22: TRLLabel
          Left = 672
          Top = 0
          Width = 48
          Height = 7
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Valor'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLDetailGrid1: TRLDetailGrid
        Left = 38
        Top = 81
        Width = 718
        Height = 7
        Borders.Sides = sdCustom
        Borders.DrawLeft = True
        Borders.DrawTop = False
        Borders.DrawRight = True
        Borders.DrawBottom = False
        ColCount = 6
        object RLDBText19: TRLDBText
          Left = 1
          Top = 0
          Width = 68
          Height = 7
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'FPDESC'
          DataSource = Src_ResFP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLDBText20: TRLDBText
          Left = 72
          Top = 0
          Width = 41
          Height = 7
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          DataField = 'VALREC'
          DataSource = Src_ResFP
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
      end
      object RLBand9: TRLBand
        Left = 38
        Top = 88
        Width = 718
        Height = 16
        BandType = btColumnFooter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = True
        Borders.DrawRight = False
        Borders.DrawBottom = False
      end
    end
  end
  object Qr_FP: TQuery
    OnCalcFields = Qr_FPCalcFields
    DatabaseName = 'SG_ASSOC'
    SessionName = 'Default'
    SQL.Strings = (
      'Select * From FPCR where FPCODEMP is null'
      'and FPLOTE is null'
      '')
    Left = 316
    Top = 12
    object Qr_FPforma: TStringField
      FieldKind = fkCalculated
      FieldName = 'forma'
      Size = 10
      Calculated = True
    end
    object Qr_FPFPCODEMP: TFloatField
      FieldName = 'FPCODEMP'
      Origin = 'SG_ASSOC.FPCR.FPCODEMP'
    end
    object Qr_FPFPSEQ: TFloatField
      FieldName = 'FPSEQ'
      Origin = 'SG_ASSOC.FPCR.FPSEQ'
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
    object Qr_FPvinculo: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'vinculo'
      Calculated = True
    end
    object Qr_FPFPLOTSEQ: TFloatField
      FieldName = 'FPLOTSEQ'
      Origin = 'SG_ASSOC.FPCR.FPLOTSEQ'
    end
    object Qr_FPFPLOTSEQ_FC: TFloatField
      FieldName = 'FPLOTSEQ_FC'
      Origin = 'SG_ASSOC.FPCR.FPLOTSEQ_FC'
    end
    object Qr_FPFPLEMAT: TFloatField
      FieldName = 'FPLEMAT'
      Origin = 'SG_ASSOC.FPCR.FPLEMAT'
    end
    object Qr_FPFPVINCULO: TFloatField
      FieldName = 'FPVINCULO'
      Origin = 'SG_ASSOC.FPCR.FPVINCULO'
    end
    object Qr_FPFPNATUREZA: TFloatField
      FieldName = 'FPNATUREZA'
      Origin = 'SG_ASSOC.FPCR.FPNATUREZA'
    end
    object Qr_FPFPDATDEP: TDateTimeField
      FieldName = 'FPDATDEP'
      Origin = 'SG_ASSOC.FPCR.FPDATDEP'
    end
  end
  object Qr_Lote: TQuery
    OnCalcFields = Qr_LoteCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select FPCR.FPLOTE,FPCR.FPLOTSEQ,'
      '          max(FPCR.FPDATA) AS DATA,'
      '          max(FPCR.FPCODCLI) AS CODCLI'
      ' from FPCR, FPCRDUP'
      ' where FPCR.FPCODEMP is null'
      ' and FPCRDUP.FPLOTSEQ=FPCR.FPLOTSEQ'
      ' and FPCRDUP.FPLOTE=FPCR.FPLOTE'
      ' and FPCRDUP.FPCODEMP=FPCR.FPCODEMP'
      'group by FPCR.FPLOTE,FPCR.FPLOTSEQ')
    Left = 24
    Top = 56
    object Qr_LoteFPLOTE: TFloatField
      DisplayLabel = 'Lote'
      FieldName = 'FPLOTE'
    end
    object Qr_LoteFPLOTSEQ: TFloatField
      FieldName = 'FPLOTSEQ'
      Origin = 'SG_ASSOC.FPCR.FPLOTSEQ'
    end
    object Qr_LoteDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = 'SG_ASSOC.FPCR.FPDATA'
    end
    object Qr_LoteCODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'CODCLI'
      Origin = 'SG_ASSOC.FPCR.FPCODCLI'
    end
    object Qr_Loterazao: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldKind = fkCalculated
      FieldName = 'razao'
      Size = 40
      Calculated = True
    end
  end
  object Qr_Tit: TQuery
    OnCalcFields = Qr_TitCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from FPCRDUP where FPCODEMP is null'
      '             and FPLOTE is null')
    Left = 528
    Top = 80
    object Qr_TitFPCODEMP: TFloatField
      FieldName = 'FPCODEMP'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODEMP'
    end
    object Qr_TitFPSEQ: TFloatField
      FieldName = 'FPSEQ'
      Origin = 'SG_ASSOC.FPCRDUP.FPSEQ'
    end
    object Qr_TitFPLOTE: TFloatField
      FieldName = 'FPLOTE'
      Origin = 'SG_ASSOC.FPCRDUP.FPLOTE'
    end
    object Qr_TitFPNUMERO: TFloatField
      FieldName = 'FPNUMERO'
      Origin = 'SG_ASSOC.FPCRDUP.FPNUMERO'
    end
    object Qr_TitFPDESD: TStringField
      FieldName = 'FPDESD'
      Origin = 'SG_ASSOC.FPCRDUP.FPDESD'
      Size = 2
    end
    object Qr_TitFPTIPO: TFloatField
      FieldName = 'FPTIPO'
      Origin = 'SG_ASSOC.FPCRDUP.FPTIPO'
    end
    object Qr_TitFPCODCLI: TFloatField
      FieldName = 'FPCODCLI'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODCLI'
    end
    object Qr_TitFPDTEMIS: TDateTimeField
      FieldName = 'FPDTEMIS'
      Origin = 'SG_ASSOC.FPCRDUP.FPDTEMIS'
    end
    object Qr_TitFPCAIXA: TFloatField
      FieldName = 'FPCAIXA'
      Origin = 'SG_ASSOC.FPCRDUP.FPCAIXA'
    end
    object Qr_TitFPCODUSR: TFloatField
      FieldName = 'FPCODUSR'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODUSR'
    end
    object Qr_TitFPVALOR: TFloatField
      FieldName = 'FPVALOR'
      Origin = 'SG_ASSOC.FPCRDUP.FPVALOR'
    end
    object Qr_TitFPJUROS: TFloatField
      FieldName = 'FPJUROS'
      Origin = 'SG_ASSOC.FPCRDUP.FPJUROS'
    end
    object Qr_TitFPDESC: TFloatField
      FieldName = 'FPDESC'
      Origin = 'SG_ASSOC.FPCRDUP.FPDESC'
    end
    object Qr_Titnomcli: TStringField
      FieldKind = fkCalculated
      FieldName = 'nomcli'
      Size = 40
      Calculated = True
    end
    object Qr_TitFPLOTSEQ: TFloatField
      FieldName = 'FPLOTSEQ'
      Origin = 'SG_ASSOC.FPCRDUP.FPLOTSEQ'
    end
    object Qr_TitFPCODECF: TFloatField
      FieldName = 'FPCODECF'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODECF'
    end
    object Qr_TitFPNR: TFloatField
      FieldName = 'FPNR'
      Origin = 'SG_ASSOC.FPCRDUP.FPNR'
    end
    object Qr_TitFPDUP_CODEMP: TFloatField
      FieldName = 'FPDUP_CODEMP'
      Origin = 'SG_ASSOC.FPCRDUP.FPDUP_CODEMP'
    end
    object Qr_TitFPCODVEN: TFloatField
      FieldName = 'FPCODVEN'
      Origin = 'SG_ASSOC.FPCRDUP.FPCODVEN'
    end
    object Qr_TitFPDTBX: TDateTimeField
      FieldName = 'FPDTBX'
      Origin = 'SG_ASSOC.FPCRDUP.FPDTBX'
    end
    object Qr_TitFPLEMAT: TFloatField
      FieldName = 'FPLEMAT'
      Origin = 'SG_ASSOC.FPCRDUP.FPLEMAT'
    end
    object Qr_TitFPVLRST: TFloatField
      FieldName = 'FPVLRST'
      Origin = 'SG_ASSOC.FPCRDUP.FPVLRST'
    end
    object Qr_TitFPVLRIPI: TFloatField
      FieldName = 'FPVLRIPI'
      Origin = 'SG_ASSOC.FPCRDUP.FPVLRIPI'
    end
    object Qr_TitFPVALDUP: TFloatField
      FieldName = 'FPVALDUP'
      Origin = 'SG_ASSOC.FPCRDUP.FPVALDUP'
    end
    object Qr_TitFPDEVOL: TFloatField
      FieldName = 'FPDEVOL'
      Origin = 'SG_ASSOC.FPCRDUP.FPDEVOL'
    end
    object Qr_TitFPDATPAG: TDateTimeField
      FieldName = 'FPDATPAG'
      Origin = 'SG_ASSOC.FPCRDUP.FPDATPAG'
    end
    object Qr_TitFPDTVCTO: TDateTimeField
      FieldName = 'FPDTVCTO'
      Origin = 'SG_ASSOC.FPCRDUP.FPDTVCTO'
    end
    object Qr_TitUSUARIO: TStringField
      FieldKind = fkCalculated
      FieldName = 'USUARIO'
      Size = 10
      Calculated = True
    end
  end
  object Src_Lote: TDataSource
    DataSet = Qr_Lote
    Left = 552
    Top = 56
  end
  object Src_Temp: TDataSource
    DataSet = Tb_Temp
    Left = 232
    Top = 136
  end
  object Src_ResFP: TDataSource
    DataSet = Tb_ResFP
    Left = 488
    Top = 32
  end
  object Tb_ResFP: TQuery
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select sum(FPCR.FPVALOR) AS VALREC, FPCR.FPFORMA '
      ',fpdesc  from cadfp,fpcr'
      'where FPFORMA(+)=FPCODIGO'
      'GROUP BY FPFORMA,FPDESC')
    Left = 544
    Top = 32
    object Tb_ResFPVALREC: TFloatField
      FieldName = 'VALREC'
    end
    object Tb_ResFPFPFORMA: TFloatField
      FieldName = 'FPFORMA'
    end
    object Tb_ResFPFPDESC: TStringField
      FieldName = 'FPDESC'
      Size = 15
    end
  end
  object Tb_Temp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 480
    Top = 112
    object Tb_TempTP_OBS: TStringField
      DisplayLabel = 'Obs'
      FieldName = 'TP_OBS'
      Size = 1
    end
    object Tb_TempTP_NUMERO: TFloatField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'TP_NUMERO'
    end
    object Tb_TempTP_DESD: TStringField
      DisplayLabel = 'Desd'
      FieldName = 'TP_DESD'
      Size = 2
    end
    object Tb_TempTP_TIPO: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TP_TIPO'
      Size = 1
    end
    object Tb_TempTP_DTVCTO: TDateTimeField
      DisplayLabel = 'Dt.vcto'
      FieldName = 'TP_DTVCTO'
    end
    object Tb_TempTP_DATPAG: TDateTimeField
      DisplayLabel = 'Dt..Pgto'
      FieldName = 'TP_DATPAG'
    end
    object Tb_TempTP_CODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'TP_CODCLI'
    end
    object Tb_TempTP_NOMCLI: TStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'TP_NOMCLI'
      Size = 40
    end
    object Tb_TempTP_VALDUP: TFloatField
      DisplayLabel = 'Valor Duplicata'
      FieldName = 'TP_VALDUP'
    end
    object Tb_TempTP_VLRST: TFloatField
      DisplayLabel = 'valor ST'
      FieldName = 'TP_VLRST'
    end
    object Tb_TempTP_VLRIPI: TFloatField
      DisplayLabel = 'valor IPI'
      FieldName = 'TP_VLRIPI'
    end
    object Tb_TempTP_FPDESC: TFloatField
      DisplayLabel = 'vlr Desconto'
      FieldName = 'TP_FPDESC'
    end
    object Tb_TempTP_FPJUROS: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'TP_FPJUROS'
    end
    object Tb_TempTP_FPDEVOL: TFloatField
      DisplayLabel = 'Devolu'#231#227'o'
      FieldName = 'TP_FPDEVOL'
    end
    object Tb_TempTP_FPVLRST: TFloatField
      DisplayLabel = 'Valor ST'
      FieldName = 'TP_FPVLRST'
    end
    object Tb_TempTP_FPVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'TP_FPVALOR'
    end
    object Tb_TempTP_IMPDTVCTO: TStringField
      DisplayLabel = 'Dt.vcto'
      FieldName = 'TP_IMPDTVCTO'
      Size = 8
    end
    object Tb_TempTP_IMPDATPAG: TStringField
      DisplayLabel = 'data Pagamento'
      FieldName = 'TP_IMPDATPAG'
      Size = 8
    end
    object Tb_TempTP_IMPCODCLI: TStringField
      DisplayLabel = 'C'#243'digo Cliente'
      FieldName = 'TP_IMPCODCLI'
      Size = 14
    end
    object Tb_TempTP_IMPNOMCLI: TStringField
      DisplayLabel = 'Nome do cliente'
      FieldName = 'TP_IMPNOMCLI'
      Size = 40
    end
    object Tb_TempTP_IMPVALDUP: TStringField
      DisplayLabel = 'Valor'
      FieldName = 'TP_IMPVALDUP'
      Size = 15
    end
    object Tb_TempTP_IMPVLRST: TStringField
      DisplayLabel = 'Valor ST'
      FieldName = 'TP_IMPVLRST'
      Size = 15
    end
    object Tb_TempTP_IMPVLRIPI: TStringField
      DisplayLabel = 'Valor IPI'
      FieldName = 'TP_IMPVLRIPI'
      Size = 15
    end
    object Tb_TempTP_IMPFPDESC: TStringField
      DisplayLabel = 'Valor Desconto'
      FieldName = 'TP_IMPFPDESC'
      Size = 15
    end
    object Tb_TempTP_IMPFPJUROS: TStringField
      DisplayLabel = 'Valor Juros'
      FieldName = 'TP_IMPFPJUROS'
      Size = 15
    end
    object Tb_TempTP_IMPFPDEVOL: TStringField
      DisplayLabel = 'Devolucoes'
      FieldName = 'TP_IMPFPDEVOL'
      Size = 15
    end
    object Tb_TempTP_IMPFPVLRST: TStringField
      DisplayLabel = 'valor ST'
      FieldName = 'TP_IMPFPVLRST'
      Size = 15
    end
    object Tb_TempTP_IMPFPVALOR: TStringField
      DisplayLabel = 'Valor'
      FieldName = 'TP_IMPFPVALOR'
      Size = 15
    end
    object Tb_TempTP_IMPNUMERO: TStringField
      DisplayLabel = 'Numero'
      FieldName = 'TP_IMPNUMERO'
      Size = 8
    end
    object Tb_TempTP_PGFORMA: TStringField
      DisplayLabel = 'Forma'
      FieldName = 'TP_PGFORMA'
      Size = 30
    end
    object Tb_TempTP_PGDATA: TDateTimeField
      DisplayLabel = 'data'
      FieldName = 'TP_PGDATA'
    end
    object Tb_TempTP_PGNATUREZA: TFloatField
      DisplayLabel = 'Natureeza'
      FieldName = 'TP_PGNATUREZA'
    end
    object Tb_TempTP_PGNUMERO: TFloatField
      DisplayLabel = 'Numero'
      FieldName = 'TP_PGNUMERO'
    end
    object Tb_TempTP_PGVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'TP_PGVALOR'
    end
    object Tb_TempTP_IMPPGDATA: TStringField
      DisplayLabel = 'data'
      FieldName = 'TP_IMPPGDATA'
      Size = 8
    end
    object Tb_TempTP_IMPPGNUMERO: TStringField
      DisplayLabel = 'Numero'
      FieldName = 'TP_IMPPGNUMERO'
      Size = 12
    end
    object Tb_TempTP_IMPPGVALOR: TStringField
      DisplayLabel = 'Valor'
      FieldName = 'TP_IMPPGVALOR'
      Size = 15
    end
    object Tb_TempTP_NUMLOT: TFloatField
      DisplayLabel = 'Numero Lote'
      FieldName = 'TP_NUMLOT'
    end
    object Tb_TempTP_IFEM: TStringField
      DisplayLabel = 'Ifem'
      FieldName = 'TP_IFEM'
      Size = 1
    end
    object Tb_TempTP_TIPOCOB: TStringField
      DisplayLabel = 'Tipo Cobranca'
      FieldName = 'TP_TIPOCOB'
    end
    object Tb_TempTP_DTDEP: TStringField
      DisplayLabel = 'Data Deposito'
      FieldName = 'TP_DTDEP'
      Size = 8
    end
    object Tb_TempUSUARIO: TStringField
      DisplayLabel = 'Usuario'
      FieldName = 'USUARIO'
      Size = 10
    end
  end
end
