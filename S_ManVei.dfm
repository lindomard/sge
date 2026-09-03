object Frm_ManVei: TFrm_ManVei
  Left = 167
  Top = 161
  Width = 796
  Height = 503
  Caption = 'Manuten'#231#245'es de Ve'#237'culos'
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
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 788
    Height = 81
    Align = alTop
    Caption = 'Ve'#237'culos:'
    TabOrder = 0
    object Label1: TLabel
      Left = 147
      Top = 13
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 130
      Top = 33
      Width = 56
      Height = 13
      Caption = 'Per'#237'odo de:'
    end
    object Label3: TLabel
      Left = 275
      Top = 34
      Width = 6
      Height = 13
      Caption = #224
    end
    object CODVEI: TEdit
      Left = 193
      Top = 9
      Width = 103
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnEnter = CODVEIEnter
      OnExit = CODVEIExit
      OnKeyPress = CODVEIKeyPress
    end
    object NOMVEI: TEdit
      Left = 295
      Top = 9
      Width = 309
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 1
    end
    object MDT1: TMaskEdit
      Left = 193
      Top = 27
      Width = 71
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 2
      Text = '  /  /    '
      OnEnter = CODVEIEnter
    end
    object MDT2: TMaskEdit
      Left = 295
      Top = 27
      Width = 71
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 3
      Text = '  /  /    '
      OnEnter = CODVEIEnter
    end
    object cb_tppesq: TCheckBox
      Left = 375
      Top = 29
      Width = 211
      Height = 17
      Caption = 'Pesquisar pela data de Entrega'
      TabOrder = 4
      OnEnter = CODVEIEnter
    end
    object bbAtualizar: TBitBtn
      Left = 212
      Top = 48
      Width = 101
      Height = 25
      Caption = '&Atualizar'
      TabOrder = 5
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
    object bbSair: TBitBtn
      Left = 435
      Top = 51
      Width = 101
      Height = 25
      Caption = '&Sair'
      TabOrder = 6
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
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 81
    Width = 788
    Height = 192
    Align = alClient
    Caption = 'Registros Encontrados'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 784
      Height = 150
      Align = alClient
      DataSource = DM2.Src_Vei02
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'V2CODMAN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'V2EMPMAN'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'V2EMCONTATO'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'V2FONE'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'V2QTD'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'V2PCOUNI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'V2KM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'V2STATUS'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'V2FPGTO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'V2OBS01'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'V2OBS02'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'V2OBS03'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'V2OBS04'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dataenv'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'dataret'
          Width = 64
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'total'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomeman'
          Width = 64
          Visible = True
        end>
    end
    object DBNavigator1: TDBNavigator
      Left = 2
      Top = 165
      Width = 784
      Height = 25
      DataSource = DM2.Src_Imo02
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Align = alBottom
      TabOrder = 1
    end
    object RLReport1: TRLReport
      Left = 18
      Top = -75
      Width = 794
      Height = 1123
      Borders.Sides = sdCustom
      Borders.DrawLeft = True
      Borders.DrawTop = True
      Borders.DrawRight = True
      Borders.DrawBottom = True
      DataSource = DM2.Src_Vei02
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      PrintEmpty = False
      ShowProgress = False
      Visible = False
      object RLBand1: TRLBand
        Left = 39
        Top = 39
        Width = 716
        Height = 132
        BandType = btTitle
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        object lbl_ordem: TRLLabel
          Left = 1
          Top = 24
          Width = 718
          Height = 23
          Alignment = taCenter
          AutoSize = False
          Caption = 'Ordem de Aquisi'#231#227'o/Manuten'#231#227'o de Veiculos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -20
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object RLSystemInfo1: TRLSystemInfo
          Left = 584
          Top = 71
          Width = 39
          Height = 16
        end
        object RLSystemInfo2: TRLSystemInfo
          Left = 674
          Top = 71
          Width = 39
          Height = 16
          Alignment = taRightJustify
          Info = itHour
        end
        object RLLabel1: TRLLabel
          Left = 665
          Top = 2
          Width = 8
          Height = 16
          Caption = '/'
        end
        object RLSystemInfo4: TRLSystemInfo
          Left = 622
          Top = 2
          Width = 41
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Info = itPageNumber
        end
        object lbl_periodo: TRLLabel
          Left = 257
          Top = 48
          Width = 206
          Height = 18
          Alignment = taCenter
          Caption = 'De 01/01/1900 '#224' 31/12/1900'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object valortotal: TRLLabel
          Left = 617
          Top = 114
          Width = 99
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Valor Total'
        end
        object pcouni: TRLLabel
          Left = 452
          Top = 114
          Width = 92
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Pre'#231'o Unit'#225'rio'
        end
        object fpgto: TRLLabel
          Left = 375
          Top = 114
          Width = 77
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Desc p/ Qtd'
        end
        object codigo: TRLLabel
          Left = 1
          Top = 114
          Width = 48
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Codigo'
        end
        object descricao: TRLLabel
          Left = 49
          Top = 114
          Width = 253
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Descri'#231#227'o da Manuten'#231#227'o'
        end
        object lbl_produto: TRLLabel
          Left = 272
          Top = 89
          Width = 155
          Height = 16
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Descri'#231#227'o da Manuten'#231#227'o'
        end
        object RLLabel2: TRLLabel
          Left = 302
          Top = 114
          Width = 74
          Height = 18
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Data'
        end
        object RLLabel4: TRLLabel
          Left = 544
          Top = 114
          Width = 73
          Height = 18
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = False
          Caption = 'Quantidade'
        end
      end
      object RLBand2: TRLBand
        Left = 39
        Top = 171
        Width = 716
        Height = 18
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        BeforePrint = RLBand2BeforePrint
        object RLDBText1: TRLDBText
          Left = 1
          Top = 1
          Width = 48
          Height = 16
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'V2CODVEI'
          DataSource = DM2.Src_Vei02
        end
        object RLDBText2: TRLDBText
          Left = 49
          Top = 1
          Width = 253
          Height = 16
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'nomeman'
          DataSource = DM2.Src_Vei02
        end
        object RLDBText3: TRLDBText
          Left = 375
          Top = 1
          Width = 77
          Height = 16
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'V2DESCPQTD'
          DataSource = DM2.Src_Vei02
        end
        object RLDBText4: TRLDBText
          Left = 617
          Top = 1
          Width = 98
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'total'
          DataSource = DM2.Src_Vei02
        end
        object RLDBText5: TRLDBText
          Left = 452
          Top = 1
          Width = 92
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'V2PCOUNI'
          DataSource = DM2.Src_Vei02
        end
        object RLDBText6: TRLDBText
          Left = 544
          Top = 1
          Width = 73
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'V2QTD'
          DataSource = DM2.Src_Vei02
        end
        object RLDBText7: TRLDBText
          Left = 302
          Top = 1
          Width = 74
          Height = 16
          Alignment = taCenter
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = True
          Borders.DrawBottom = False
          DataField = 'V2DATAEM'
          DataSource = DM2.Src_Vei02
        end
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 712
        Top = 40
        Width = 41
        Height = 16
        AutoSize = False
        Info = itLastPageNumber
      end
      object RLBand3: TRLBand
        Left = 39
        Top = 189
        Width = 716
        Height = 20
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        BeforePrint = RLBand3BeforePrint
        object RLLabel3: TRLLabel
          Left = 453
          Top = 1
          Width = 91
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Totaliza'#231#227'o..:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object lbl_totger: TRLLabel
          Left = 544
          Top = 1
          Width = 172
          Height = 18
          Alignment = taRightJustify
          AutoSize = False
          Borders.Sides = sdCustom
          Borders.DrawLeft = False
          Borders.DrawTop = False
          Borders.DrawRight = False
          Borders.DrawBottom = False
          Caption = 'Totaliza'#231#227'o..:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 273
    Width = 788
    Height = 155
    Align = alBottom
    Caption = 'Dados Para Manuten'#231#227'o:'
    Enabled = False
    TabOrder = 2
    object Label4: TLabel
      Left = 11
      Top = 16
      Width = 36
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label5: TLabel
      Left = 374
      Top = 16
      Width = 58
      Height = 13
      Caption = 'Quantidade:'
    end
    object Label6: TLabel
      Left = 512
      Top = 16
      Width = 70
      Height = 13
      Caption = 'Pre'#231'o Unit'#225'rio:'
    end
    object Label7: TLabel
      Left = 667
      Top = 15
      Width = 27
      Height = 13
      Caption = 'Total:'
    end
    object Label8: TLabel
      Left = 4
      Top = 35
      Width = 44
      Height = 13
      Caption = 'Empresa:'
    end
    object Label9: TLabel
      Left = 392
      Top = 53
      Width = 40
      Height = 13
      Caption = 'Contato:'
    end
    object Label10: TLabel
      Left = 631
      Top = 36
      Width = 27
      Height = 13
      Caption = 'Fone:'
    end
    object Label11: TLabel
      Left = 8
      Top = 52
      Width = 77
      Height = 13
      Caption = 'Data de Enviou:'
    end
    object Label12: TLabel
      Left = 180
      Top = 54
      Width = 67
      Height = 13
      Caption = 'Data Retorno:'
    end
    object Label13: TLabel
      Left = 9
      Top = 74
      Width = 66
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object Label14: TLabel
      Left = 367
      Top = 35
      Width = 65
      Height = 13
      Caption = 'Desc. p/ Qtd:'
    end
    object DBEdit1: TDBEdit
      Left = 50
      Top = 14
      Width = 75
      Height = 19
      Ctl3D = False
      DataField = 'V2CODMAN'
      DataSource = DM2.Src_Vei02
      ParentCtl3D = False
      TabOrder = 0
      OnExit = DBEdit1Exit
      OnKeyPress = DBEdit1KeyPress
    end
    object DBEdit2: TDBEdit
      Left = 124
      Top = 14
      Width = 241
      Height = 19
      Ctl3D = False
      DataField = 'nomeman'
      DataSource = DM2.Src_Vei02
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 434
      Top = 14
      Width = 75
      Height = 19
      Ctl3D = False
      DataField = 'V2QTD'
      DataSource = DM2.Src_Vei02
      ParentCtl3D = False
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 586
      Top = 14
      Width = 75
      Height = 19
      Ctl3D = False
      DataField = 'V2PCOUNI'
      DataSource = DM2.Src_Vei02
      ParentCtl3D = False
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 706
      Top = 14
      Width = 75
      Height = 19
      Ctl3D = False
      DataField = 'total'
      DataSource = DM2.Src_Vei02
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 50
      Top = 32
      Width = 315
      Height = 19
      Ctl3D = False
      DataField = 'V2EMPMAN'
      DataSource = DM2.Src_Vei02
      ParentCtl3D = False
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 434
      Top = 50
      Width = 137
      Height = 19
      Ctl3D = False
      DataField = 'V2EMCONTATO'
      DataSource = DM2.Src_Vei02
      ParentCtl3D = False
      TabOrder = 10
    end
    object DBEdit8: TDBEdit
      Left = 669
      Top = 32
      Width = 112
      Height = 19
      Ctl3D = False
      DataField = 'V2FONE'
      DataSource = DM2.Src_Vei02
      ParentCtl3D = False
      TabOrder = 7
    end
    object db_datenv: TDBEdit
      Left = 87
      Top = 50
      Width = 80
      Height = 19
      Ctl3D = False
      DataField = 'dataenv'
      DataSource = DM2.Src_Vei02
      ParentCtl3D = False
      TabOrder = 17
    end
    object db_datret: TDBEdit
      Left = 259
      Top = 50
      Width = 80
      Height = 19
      Ctl3D = False
      DataField = 'dataret'
      DataSource = DM2.Src_Vei02
      ParentCtl3D = False
      TabOrder = 18
    end
    object DBRadioGroup1: TDBRadioGroup
      Left = 661
      Top = 70
      Width = 119
      Height = 79
      Caption = 'Forma de Pagamento:'
      Ctl3D = False
      DataField = 'V2FPGTO'
      DataSource = DM2.Src_Vei02
      Items.Strings = (
        'Pago'
        'Contrato'
        'Garantia')
      ParentCtl3D = False
      TabOrder = 16
      Values.Strings = (
        '0'
        '1'
        '2')
    end
    object DBEdit9: TDBEdit
      Left = 86
      Top = 76
      Width = 407
      Height = 19
      Ctl3D = False
      DataField = 'V2OBS01'
      DataSource = DM2.Src_Vei02
      ParentCtl3D = False
      TabOrder = 11
    end
    object DBEdit10: TDBEdit
      Left = 86
      Top = 94
      Width = 407
      Height = 19
      Ctl3D = False
      DataField = 'V2OBS02'
      DataSource = DM2.Src_Vei02
      ParentCtl3D = False
      TabOrder = 12
    end
    object DBEdit11: TDBEdit
      Left = 86
      Top = 112
      Width = 407
      Height = 19
      Ctl3D = False
      DataField = 'V2OBS03'
      DataSource = DM2.Src_Vei02
      ParentCtl3D = False
      TabOrder = 13
    end
    object DBEdit12: TDBEdit
      Left = 86
      Top = 130
      Width = 407
      Height = 19
      Ctl3D = False
      DataField = 'V2OBS04'
      DataSource = DM2.Src_Vei02
      ParentCtl3D = False
      TabOrder = 14
    end
    object dtenv: TMaskEdit
      Left = 87
      Top = 50
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 8
      Text = '  /  /    '
      Visible = False
      OnExit = dtenvExit
    end
    object dtret: TMaskEdit
      Left = 259
      Top = 50
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 9
      Text = '  /  /    '
      Visible = False
      OnExit = dtretExit
    end
    object DBEdit13: TDBEdit
      Left = 434
      Top = 32
      Width = 137
      Height = 19
      Ctl3D = False
      DataField = 'V2DESCPQTD'
      DataSource = DM2.Src_Vei02
      ParentCtl3D = False
      TabOrder = 6
      OnExit = DBEdit13Exit
    end
    object cb_bordas: TCheckBox
      Left = 554
      Top = 130
      Width = 105
      Height = 17
      Caption = 'Emitir com Bordas'
      TabOrder = 15
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 428
    Width = 788
    Height = 41
    Align = alBottom
    TabOrder = 3
    object bbIncluir: TBitBtn
      Left = 7
      Top = 3
      Width = 128
      Height = 37
      Caption = '&Incluir'
      Enabled = False
      TabOrder = 0
      OnClick = bbIncluirClick
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
    object bbAlterar: TBitBtn
      Left = 135
      Top = 3
      Width = 129
      Height = 37
      Caption = '&Alterar'
      Enabled = False
      TabOrder = 2
      OnClick = bbAlterarClick
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
    object bbGravar: TBitBtn
      Left = 264
      Top = 3
      Width = 129
      Height = 37
      Caption = '&Gravar'
      Enabled = False
      TabOrder = 1
      OnClick = bbGravarClick
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
    object bbCancelar: TBitBtn
      Left = 393
      Top = 3
      Width = 129
      Height = 37
      Caption = '&Cancelar'
      Enabled = False
      TabOrder = 3
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
    object bbExcluir: TBitBtn
      Left = 523
      Top = 3
      Width = 129
      Height = 37
      Caption = '&Excluir'
      Enabled = False
      TabOrder = 4
      OnClick = bbExcluirClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333FFF33FF333FFF339993370733
        999333777FF37FF377733339993000399933333777F777F77733333399970799
        93333333777F7377733333333999399933333333377737773333333333990993
        3333333333737F73333333333331013333333333333777FF3333333333910193
        333333333337773FF3333333399000993333333337377737FF33333399900099
        93333333773777377FF333399930003999333337773777F777FF339993370733
        9993337773337333777333333333333333333333333333333333333333333333
        3333333333333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
    object bbimprimir: TBitBtn
      Left = 652
      Top = 3
      Width = 134
      Height = 37
      Cursor = crHandPoint
      Caption = '&Imprimir'
      Enabled = False
      TabOrder = 5
      OnClick = bbimprimirClick
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
  end
end
