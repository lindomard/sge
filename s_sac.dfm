object frm_sac: Tfrm_sac
  Left = 191
  Top = 114
  BorderStyle = bsSingle
  Caption = 'SAC - Servi'#231'o de Atendimento ao Cliente '
  ClientHeight = 432
  ClientWidth = 477
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 477
    Height = 126
    Align = alTop
    TabOrder = 0
    object lbl_cliente: TLabel
      Left = 6
      Top = 8
      Width = 41
      Height = 13
      Caption = 'Cliente..:'
    end
    object lbl_data: TLabel
      Left = 5
      Top = 77
      Width = 42
      Height = 13
      Caption = 'Periodo.:'
    end
    object Label1: TLabel
      Left = 184
      Top = 77
      Width = 15
      Height = 13
      Caption = 'at'#233
    end
    object Label2: TLabel
      Left = 18
      Top = 31
      Width = 28
      Height = 13
      Caption = 'End..:'
    end
    object Label3: TLabel
      Left = 16
      Top = 54
      Width = 31
      Height = 13
      Caption = 'CGC..:'
    end
    object Label4: TLabel
      Left = 205
      Top = 54
      Width = 36
      Height = 13
      Caption = 'Fone...:'
    end
    object sb_mais: TSpeedButton
      Left = 7
      Top = 99
      Width = 23
      Height = 22
      Caption = '+'
    end
    object edt_codcli: TEdit
      Left = 49
      Top = 5
      Width = 56
      Height = 21
      TabOrder = 0
      OnExit = edt_codcliExit
      OnKeyPress = edt_codcliKeyPress
    end
    object btn_filtrar: TButton
      Left = 160
      Top = 95
      Width = 75
      Height = 25
      Caption = '&Filtrar'
      TabOrder = 3
      OnClick = btn_filtrarClick
    end
    object edt_nomcli: TEdit
      Left = 107
      Top = 5
      Width = 366
      Height = 21
      Color = 16776176
      ReadOnly = True
      TabOrder = 4
    end
    object mdt1: TMaskEdit
      Left = 49
      Top = 72
      Width = 120
      Height = 21
      EditMask = '!99/99/0000;1; '
      MaxLength = 10
      TabOrder = 1
      Text = '  /  /    '
    end
    object mdt2: TMaskEdit
      Left = 209
      Top = 72
      Width = 120
      Height = 21
      EditMask = '!99/99/0000;1; '
      MaxLength = 10
      TabOrder = 2
      Text = '  /  /    '
    end
    object edt_ender: TEdit
      Left = 49
      Top = 28
      Width = 424
      Height = 21
      Color = 16776176
      TabOrder = 5
    end
    object edt_fone01: TMaskEdit
      Left = 242
      Top = 50
      Width = 117
      Height = 21
      Color = 16776176
      EditMask = '!\(99\)0000-0000;1; '
      MaxLength = 13
      TabOrder = 6
      Text = '(  )    -    '
    end
    object edt_cgc: TEdit
      Left = 49
      Top = 50
      Width = 152
      Height = 21
      Color = 16776176
      TabOrder = 7
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 126
    Width = 477
    Height = 153
    Align = alTop
    Caption = '-= Pedidos Existentes =-'
    TabOrder = 1
    object dbg_pedidos: TDBGrid
      Left = 2
      Top = 15
      Width = 473
      Height = 136
      Align = alClient
      DataSource = DataSource1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 279
    Width = 477
    Height = 153
    Align = alTop
    Caption = '-= Produtos do Pedido =-'
    TabOrder = 2
    object dbg_produtos: TDBGrid
      Left = 2
      Top = 15
      Width = 473
      Height = 136
      Align = alClient
      DataSource = DataSource2
      PopupMenu = PopupMenu1
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
    end
  end
  object DataSource1: TDataSource
    DataSet = Query1
    OnDataChange = DataSource1DataChange
    Left = 352
    Top = 184
  end
  object DataSource2: TDataSource
    DataSet = Query2
    Left = 360
    Top = 327
  end
  object PopupMenu1: TPopupMenu
    Left = 360
    Top = 367
    object GerarOS1: TMenuItem
      Caption = '&Gerar OS'
      OnClick = GerarOS1Click
    end
  end
  object Query1: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 320
    Top = 182
  end
  object Query2: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 328
    Top = 326
  end
end
