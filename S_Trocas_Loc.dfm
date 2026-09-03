object Frm_Trocas_Loc: TFrm_Trocas_Loc
  Left = 258
  Top = 165
  Width = 693
  Height = 375
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Trocas de Mercadorias'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 677
    Height = 147
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 104
      Top = 6
      Width = 64
      Height = 13
      Caption = 'Chave Inicial:'
    end
    object Label2: TLabel
      Left = 261
      Top = 6
      Width = 59
      Height = 13
      Caption = 'Chave Final:'
    end
    object Label3: TLabel
      Left = 125
      Top = 25
      Width = 41
      Height = 13
      Caption = 'Per'#237'odo:'
    end
    object Label4: TLabel
      Left = 284
      Top = 25
      Width = 6
      Height = 13
      Caption = #224
    end
    object Label5: TLabel
      Left = 127
      Top = 45
      Width = 35
      Height = 13
      Caption = 'Cliente:'
    end
    object Label6: TLabel
      Left = 64
      Top = 60
      Width = 100
      Height = 13
      Caption = 'C'#243'digo do Vendedor:'
    end
    object CHAVEI: TEdit
      Left = 171
      Top = 2
      Width = 85
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CHAVEIExit
    end
    object CHAVEF: TEdit
      Left = 328
      Top = 2
      Width = 85
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnExit = CHAVEFExit
    end
    object MDT1: TMaskEdit
      Left = 171
      Top = 20
      Width = 85
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 2
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 328
      Top = 20
      Width = 85
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 3
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object CODCLI: TEdit
      Left = 171
      Top = 38
      Width = 85
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = CODCLIExit
      OnKeyPress = CODCLIKeyPress
    end
    object NOMCLI: TEdit
      Left = 255
      Top = 38
      Width = 301
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 5
      Text = 'Todos...'
    end
    object CODVEN: TEdit
      Left = 171
      Top = 56
      Width = 85
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 6
      OnExit = CODVENExit
      OnKeyPress = CODVENKeyPress
    end
    object NOMVEN: TEdit
      Left = 255
      Top = 56
      Width = 301
      Height = 19
      Ctl3D = False
      Enabled = False
      ParentColor = True
      ParentCtl3D = False
      TabOrder = 7
      Text = 'Todos...'
    end
    object bbAtualizar: TBitBtn
      Left = 104
      Top = 116
      Width = 155
      Height = 25
      Caption = '&Atualizar'
      TabOrder = 9
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
      Left = 392
      Top = 116
      Width = 155
      Height = 25
      Caption = '&Sair'
      TabOrder = 10
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
      Left = 171
      Top = 77
      Width = 326
      Height = 29
      Caption = 'Listar Somente'
      Columns = 3
      Ctl3D = False
      ItemIndex = 1
      Items.Strings = (
        'Todas'
        'Pendentes'
        'Efetivadas')
      ParentCtl3D = False
      TabOrder = 8
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 147
    Width = 677
    Height = 190
    Align = alClient
    DataSource = DM2.Src_Trocas_Cab
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnDblClick = DBGrid1DblClick
    Columns = <
      item
        Expanded = False
        FieldName = 'TCCODEMP'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCLOTSEQ'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCCHAVE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nomcli'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCCODCLI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCCODVEN'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCOBS01'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCOBS02'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TCDATA'
        Width = 64
        Visible = True
      end>
  end
end
