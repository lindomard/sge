object Frm_ExpTron: TFrm_ExpTron
  Left = 199
  Top = 45
  Width = 749
  Height = 479
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Gerador de Arquivos para TRON'
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 741
    Height = 145
    Align = alClient
    TabOrder = 2
    object DBGrid1: TDBGrid
      Left = 1
      Top = 1
      Width = 739
      Height = 143
      Align = alClient
      Color = 16772341
      DataSource = DM5.Src_NS
      FixedColor = 16771818
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
          FieldName = 'NSNUMERO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NSSERIE'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'razsoc'
          Title.Alignment = taCenter
          Width = 194
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NSDTEMIS'
          Title.Alignment = taCenter
          Width = 91
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NSTOTNOTA'
          Title.Alignment = taCenter
          Width = 77
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'uf'
          Title.Alignment = taCenter
          Width = 26
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cgc'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'inscricao'
          Title.Alignment = taCenter
          Width = 141
          Visible = True
        end>
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 145
    Width = 741
    Height = 163
    Align = alBottom
    TabOrder = 3
    object DBGrid2: TDBGrid
      Left = 1
      Top = 1
      Width = 739
      Height = 161
      Align = alClient
      Color = 16772341
      DataSource = DM5.Src_NE
      FixedColor = 16771818
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
          FieldName = 'cgc'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'uf'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NENUMERO'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NESERIE'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'FRAZAO'
          Title.Alignment = taCenter
          Width = 213
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NEDTENT'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NEDTEMIS'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NETOTNOT'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NEBASEN'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NEICMSN'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NEBASER'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NEICMSR'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NEFRETE'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NESEG'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NEOUTRAS'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NEIPI'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NETOTMER'
          Title.Alignment = taCenter
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NETOTDES'
          Title.Alignment = taCenter
          Visible = True
        end>
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 398
    Width = 741
    Height = 50
    Align = alBottom
    TabOrder = 1
    object bbSair: TBitBtn
      Left = 570
      Top = 8
      Width = 169
      Height = 39
      Caption = '&Sair'
      TabOrder = 0
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
    object BitBtn1: TBitBtn
      Left = 90
      Top = 7
      Width = 169
      Height = 39
      Caption = '&Gerar'
      TabOrder = 1
      OnClick = BitBtn1Click
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
  object Panel4: TPanel
    Left = 0
    Top = 308
    Width = 741
    Height = 90
    Align = alBottom
    TabOrder = 0
    object Label1: TLabel
      Left = 23
      Top = 17
      Width = 56
      Height = 13
      Caption = 'Per'#237'odo de '
    end
    object Label2: TLabel
      Left = 160
      Top = 16
      Width = 6
      Height = 13
      Caption = 'a'
    end
    object Label3: TLabel
      Left = 43
      Top = 33
      Width = 36
      Height = 13
      Caption = 'Estado:'
    end
    object Label4: TLabel
      Left = 5
      Top = 51
      Width = 76
      Height = 13
      Caption = 'Nome da Pasta:'
    end
    object SB01: TSpeedButton
      Left = 667
      Top = 49
      Width = 23
      Height = 19
      Hint = 'Definir Caminho'
      Flat = True
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
      ParentShowHint = False
      ShowHint = True
      OnClick = SB01Click
    end
    object Label5: TLabel
      Left = 8
      Top = 70
      Width = 197
      Height = 13
      Caption = 'C'#243'digo Contabil p/Compra/Venda a vista:'
    end
    object Label6: TLabel
      Left = 291
      Top = 71
      Width = 201
      Height = 13
      Caption = 'C'#243'digo Contabil p/Compra/Venda a prazo:'
    end
    object MDT1: TMaskEdit
      Left = 82
      Top = 13
      Width = 72
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 0
      Text = '  /  /    '
    end
    object MDT2: TMaskEdit
      Left = 172
      Top = 13
      Width = 72
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 1
      Text = '  /  /    '
    end
    object RGTNF: TRadioGroup
      Left = 247
      Top = 3
      Width = 213
      Height = 29
      Caption = 'Tipo de Notas:'
      Columns = 3
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        '&Geral'
        '&Sa'#237'das'
        '&Entradas')
      ParentCtl3D = False
      TabOrder = 2
    end
    object UF: TEdit
      Left = 82
      Top = 31
      Width = 36
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnExit = UFExit
      OnKeyDown = UFKeyDown
    end
    object NOMUF: TEdit
      Left = 117
      Top = 31
      Width = 344
      Height = 19
      Color = 15581417
      Ctl3D = False
      Enabled = False
      ParentCtl3D = False
      TabOrder = 4
      Text = 'Todos...'
    end
    object MPASTA: TEdit
      Left = 82
      Top = 49
      Width = 584
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      Text = 'C:\SGE\'
    end
    object RG_DOC: TRadioGroup
      Left = 459
      Top = -2
      Width = 133
      Height = 52
      Caption = 'Documentos:'
      Ctl3D = False
      ItemIndex = 0
      Items.Strings = (
        '&Todos'
        '&Notas Fiscais'
        '&Cupom Fiscal')
      ParentCtl3D = False
      TabOrder = 6
    end
    object CODCONAV: TEdit
      Left = 208
      Top = 67
      Width = 44
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      Text = '132'
      OnExit = CODCONAVExit
    end
    object CODCONAP: TEdit
      Left = 505
      Top = 67
      Width = 44
      Height = 19
      CharCase = ecUpperCase
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
      Text = '124'
      OnExit = CODCONAVExit
    end
  end
  object Qr_Tempor: TQuery
    DatabaseName = '\TEMP'
    Left = 560
    Top = 24
  end
end
