object frm_corrige_foreingkey: Tfrm_corrige_foreingkey
  Left = 192
  Top = 117
  Width = 1044
  Height = 540
  Caption = 'Corrigir Banco de Dados Para Criar Foreing key'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1036
    Height = 468
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Ajustes no Cadastros'
      object Label1: TLabel
        Left = 16
        Top = 16
        Width = 408
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 
          'C'#243'digos de Produtos Existentes nos Pedidos e N'#227'o Existente no Ca' +
          'dastro Agrupar em:'
      end
      object lbl_nompro: TLabel
        Left = 560
        Top = 16
        Width = 31
        Height = 13
        Caption = 'Nome:'
      end
      object lbl_nomfor: TLabel
        Left = 561
        Top = 40
        Width = 31
        Height = 13
        Caption = 'Nome:'
      end
      object Label3: TLabel
        Left = 17
        Top = 40
        Width = 408
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Agrupar Codigo do fornecedor  inexistente ao  fornecedor:'
      end
      object Label2: TLabel
        Left = 17
        Top = 64
        Width = 408
        Height = 13
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Agrupar Codigo do Cliente  inexistente ao  Cliente:'
      end
      object lbl_crazao: TLabel
        Left = 561
        Top = 64
        Width = 31
        Height = 13
        Caption = 'Nome:'
      end
      object edt_codpro: TEdit
        Left = 428
        Top = 14
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = edt_codproExit
        OnKeyPress = edt_codproKeyPress
      end
      object edt_codfor: TEdit
        Left = 429
        Top = 38
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnExit = edt_codforExit
        OnKeyPress = edt_codforKeyPress
      end
      object edt_codcli: TEdit
        Left = 429
        Top = 62
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        OnExit = edt_codcliExit
        OnKeyPress = edt_codcliKeyPress
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Tabelas'
      ImageIndex = 1
      object CB_CADPF: TCheckBox
        Left = 8
        Top = 16
        Width = 321
        Height = 17
        Caption = 'Corrigir CADPF - Pedidos de Forncedores'
        TabOrder = 0
      end
      object CB_CADPF2_CADPRO: TCheckBox
        Left = 8
        Top = 40
        Width = 321
        Height = 17
        Caption = 'Corrigir CADPF2/CADPRO'
        TabOrder = 1
      end
      object CB_CADPED: TCheckBox
        Left = 9
        Top = 124
        Width = 321
        Height = 17
        Caption = 'Corrigir CADPED- Pedidos de Vendas'
        TabOrder = 2
        Visible = False
      end
      object CB_CADP02_CADPRO: TCheckBox
        Left = 8
        Top = 148
        Width = 321
        Height = 17
        Caption = 'Corrigir CADPED/CADPRO'
        TabOrder = 3
      end
      object CB_CADPF1_CADFOR: TCheckBox
        Left = 8
        Top = 60
        Width = 321
        Height = 17
        Caption = 'Corrigir CADPF1/CADFOR - Froencedor/Pedido Compra'
        TabOrder = 4
      end
      object CB_CADP01_CADCLI: TCheckBox
        Left = 10
        Top = 172
        Width = 321
        Height = 17
        Caption = 'Corrigir CADP01/CADCLI- Clientes/Pedido Vendas'
        TabOrder = 5
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 468
    Width = 1036
    Height = 41
    Align = alBottom
    TabOrder = 1
    object bbSalvar: TBitBtn
      Left = 72
      Top = 8
      Width = 137
      Height = 25
      Caption = 'Processar'
      TabOrder = 0
      OnClick = bbSalvarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333333333333333333333333333FFF3333333333333
        00333333333333FF77F3333333333300903333333333FF773733333333330099
        0333333333FF77337F3333333300999903333333FF7733337333333700999990
        3333333777333337F3333333099999903333333373F333373333333330999903
        33333333F7F3337F33333333709999033333333F773FF3733333333709009033
        333333F7737737F3333333709073003333333F77377377F33333370907333733
        33333773773337333333309073333333333337F7733333333333370733333333
        3333377733333333333333333333333333333333333333333333}
      NumGlyphs = 2
    end
  end
end
