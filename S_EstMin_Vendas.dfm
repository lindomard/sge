object Frm_EstMin_Vendas: TFrm_EstMin_Vendas
  Left = 192
  Top = 124
  BorderStyle = bsSingle
  Caption = 'Ajustar Estoque Minimo de Acordo com as Vendas'
  ClientHeight = 332
  ClientWidth = 695
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 1
    Top = 132
    Width = 64
    Height = 13
    Caption = 'Tipo Produto:'
  end
  object Label1: TLabel
    Left = 25
    Top = 49
    Width = 40
    Height = 13
    Caption = 'Produto:'
  end
  object Label5: TLabel
    Left = 6
    Top = 90
    Width = 57
    Height = 13
    Caption = 'Fornecedor:'
  end
  object Label4: TLabel
    Left = 29
    Top = 170
    Width = 32
    Height = 13
    Caption = 'Grupo:'
  end
  object Label6: TLabel
    Left = 32
    Top = 213
    Width = 31
    Height = 13
    Caption = 'Ramo:'
  end
  object Label14: TLabel
    Left = 30
    Top = 254
    Width = 35
    Height = 13
    Caption = 'Depto.:'
  end
  object Label7: TLabel
    Left = 48
    Top = 309
    Width = 45
    Height = 13
    Caption = 'Periodo..:'
  end
  object Label8: TLabel
    Left = 120
    Top = 8
    Width = 458
    Height = 25
    Caption = 'Ajuste de estoque minimo de acordo com as vendas.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -20
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 192
    Top = 306
    Width = 6
    Height = 13
    Caption = #224
  end
  object btn_gerar: TButton
    Left = 309
    Top = 301
    Width = 108
    Height = 25
    Caption = '&Gerar'
    TabOrder = 0
    OnClick = btn_gerarClick
  end
  object CODPRO: TEdit
    Left = 67
    Top = 46
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 1
    OnExit = CODPROExit
    OnKeyPress = CODPROKeyPress
    OnMouseMove = CODPROMouseMove
  end
  object lbx_codpro: TListBox
    Left = 128
    Top = 46
    Width = 415
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 2
    OnKeyDown = lbx_codproKeyDown
  end
  object OMITIR_PRO: TCheckBox
    Left = 68
    Top = 68
    Width = 60
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 3
  end
  object CODFOR: TEdit
    Left = 67
    Top = 87
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnExit = CODFORExit
    OnKeyPress = CODFORKeyPress
    OnMouseMove = CODFORMouseMove
  end
  object lbx_codfor: TListBox
    Left = 128
    Top = 87
    Width = 415
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnKeyDown = lbx_codforKeyDown
  end
  object OMITIR_FOR: TCheckBox
    Left = 68
    Top = 110
    Width = 51
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 6
  end
  object CODTIP: TEdit
    Left = 67
    Top = 128
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 7
    OnExit = CODTIPExit
    OnKeyPress = CODTIPKeyPress
    OnMouseMove = CODTIPMouseMove
  end
  object lbx_codtip: TListBox
    Left = 128
    Top = 128
    Width = 415
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 8
    OnKeyDown = lbx_codtipKeyDown
  end
  object OMITIR_TPRO: TCheckBox
    Left = 68
    Top = 150
    Width = 53
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 9
  end
  object CODGRU: TEdit
    Left = 67
    Top = 169
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 10
    OnExit = CODGRUExit
    OnKeyPress = CODGRUKeyPress
    OnMouseMove = CODGRUMouseMove
  end
  object lbx_codgru: TListBox
    Left = 128
    Top = 169
    Width = 415
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    OnKeyDown = lbx_codgruKeyDown
  end
  object OMITIR_GRU: TCheckBox
    Left = 68
    Top = 189
    Width = 56
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 12
  end
  object CODRAM: TEdit
    Left = 67
    Top = 210
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 13
    OnExit = CODRAMExit
    OnKeyPress = CODRAMKeyPress
    OnMouseMove = CODRAMMouseMove
  end
  object lbx_codram: TListBox
    Left = 128
    Top = 210
    Width = 415
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 14
    OnKeyDown = lbx_codramKeyDown
  end
  object OMITIR_RAM: TCheckBox
    Left = 68
    Top = 233
    Width = 57
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 15
  end
  object CODDEP: TEdit
    Left = 67
    Top = 251
    Width = 62
    Height = 19
    Ctl3D = False
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 16
    OnExit = CODDEPExit
    OnKeyPress = CODDEPKeyPress
    OnMouseMove = CODDEPMouseMove
  end
  object lbx_coddep: TListBox
    Left = 128
    Top = 251
    Width = 415
    Height = 42
    Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
    Color = 13828095
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    ParentShowHint = False
    ShowHint = True
    TabOrder = 17
    OnKeyDown = lbx_coddepKeyDown
  end
  object OMITIR_DEP: TCheckBox
    Left = 68
    Top = 274
    Width = 57
    Height = 17
    Caption = 'Omitir'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 18
  end
  object StaticText10: TStaticText
    Left = 550
    Top = 42
    Width = 142
    Height = 17
    Alignment = taCenter
    AutoSize = False
    BorderStyle = sbsSunken
    Caption = 'Niveis de Produtos'
    Color = 16776176
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    TabOrder = 19
  end
  object CLBNivel: TCheckListBox
    Left = 549
    Top = 62
    Width = 143
    Height = 179
    Color = 16776176
    Columns = 1
    Ctl3D = False
    ItemHeight = 13
    Items.Strings = (
      'Acabado'
      'Servi'#231'o'
      'Mat'#233'ria Prima Revenda'
      'Produto em Produ'#231'ao'
      'Mat'#233'ria Prima'
      'Insumos'
      'Acessorios'
      'Outros'
      'Todos')
    ParentCtl3D = False
    Style = lbOwnerDrawFixed
    TabOrder = 20
  end
  object btn_Sair: TButton
    Left = 429
    Top = 301
    Width = 116
    Height = 25
    Caption = '&Sair'
    TabOrder = 21
    OnClick = btn_SairClick
  end
  object dtIni: TDateEdit
    Left = 96
    Top = 304
    Width = 88
    Height = 21
    NumGlyphs = 2
    TabOrder = 22
  end
  object dtFim: TDateEdit
    Left = 208
    Top = 303
    Width = 88
    Height = 21
    NumGlyphs = 2
    TabOrder = 23
  end
  object produto: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 424
    Top = 248
  end
end
