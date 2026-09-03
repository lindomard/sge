object Frm_SelGra: TFrm_SelGra
  Left = 96
  Top = 166
  Width = 657
  Height = 504
  Caption = 'Gr'#225'fico das Sa'#237'das de um Determinado Produto'
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
  object Label1: TLabel
    Left = 281
    Top = 252
    Width = 53
    Height = 13
    Caption = 'Per'#237'odo de'
  end
  object Label3: TLabel
    Left = 280
    Top = 272
    Width = 87
    Height = 13
    Caption = 'Primeiro Per'#237'odo..:'
    Visible = False
  end
  object Label5: TLabel
    Left = 278
    Top = 293
    Width = 90
    Height = 13
    Caption = 'Segundo Per'#237'odo.:'
    Visible = False
  end
  object Label2: TLabel
    Left = 481
    Top = 252
    Width = 6
    Height = 13
    Caption = #224
  end
  object Label4: TLabel
    Left = 480
    Top = 273
    Width = 6
    Height = 13
    Caption = #224
    Visible = False
  end
  object Label6: TLabel
    Left = 481
    Top = 294
    Width = 6
    Height = 13
    Caption = #224
    Visible = False
  end
  object lblCodigo: TLabel
    Left = 3
    Top = 361
    Width = 40
    Height = 13
    Caption = 'Produto:'
  end
  object RGTipo: TRadioGroup
    Left = 6
    Top = 247
    Width = 252
    Height = 64
    Caption = 'Tipos de Compara'#231#227'o:'
    ItemIndex = 0
    Items.Strings = (
      '&Por Per'#237'odo Separado Por M'#234's'
      'P&er'#237'odo Um Comparado ao Segundo')
    TabOrder = 1
    OnClick = RGTipoClick
    OnExit = RGTipoClick
  end
  object MDTF1: TMaskEdit
    Left = 390
    Top = 291
    Width = 75
    Height = 19
    Ctl3D = False
    EditMask = '99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 6
    Text = '  /  /    '
    Visible = False
    OnExit = MDTF1Exit
  end
  object MDTI1: TMaskEdit
    Left = 390
    Top = 269
    Width = 75
    Height = 19
    Ctl3D = False
    EditMask = '99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 4
    Text = '  /  /    '
    Visible = False
    OnExit = MDTI1Exit
  end
  object MDT1: TMaskEdit
    Left = 390
    Top = 249
    Width = 75
    Height = 19
    Ctl3D = False
    EditMask = '99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 2
    Text = '  /  /    '
    OnExit = MDT1Exit
  end
  object MDTF2: TMaskEdit
    Left = 514
    Top = 293
    Width = 75
    Height = 19
    Ctl3D = False
    EditMask = '99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 7
    Text = '  /  /    '
    Visible = False
    OnExit = MDTF2Exit
  end
  object MDTI2: TMaskEdit
    Left = 514
    Top = 272
    Width = 75
    Height = 19
    Ctl3D = False
    EditMask = '99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 5
    Text = '  /  /    '
    Visible = False
    OnExit = MDTI2Exit
  end
  object MDT2: TMaskEdit
    Left = 514
    Top = 249
    Width = 75
    Height = 19
    Ctl3D = False
    EditMask = '99/99/9999;1; '
    MaxLength = 10
    ParentCtl3D = False
    TabOrder = 3
    Text = '  /  /    '
    OnExit = MDT2Exit
  end
  object RG_QTDVLR: TRadioGroup
    Left = 7
    Top = 317
    Width = 253
    Height = 37
    Caption = 'Tipo do Gr'#225'fico:'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Quantidade'
      'Valores')
    TabOrder = 8
  end
  object bbGerar: TBitBtn
    Left = 53
    Top = 410
    Width = 159
    Height = 50
    Caption = '&Gerar Gr'#225'fico'
    TabOrder = 11
    OnClick = bbGerarClick
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
    Left = 413
    Top = 410
    Width = 159
    Height = 50
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
  object CB_EmiDoc: TCheckBox
    Left = 281
    Top = 336
    Width = 136
    Height = 17
    Caption = 'So Emitidos Notas'
    Checked = True
    State = cbChecked
    TabOrder = 9
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 649
    Height = 248
    ActivePage = tsFiltros2
    Align = alTop
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Filtros'
      object lbl_cliente: TLabel
        Left = 36
        Top = 8
        Width = 35
        Height = 13
        Caption = 'Cliente:'
      end
      object lbl_vendedor: TLabel
        Left = 22
        Top = 56
        Width = 49
        Height = 13
        Caption = 'Vendedor:'
      end
      object lbl_pro: TLabel
        Left = 31
        Top = 94
        Width = 40
        Height = 13
        Caption = 'Produto:'
      end
      object lbl_for: TLabel
        Left = 15
        Top = 143
        Width = 57
        Height = 13
        Caption = 'Fornecedor:'
      end
      object CODCLI: TEdit
        Left = 73
        Top = 5
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        BevelKind = bkSoft
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = CODCLIExit
        OnKeyPress = CODCLIKeyPress
      end
      object lbx_codcli: TListBox
        Left = 150
        Top = 5
        Width = 438
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = lbx_codcliKeyDown
      end
      object OMITIR_CLI: TCheckBox
        Left = 73
        Top = 30
        Width = 67
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object CODVEN: TEdit
        Left = 73
        Top = 52
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        BevelKind = bkSoft
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
      end
      object lbx_codven: TListBox
        Left = 150
        Top = 51
        Width = 438
        Height = 38
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = True
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = lbx_codvenKeyDown
      end
      object OMITIR_VEN: TCheckBox
        Left = 75
        Top = 71
        Width = 57
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object CODPRO: TEdit
        Left = 73
        Top = 91
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        BevelKind = bkSoft
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnExit = CODPROExit
        OnKeyDown = CODPROKeyDown
        OnKeyPress = CODPROKeyPress
      end
      object lbx_codpro: TListBox
        Left = 150
        Top = 92
        Width = 438
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnKeyDown = lbx_codproKeyDown
      end
      object OMITIR_PRO: TCheckBox
        Left = 73
        Top = 115
        Width = 57
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
      object CODFOR: TEdit
        Left = 73
        Top = 139
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        BevelKind = bkSoft
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnExit = CODFORExit
        OnKeyPress = CODFORKeyPress
      end
      object lbx_codfor: TListBox
        Left = 150
        Top = 137
        Width = 438
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnKeyDown = lbx_codforKeyDown
      end
      object OMITIR_FOR: TCheckBox
        Left = 73
        Top = 160
        Width = 69
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
      end
      object lbl_sup: TStaticText
        Left = 12
        Top = 181
        Width = 60
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Supervisor:'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 12
        Visible = False
      end
      object CODSUP: TEdit
        Left = 73
        Top = 179
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo Desejado'
        BevelKind = bkSoft
        Ctl3D = True
        ParentCtl3D = False
        TabOrder = 13
        Visible = False
        OnExit = CODSUPExit
        OnKeyPress = CODSUPKeyPress
      end
      object lbx_codsup: TListBox
        Left = 150
        Top = 179
        Width = 438
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = True
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
        Visible = False
        OnKeyDown = lbx_codsupKeyDown
      end
      object OMITIR_SUP: TCheckBox
        Left = 73
        Top = 198
        Width = 56
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        Visible = False
      end
    end
    object tsFiltros2: TTabSheet
      Caption = 'Filtros (Continua'#231#227'o)'
      ImageIndex = 1
      object Label8: TLabel
        Left = 12
        Top = 8
        Width = 35
        Height = 13
        Caption = 'Grupo.:'
      end
      object Label9: TLabel
        Left = 12
        Top = 51
        Width = 31
        Height = 13
        Caption = 'Ramo:'
      end
      object Label10: TLabel
        Left = 10
        Top = 94
        Width = 36
        Height = 13
        Caption = 'Cidade:'
      end
      object Label11: TLabel
        Left = 29
        Top = 136
        Width = 17
        Height = 13
        Caption = 'UF:'
      end
      object Label7: TLabel
        Left = 10
        Top = 180
        Width = 37
        Height = 13
        Caption = 'Regi'#227'o:'
      end
      object CODGRU: TEdit
        Left = 49
        Top = 5
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        BevelKind = bkSoft
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = CODGRUExit
        OnKeyPress = CODGRUKeyPress
      end
      object lbx_CODGRU: TListBox
        Left = 126
        Top = 5
        Width = 438
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = lbx_CODGRUKeyDown
      end
      object OMITIR_GRU: TCheckBox
        Left = 49
        Top = 30
        Width = 67
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object RAMO: TEdit
        Left = 49
        Top = 48
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        BevelKind = bkSoft
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = RAMOExit
        OnKeyPress = RAMOKeyPress
      end
      object lbx_RAMO: TListBox
        Left = 126
        Top = 48
        Width = 438
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = lbx_RAMOKeyDown
      end
      object OMITIR_RAMO: TCheckBox
        Left = 49
        Top = 73
        Width = 67
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
      end
      object CIDADE: TEdit
        Left = 49
        Top = 91
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        BevelKind = bkSoft
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnExit = CIDADEExit
        OnKeyPress = CIDADEKeyPress
      end
      object lbx_codloc: TListBox
        Left = 126
        Top = 91
        Width = 438
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
        OnKeyDown = lbx_codlocKeyDown
      end
      object OMITIR_LOC: TCheckBox
        Left = 49
        Top = 116
        Width = 67
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
      end
      object UF: TEdit
        Left = 49
        Top = 133
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        BevelKind = bkSoft
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnExit = UFExit
        OnKeyPress = UFKeyPress
      end
      object lbx_coduf: TListBox
        Left = 126
        Top = 133
        Width = 438
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
        OnKeyDown = lbx_codufKeyDown
      end
      object OMITIR_UF: TCheckBox
        Left = 49
        Top = 158
        Width = 67
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
      end
      object lbx_codreg: TListBox
        Left = 126
        Top = 177
        Width = 438
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        ItemHeight = 13
        ParentShowHint = False
        ShowHint = True
        TabOrder = 12
        OnKeyDown = lbx_codregKeyDown
      end
      object CODREG: TEdit
        Left = 49
        Top = 177
        Width = 74
        Height = 21
        Hint = 'Digite o C'#243'digo a Ser Filtrado'
        BevelKind = bkSoft
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnExit = CODREGExit
        OnKeyPress = CODREGKeyPress
      end
      object OMITIR_REG: TCheckBox
        Left = 49
        Top = 202
        Width = 67
        Height = 17
        Hint = 'Se Marcado os C'#243'digos'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
      end
    end
    object ts_outros: TTabSheet
      Caption = 'Outros Filtros'
      ImageIndex = 1
      object RG_TIPOPED: TCheckListBox
        Left = 0
        Top = 0
        Width = 641
        Height = 220
        Cursor = crHandPoint
        Hint = 'Emitir Somente Os Selecionados'
        Align = alClient
        Color = clSkyBlue
        Columns = 2
        Ctl3D = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ItemHeight = 16
        Items.Strings = (
          'Venda Normal'
          'Simples Remessa'
          'Devolu'#231#227'o a Fornecedor'
          'Remessa p/Troca'
          'Transferencia de Mercadorias'
          'Remessa p/Beneficiamento'
          'Remessa p/Venda(Vda.Fora do Estab.)'
          'Devolu'#231#227'o Cliente(Entrada) Normal'
          'Emprestimo de Mercadorias'
          'Nota Complementar'
          'Remessa Para Consigna'#231#245'es'
          'Devolu'#231#227'o Mercadoria Consigna'#231#245'es'
          'Devolu'#231#227'o Remessa p/Venda(Vda.Fora do Estab.)'
          'Venda Mercadoria Consignada'
          'Venda Remessa p/Venda(Vda.Fora do Estabel.)'
          'Venda Normal(Troca de Mercadorias)'
          'Devolu'#231#227'o de Cliente(Troca de Mercadorias)'
          'Transferencias de Mercadorias Entrada'
          'Devolu'#231#227'o de Mercadorias de Terceiros(Consignadas)'
          'Remessa p/Industrializa'#231#227'o'
          'Remessa p/Brinde'
          'Remessa Amostra Gratis'
          'Remessa p/Demonstra'#231#227'o'
          'Remessa p/Conserto'
          'Outras Saidas'
          'Todos')
        ParentCtl3D = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Style = lbOwnerDrawFixed
        TabOrder = 0
        OnClick = RG_TIPOPEDClick
        OnExit = RG_TIPOPEDExit
      end
    end
  end
  object CB_AGRUNOME: TCheckBox
    Left = 280
    Top = 318
    Width = 241
    Height = 17
    Caption = 'Agrupar por nome ao inv'#233's do mes/ano'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
  end
  object CODIGO: TEdit
    Left = 70
    Top = 359
    Width = 74
    Height = 21
    Hint = 'Digite o C'#243'digo a Ser Filtrado'
    BevelKind = bkSoft
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
    OnExit = CODIGOExit
    OnKeyDown = CODIGOKeyDown
    OnKeyPress = CODIGOKeyPress
  end
  object OMITIR_COD: TCheckBox
    Left = 70
    Top = 383
    Width = 57
    Height = 17
    Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 14
  end
  object lbx_codigo: TListBox
    Left = 150
    Top = 360
    Width = 438
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    ItemHeight = 13
    ParentShowHint = False
    ShowHint = True
    TabOrder = 15
    OnKeyDown = lbx_codigoKeyDown
  end
end
