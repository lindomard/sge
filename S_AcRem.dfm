object Frm_AcRem: TFrm_AcRem
  Left = 9
  Top = 17
  Width = 788
  Height = 467
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Acertos de Remessas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 780
    Height = 84
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 9
      Top = 7
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label3: TLabel
      Left = 156
      Top = 7
      Width = 6
      Height = 13
      Caption = #224
    end
    object Label1: TLabel
      Left = 12
      Top = 32
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object MDT1: TMaskEdit
      Left = 64
      Top = 4
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
      Left = 173
      Top = 4
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
    object bbAtualizar: TBitBtn
      Left = 16
      Top = 53
      Width = 75
      Height = 25
      Caption = '&Atualizar'
      TabOrder = 6
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
    object CODCLI: TEdit
      Left = 64
      Top = 27
      Width = 81
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      OnExit = CODCLIExit
    end
    object NOMCLI: TEdit
      Left = 149
      Top = 25
      Width = 355
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 3
      Text = 'Todos...'
    end
    object bbSair: TBitBtn
      Left = 430
      Top = 54
      Width = 75
      Height = 25
      Caption = '&Sair'
      TabOrder = 5
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
    object RG_TIPO: TRadioGroup
      Left = 540
      Top = 5
      Width = 205
      Height = 74
      Caption = 'Tipo:'
      Ctl3D = False
      ItemIndex = 2
      Items.Strings = (
        '&Consigna'#231#245'es'
        '&Remessa p/Vendas'
        '&Todos')
      ParentCtl3D = False
      TabOrder = 4
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 84
    Width = 780
    Height = 105
    Align = alTop
    Caption = '&Acertos:'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 1
      Top = 14
      Width = 778
      Height = 90
      Align = alClient
      DataSource = DM4.Src_AcRe01
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
          FieldName = 'AR1CHAVE'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tipoacerto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomcli'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AR1DATA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AR1QTDENV'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AR1VLRENV'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AR1QTDDEV'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AR1VLRDEV'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AR1QTDFAT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AR1VLRFAT'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AR1CODCLI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AR1TIPO'
          Visible = True
        end>
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 189
    Width = 780
    Height = 244
    Align = alClient
    Caption = 'Detalhes do Acerto:'
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    object DBGrid2: TDBGrid
      Left = 1
      Top = 14
      Width = 778
      Height = 229
      Align = alClient
      DataSource = DM4.Src_AcRe02
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
          FieldName = 'tipomov'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AR2CHAVEPED'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AR2ORDEM'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AR2DATA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AR2QTD'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AR2VLR'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AR2LOTSEQ'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AR2SEQ'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'AR2TIPOMOV'
          Visible = True
        end>
    end
  end
  object Src_AcRe04: TDataSource
    DataSet = DM4.Tb_AcRe01
    OnDataChange = Src_AcRe04DataChange
    Left = 344
    Top = 56
  end
end
