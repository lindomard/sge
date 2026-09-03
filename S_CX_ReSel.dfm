object Frm_CX_ReSel: TFrm_CX_ReSel
  Left = 22
  Top = 70
  Width = 733
  Height = 451
  Caption = 'Realizar Contas por Sele'#231#227'o'
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
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 717
    Height = 220
    Align = alTop
    Caption = 'Filtrar os Seguintes Registros:'
    TabOrder = 0
    object Label2: TLabel
      Left = 98
      Top = 17
      Width = 94
      Height = 13
      Caption = 'C'#243'digo do Banco...:'
    end
    object Label3: TLabel
      Left = 98
      Top = 41
      Width = 70
      Height = 13
      Caption = 'Departamento:'
    end
    object Label4: TLabel
      Left = 98
      Top = 65
      Width = 79
      Height = 13
      Caption = 'Centro de Custo:'
    end
    object Label5: TLabel
      Left = 98
      Top = 86
      Width = 65
      Height = 13
      Caption = 'Tipo/C'#243'digo.:'
    end
    object Label7: TLabel
      Left = 308
      Top = 107
      Width = 6
      Height = 13
      Caption = #224
    end
    object Label6: TLabel
      Left = 100
      Top = 107
      Width = 56
      Height = 13
      Caption = 'Per'#237'odo de:'
    end
    object Label1: TLabel
      Left = 99
      Top = 131
      Width = 94
      Height = 13
      Caption = 'Data para Realizar.:'
    end
    object Label8: TLabel
      Left = 236
      Top = 173
      Width = 69
      Height = 16
      Caption = 'Aten'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 304
      Top = 173
      Width = 384
      Height = 39
      Caption = 
        'Ser'#227'o selecionados somente os registros que est'#227'o com os dados c' +
        'ompletos, exemplo, cod.banco, cod. centro de custo, cod. departa' +
        'mento e cod.sacado/emitente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      WordWrap = True
    end
    object SP1: TSpeedButton
      Left = 274
      Top = 36
      Width = 24
      Height = 19
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
      OnClick = SP1Click
    end
    object SP2: TSpeedButton
      Left = 274
      Top = 59
      Width = 25
      Height = 19
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
      OnClick = SP2Click
    end
    object CODBCO: TEdit
      Left = 213
      Top = 16
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CODBCOExit
      OnKeyPress = CODBCOKeyPress
    end
    object NOMBCO: TEdit
      Left = 274
      Top = 14
      Width = 280
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 1
      Text = 'Todos...'
    end
    object NOMDEP: TEdit
      Left = 298
      Top = 36
      Width = 256
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 2
      Text = 'Todos...'
    end
    object CODDEP: TEdit
      Left = 213
      Top = 37
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      OnExit = CODDEPExit
    end
    object CODCCU: TEdit
      Left = 213
      Top = 59
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = CODCCUExit
    end
    object NOMCCU: TEdit
      Left = 296
      Top = 58
      Width = 258
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 5
      Text = 'Todos...'
    end
    object CODIGO: TEdit
      Left = 275
      Top = 82
      Width = 55
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 7
      OnExit = CODIGOExit
      OnKeyPress = CODIGOKeyPress
    end
    object CB_TIPO: TComboBox
      Left = 213
      Top = 81
      Width = 60
      Height = 21
      ItemHeight = 13
      ItemIndex = 0
      TabOrder = 6
      Text = 'Todos'
      Items.Strings = (
        'Todos'
        'FR'
        'CL'
        'TR'
        'VD')
    end
    object NOME: TEdit
      Left = 334
      Top = 80
      Width = 220
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 8
      Text = 'Todos...'
    end
    object MDT2: TMaskEdit
      Left = 335
      Top = 104
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 10
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object MDT1: TMaskEdit
      Left = 213
      Top = 105
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 9
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object bbAtualizar: TBitBtn
      Left = 95
      Top = 147
      Width = 185
      Height = 25
      Caption = '&Selecionar'
      TabOrder = 11
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
      Left = 371
      Top = 148
      Width = 185
      Height = 25
      Caption = '&Sair do Programa'
      TabOrder = 12
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
    object MDATAREAL: TMaskEdit
      Left = 213
      Top = 127
      Width = 80
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 13
      Text = '  /  /    '
      OnExit = MDATAREALExit
    end
    object bbSelecionar: TBitBtn
      Left = 4
      Top = 174
      Width = 113
      Height = 37
      Caption = '&Marcar Todos'
      TabOrder = 14
      OnClick = bbSelecionarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        003337777777777777F330FFFFFFFFFFF033373F3F3F3F3F3733330F0F0F0F0F
        03333F7F737373737FFF0000FFFFFFF0000377773FFFFFF7777F0FF800000008
        FF037F3F77777773FF7F0F9FFFFFFFF000037F7333333337777F0FFFFFFFFFFF
        FF0373FFFFFFFFFFFF7330000000000000333777777777777733333000000000
        3333333777777777F3333330FFFFFFF033333337F3FFFFF7F3333330F00000F0
        33333337F77777F7F3333330F0AAE0F033333337F7F337F7F3333330F0DAD0F0
        33333337F7FFF7F7F3333330F00000F033333337F7777737F3333330FFFFFFF0
        33333337FFFFFFF7F33333300000000033333337777777773333}
      NumGlyphs = 2
    end
    object bbCancelar: TBitBtn
      Left = 118
      Top = 174
      Width = 113
      Height = 37
      Caption = '&Desmarcar Todos'
      TabOrder = 15
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
  end
  object Panel1: TPanel
    Left = 0
    Top = 382
    Width = 717
    Height = 31
    Align = alBottom
    TabOrder = 1
    object Label10: TLabel
      Left = 2
      Top = 2
      Width = 218
      Height = 13
      Alignment = taCenter
      AutoSize = False
      Caption = 'Lan'#231'amento Automatico, n'#227'o pertimido'
      Color = clRed
      ParentColor = False
    end
    object bbConfirmar: TBitBtn
      Left = 258
      Top = 4
      Width = 185
      Height = 25
      Caption = 'Confirmar Realiza'#231#227'o'
      TabOrder = 0
      OnClick = bbConfirmarClick
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
  object GroupBox2: TGroupBox
    Left = 0
    Top = 220
    Width = 717
    Height = 162
    Align = alClient
    Caption = 'Lan'#231'amentos Selecionados:'
    TabOrder = 2
    object STG1: TStringGrid
      Left = 2
      Top = 15
      Width = 713
      Height = 145
      Align = alClient
      ColCount = 21
      DefaultRowHeight = 15
      FixedCols = 0
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing, goEditing]
      TabOrder = 0
      OnDblClick = STG1DblClick
      OnDrawCell = STG1DrawCell
      OnExit = STG1Exit
      OnGetEditMask = STG1GetEditMask
      OnKeyPress = STG1KeyPress
      OnSelectCell = STG1SelectCell
      ColWidths = (
        35
        64
        64
        74
        73
        66
        83
        29
        24
        32
        64
        110
        64
        64
        64
        64
        64
        64
        64
        64
        64)
    end
  end
end
