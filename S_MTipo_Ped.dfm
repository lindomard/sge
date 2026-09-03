object Frm_MTipo_Ped: TFrm_MTipo_Ped
  Left = 543
  Top = 14
  Width = 688
  Height = 610
  ActiveControl = Edit1
  Caption = 'Manuten'#231#227'o Em Tipos de Pedidos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 680
    Height = 29
    Align = alTop
    TabOrder = 0
    object lbl_emp: TLabel
      Left = 635
      Top = 1
      Width = 44
      Height = 27
      Align = alRight
      Alignment = taCenter
      Caption = 'lbl_emp'
    end
    object Pesquisapor: TLabel
      Left = 8
      Top = 7
      Width = 82
      Height = 13
      Caption = '&Pesquisar por:'
      FocusControl = CAMPO
    end
    object BBnAtu: TBitBtn
      Left = 395
      Top = 2
      Width = 89
      Height = 25
      Caption = 'Atuali&zar'
      TabOrder = 2
      OnClick = BBnAtuClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object CAMPO: TComboBox
      Left = 93
      Top = 4
      Width = 117
      Height = 21
      AutoDropDown = True
      BevelKind = bkSoft
      Style = csDropDownList
      ItemHeight = 13
      TabOrder = 0
      Items.Strings = (
        'Nome'
        'C'#243'digo')
    end
    object Edit1: TMaskEdit
      Left = 212
      Top = 4
      Width = 181
      Height = 21
      AutoSelect = False
      TabOrder = 1
    end
  end
  object PC1: TPageControl
    Left = 0
    Top = 29
    Width = 680
    Height = 472
    ActivePage = TsAliquotas
    Align = alClient
    HotTrack = True
    TabOrder = 1
    TabStop = False
    object tsCad: TTabSheet
      Caption = 'Ge&ral'
      Enabled = False
      object Label1: TLabel
        Left = 10
        Top = -1
        Width = 40
        Height = 13
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 85
        Top = 0
        Width = 58
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object Label15: TLabel
        Left = 12
        Top = 413
        Width = 50
        Height = 13
        Caption = 'Incluido:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 347
        Top = 411
        Width = 52
        Height = 13
        Caption = 'Alterado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label135: TLabel
        Left = 10
        Top = 390
        Width = 87
        Height = 13
        Caption = 'Finalidade Nfe:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object txt_codigo: TEdit
        Left = 10
        Top = 16
        Width = 68
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 5
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        OnExit = txt_codigoExit
      end
      object txt_descricao: TEdit
        Left = 85
        Top = 17
        Width = 562
        Height = 19
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 60
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
      end
      object GroupBox1: TGroupBox
        Left = 9
        Top = 37
        Width = 639
        Height = 82
        Caption = 'Movimenta Estoque:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        object CB_ENTRADA_NORMAL: TCheckBox
          Left = 8
          Top = 16
          Width = 97
          Height = 17
          Caption = 'Entrada Normal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object CB_ENTRADA_CONSIGNADO: TCheckBox
          Left = 8
          Top = 30
          Width = 152
          Height = 17
          Caption = 'Entrada Consignado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object CB_ENTRADA_REM_VENDA: TCheckBox
          Left = 8
          Top = 46
          Width = 152
          Height = 17
          Caption = 'Entrada Remessa p/Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
        object CB_ENTRADA_EST_TERC: TCheckBox
          Left = 9
          Top = 61
          Width = 176
          Height = 17
          Caption = 'Entrada Estoque de Terceiros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
        end
        object CB_SAIDA_NORMAL: TCheckBox
          Left = 350
          Top = 16
          Width = 97
          Height = 17
          Caption = 'Saida Normal'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
        end
        object CB_SAIDA_CONSIGNADO: TCheckBox
          Left = 350
          Top = 30
          Width = 152
          Height = 17
          Caption = 'Saida Consignado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
        end
        object CB_SAIDA_REM_VENDA: TCheckBox
          Left = 350
          Top = 46
          Width = 152
          Height = 17
          Caption = 'Saida Remessa p/Venda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
        end
        object CB_SAIDA_EST_TERC: TCheckBox
          Left = 350
          Top = 61
          Width = 176
          Height = 17
          Caption = 'Saida Estoque de Terceiros'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
        end
      end
      object GB_DENTRO: TGroupBox
        Left = 9
        Top = 122
        Width = 638
        Height = 115
        Caption = 'CFOPs Para Movimenta'#231#227'o Dentro do Estado:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        object Label3: TLabel
          Left = 11
          Top = 50
          Width = 164
          Height = 13
          Caption = 'Produtos c/Substitui'#231#227'o Tributaria:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label5: TLabel
          Left = 76
          Top = 68
          Width = 98
          Height = 13
          Caption = 'Produtos Tributados:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 92
          Top = 83
          Width = 82
          Height = 13
          Caption = 'Produtos Isentos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object txt_DENTRO_CFOP_RV_ST: TEdit
          Left = 180
          Top = 43
          Width = 113
          Height = 19
          Color = 14737602
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnExit = txt_DENTRO_CFOP_RV_STExit
        end
        object txt_DENTRO_SUBST_CFOP_ST: TEdit
          Left = 404
          Top = 43
          Width = 113
          Height = 19
          Color = 14737602
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4227072
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
          OnExit = txt_DENTRO_SUBST_CFOP_STExit
        end
        object txt_DENTRO_CFOP_RV_TRIB: TEdit
          Left = 180
          Top = 61
          Width = 113
          Height = 19
          Color = 14737602
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          OnExit = txt_DENTRO_CFOP_RV_TRIBExit
        end
        object txt_DENTRO_SUBST_CFOP_TRIB: TEdit
          Left = 404
          Top = 61
          Width = 113
          Height = 19
          Color = 14737602
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4227072
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
          OnExit = txt_DENTRO_SUBST_CFOP_TRIBExit
        end
        object txt_DENTRO_CFOP_RV_ISENT: TEdit
          Left = 180
          Top = 79
          Width = 113
          Height = 19
          Color = 14737602
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnExit = txt_DENTRO_CFOP_RV_ISENTExit
        end
        object txt_DENTRO_SUBST_CFOP_ISENT: TEdit
          Left = 404
          Top = 79
          Width = 113
          Height = 19
          Color = 14737602
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4227072
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 11
          OnExit = txt_DENTRO_SUBST_CFOP_ISENTExit
        end
        object StaticText1: TStaticText
          Left = 180
          Top = 16
          Width = 113
          Height = 28
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Mercadoria Revenda ou p/Consumidor'
          Color = 14737602
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 12
        end
        object StaticText2: TStaticText
          Left = 516
          Top = 16
          Width = 113
          Height = 28
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Revendedor porem ira Consumir'
          Color = 9830399
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 13
          Visible = False
        end
        object txt_DENTRO_CFOP_RVCP_ST: TEdit
          Left = 516
          Top = 43
          Width = 113
          Height = 19
          Color = 9830399
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          Visible = False
          OnExit = txt_DENTRO_CFOP_RVCP_STExit
        end
        object txt_DENTRO_CFOP_RVCP_TRIB: TEdit
          Left = 516
          Top = 61
          Width = 113
          Height = 19
          Color = 9830399
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          Visible = False
          OnExit = txt_DENTRO_CFOP_RVCP_TRIBExit
        end
        object txt_DENTRO_CFOP_RVCP_ISENT: TEdit
          Left = 516
          Top = 79
          Width = 113
          Height = 19
          Color = 9830399
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          Visible = False
          OnExit = txt_DENTRO_CFOP_RVCP_ISENTExit
        end
        object StaticText3: TStaticText
          Left = 292
          Top = 16
          Width = 113
          Height = 28
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Industrializada ou Vda. p/Industrializa'#231#227'o'
          Color = 9830399
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 14
        end
        object txt_DENTRO_CFOP_CF_ST: TEdit
          Left = 292
          Top = 43
          Width = 113
          Height = 19
          Color = 9830399
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
          OnExit = txt_DENTRO_CFOP_CF_STExit
        end
        object txt_DENTRO_CFOP_CF_TRIB: TEdit
          Left = 292
          Top = 61
          Width = 113
          Height = 19
          Color = 9830399
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
          OnExit = txt_DENTRO_CFOP_CF_TRIBExit
        end
        object txt_DENTRO_CFOP_CF_ISENT: TEdit
          Left = 292
          Top = 79
          Width = 113
          Height = 19
          Color = 9830399
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 8
          OnExit = txt_DENTRO_CFOP_CF_ISENTExit
        end
        object StaticText4: TStaticText
          Left = 404
          Top = 16
          Width = 113
          Height = 28
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Substituir Quando NF c/CF (cupom fiscal)'
          Color = 14737602
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 15
        end
        object CB_CALCIMP_RV_DENTRO: TCheckBox
          Left = 180
          Top = 98
          Width = 113
          Height = 16
          Caption = 'Calcula Impostos'
          Checked = True
          Color = 14737602
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          State = cbChecked
          TabOrder = 16
        end
        object CB_CALCIMP_RVCP_DENTRO: TCheckBox
          Left = 517
          Top = 98
          Width = 113
          Height = 16
          Caption = 'Calcula Impostos'
          Checked = True
          Color = 9830399
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          State = cbChecked
          TabOrder = 17
          Visible = False
        end
        object CB_CALCIMP_CF_DENTRO: TCheckBox
          Left = 292
          Top = 98
          Width = 113
          Height = 16
          Caption = 'Calcula Impostos'
          Checked = True
          Color = 9830399
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          State = cbChecked
          TabOrder = 18
        end
      end
      object GB_FORA: TGroupBox
        Left = 9
        Top = 240
        Width = 639
        Height = 121
        Caption = 'CFOPs Para Movimenta'#231#227'o Fora do Estado:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        object Label4: TLabel
          Left = 11
          Top = 53
          Width = 164
          Height = 13
          Caption = 'Produtos c/Substitui'#231#227'o Tributaria:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label6: TLabel
          Left = 76
          Top = 71
          Width = 98
          Height = 13
          Caption = 'Produtos Tributados:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label8: TLabel
          Left = 92
          Top = 86
          Width = 82
          Height = 13
          Caption = 'Produtos Isentos:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object StaticText5: TStaticText
          Left = 180
          Top = 21
          Width = 113
          Height = 28
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Mercadoria Revenda ou p/Consumidor'
          Color = 14737602
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
        object txt_FORA_CFOP_RV_ST: TEdit
          Left = 180
          Top = 48
          Width = 113
          Height = 19
          Color = 14737602
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          OnExit = txt_FORA_CFOP_RV_STExit
        end
        object txt_FORA_CFOP_RV_TRIB: TEdit
          Left = 180
          Top = 66
          Width = 113
          Height = 19
          Color = 14737602
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnExit = txt_FORA_CFOP_RV_TRIBExit
        end
        object txt_FORA_CFOP_RV_ISENT: TEdit
          Left = 180
          Top = 84
          Width = 113
          Height = 19
          Color = 14737602
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          OnExit = txt_FORA_CFOP_RV_ISENTExit
        end
        object StaticText6: TStaticText
          Left = 516
          Top = 21
          Width = 113
          Height = 28
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Revendedor porem ira Consumir'
          Color = 9830399
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 4
          Visible = False
        end
        object txt_FORA_CFOP_RVCP_ST: TEdit
          Left = 516
          Top = 48
          Width = 113
          Height = 19
          Color = 9830399
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          Visible = False
          OnExit = txt_FORA_CFOP_RVCP_STExit
        end
        object txt_FORA_CFOP_RVCP_TRIB: TEdit
          Left = 516
          Top = 66
          Width = 113
          Height = 19
          Color = 9830399
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
          Visible = False
          OnExit = txt_FORA_CFOP_RVCP_TRIBExit
        end
        object txt_FORA_CFOP_RVCP_ISENT: TEdit
          Left = 516
          Top = 84
          Width = 113
          Height = 19
          Color = 9830399
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
          Visible = False
          OnExit = txt_FORA_CFOP_RVCP_ISENTExit
        end
        object StaticText7: TStaticText
          Left = 292
          Top = 21
          Width = 113
          Height = 28
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Industrializada ou Vda. p/Industrializa'#231#227'o'
          Color = 9830399
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 8
        end
        object txt_FORA_CFOP_CF_ST: TEdit
          Left = 292
          Top = 48
          Width = 113
          Height = 19
          Color = 9830399
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
          OnExit = txt_FORA_CFOP_CF_STExit
        end
        object txt_FORA_CFOP_CF_TRIB: TEdit
          Left = 292
          Top = 66
          Width = 113
          Height = 19
          Color = 9830399
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
          OnExit = txt_FORA_CFOP_CF_TRIBExit
        end
        object txt_FORA_CFOP_CF_ISENT: TEdit
          Left = 292
          Top = 84
          Width = 113
          Height = 19
          Color = 9830399
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 11
          OnExit = txt_FORA_CFOP_CF_ISENTExit
        end
        object StaticText8: TStaticText
          Left = 404
          Top = 21
          Width = 113
          Height = 28
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSingle
          Caption = 'Substituir Quando NF c/CF (cupom fiscal)'
          Color = 14737602
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 12
        end
        object txt_FORA_SUBST_CFOP_ST: TEdit
          Left = 404
          Top = 48
          Width = 113
          Height = 19
          Color = 14737602
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4227072
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 13
          OnExit = txt_FORA_SUBST_CFOP_STExit
        end
        object txt_FORA_SUBST_CFOP_TRIB: TEdit
          Left = 404
          Top = 66
          Width = 113
          Height = 19
          Color = 14737602
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4227072
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 14
          OnExit = txt_FORA_SUBST_CFOP_TRIBExit
        end
        object txt_FORA_SUBST_CFOP_ISENT: TEdit
          Left = 404
          Top = 84
          Width = 113
          Height = 19
          Color = 14737602
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 4227072
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 15
          OnExit = txt_FORA_SUBST_CFOP_ISENTExit
        end
        object CB_CALCIMP_RV_FORA: TCheckBox
          Left = 180
          Top = 104
          Width = 113
          Height = 16
          Caption = 'Calcula Impostos'
          Checked = True
          Color = 14737602
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          State = cbChecked
          TabOrder = 16
        end
        object CB_CALCIMP_RVCP_FORA: TCheckBox
          Left = 517
          Top = 104
          Width = 113
          Height = 16
          Caption = 'Calcula Impostos'
          Checked = True
          Color = 9830399
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          State = cbChecked
          TabOrder = 17
          Visible = False
        end
        object CB_CALCIMP_CF_FORA: TCheckBox
          Left = 292
          Top = 103
          Width = 113
          Height = 17
          Caption = 'Calcula Impostos'
          Checked = True
          Color = 9830399
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          State = cbChecked
          TabOrder = 18
        end
      end
      object CB_GERADUP: TCheckBox
        Left = 10
        Top = 364
        Width = 97
        Height = 17
        Caption = 'Gerar Duplicatas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object CB_ATIVO: TCheckBox
        Left = 346
        Top = 365
        Width = 199
        Height = 17
        Caption = 'Manter Ativo no Formulario de Pedido'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object txt_codusr_inc: TEdit
        Left = 66
        Top = 410
        Width = 47
        Height = 19
        TabStop = False
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
      object txt_dathor_inc: TEdit
        Left = 114
        Top = 410
        Width = 200
        Height = 19
        TabStop = False
        Color = 7995257
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 9
      end
      object txt_codusr_alt: TEdit
        Left = 402
        Top = 410
        Width = 47
        Height = 19
        TabStop = False
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 10
      end
      object txt_dathor_alt: TEdit
        Left = 448
        Top = 410
        Width = 200
        Height = 19
        TabStop = False
        Color = 7995257
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 11
      end
      object CB_TPFINNFE: TComboBox
        Left = 144
        Top = 384
        Width = 369
        Height = 21
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 7
        Text = '1 - NF-e normal;'
        Items.Strings = (
          '0 - indefinido'
          '1 - NF-e normal;'
          '2 - NF-e complementar;'
          '3 - NF-e de ajuste;'
          '4 - Devolu'#231#227'o de mercadoria.')
      end
    end
    object TsAliquotas: TTabSheet
      Caption = 'Aliquotas e Redutores'
      Enabled = False
      ImageIndex = 1
      object GroupBox3: TGroupBox
        Left = 3
        Top = -1
        Width = 542
        Height = 231
        Caption = 'Aliquotas e Redutores:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        object Label82: TLabel
          Left = 5
          Top = 32
          Width = 52
          Height = 27
          Alignment = taCenter
          AutoSize = False
          Caption = 'Produtos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          WordWrap = True
        end
        object Label85: TLabel
          Left = 4
          Top = 59
          Width = 53
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Tabela A:'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label86: TLabel
          Left = 4
          Top = 77
          Width = 53
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Tabela B:'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label87: TLabel
          Left = 4
          Top = 95
          Width = 53
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Tabela C:'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label88: TLabel
          Left = 4
          Top = 113
          Width = 53
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Tabela D:'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label89: TLabel
          Left = 4
          Top = 131
          Width = 53
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Tabela E:'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label90: TLabel
          Left = 4
          Top = 149
          Width = 53
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Tabela F:'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label91: TLabel
          Left = 4
          Top = 167
          Width = 53
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Tabela G:'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label92: TLabel
          Left = 4
          Top = 185
          Width = 53
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Tabela H:'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label93: TLabel
          Left = 4
          Top = 203
          Width = 53
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Tabela I:'
          Color = 16776176
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object gb_icms_norInter: TGroupBox
          Left = 276
          Top = 23
          Width = 206
          Height = 208
          Caption = 'Interestaduais:'
          Color = 15132390
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          object Label96: TLabel
            Left = 1
            Top = 14
            Width = 50
            Height = 27
            Alignment = taCenter
            AutoSize = False
            Caption = 'Al'#237'quota de Icms'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label97: TLabel
            Left = 245
            Top = 14
            Width = 102
            Height = 26
            Alignment = taCenter
            AutoSize = False
            Caption = 'Redutor da Base de Calculo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object Label107: TLabel
            Left = 51
            Top = 12
            Width = 51
            Height = 27
            Alignment = taCenter
            AutoSize = False
            Caption = 'Redutor de Icms'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label9: TLabel
            Left = 102
            Top = 13
            Width = 50
            Height = 27
            Alignment = taCenter
            AutoSize = False
            Caption = 'Al'#237'quota de CBS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label10: TLabel
            Left = 152
            Top = 11
            Width = 51
            Height = 27
            Alignment = taCenter
            AutoSize = False
            Caption = 'Al'#237'quota de IBS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object FORA_ICMSA: TEdit
            Left = 2
            Top = 41
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            Text = '123.12%'
            OnExit = FORA_ICMSAExit
          end
          object FORA_REDUTNA: TEdit
            Left = 53
            Top = 41
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            Text = '123.12%'
            OnExit = FORA_REDUTNAExit
          end
          object FORA_ICMSB: TEdit
            Left = 2
            Top = 59
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            Text = '123.12%'
            OnExit = FORA_ICMSBExit
          end
          object FORA_REDUTNB: TEdit
            Left = 53
            Top = 59
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            Text = '123.12%'
            OnExit = FORA_REDUTNBExit
          end
          object FORA_ICMSC: TEdit
            Left = 2
            Top = 77
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            Text = '123.12%'
            OnExit = FORA_ICMSCExit
          end
          object FORA_REDUTNC: TEdit
            Left = 53
            Top = 77
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
            Text = '123.12%'
            OnExit = FORA_REDUTNCExit
          end
          object FORA_ICMSD: TEdit
            Left = 2
            Top = 95
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 6
            Text = '123.12%'
            OnExit = FORA_ICMSDExit
          end
          object FORA_REDUTND: TEdit
            Left = 53
            Top = 95
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 7
            Text = '123.12%'
            OnExit = FORA_REDUTNDExit
          end
          object FORA_ICMSE: TEdit
            Left = 2
            Top = 113
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 8
            Text = '123.12%'
            OnExit = FORA_ICMSEExit
          end
          object FORA_REDUTNE: TEdit
            Left = 53
            Top = 113
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 9
            Text = '123.12%'
            OnExit = FORA_REDUTNEExit
          end
          object FORA_ICMSF: TEdit
            Left = 2
            Top = 131
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 10
            Text = '123.12%'
            OnExit = FORA_ICMSFExit
          end
          object FORA_REDUTNF: TEdit
            Left = 53
            Top = 131
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 11
            Text = '123.12%'
            OnExit = FORA_REDUTNFExit
          end
          object FORA_ICMSG: TEdit
            Left = 2
            Top = 149
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 12
            Text = '123.12%'
            OnExit = FORA_ICMSGExit
          end
          object FORA_REDUTNG: TEdit
            Left = 53
            Top = 149
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 13
            Text = '123.12%'
            OnExit = FORA_REDUTNGExit
          end
          object FORA_ICMSH: TEdit
            Left = 2
            Top = 167
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 14
            Text = '123.12%'
            OnExit = FORA_ICMSHExit
          end
          object FORA_REDUTNH: TEdit
            Left = 53
            Top = 167
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 15
            Text = '123.12%'
            OnExit = FORA_REDUTNHExit
          end
          object FORA_ICMSI: TEdit
            Left = 2
            Top = 185
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 16
            Text = '123.12%'
            OnExit = FORA_ICMSIExit
          end
          object FORA_REDUTNI: TEdit
            Left = 53
            Top = 185
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 17
            Text = '123.12%'
            OnExit = FORA_REDUTNIExit
          end
          object edt_PCF_CBS_ALIQA_FE: TEdit
            Left = 100
            Top = 41
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 18
            Text = '123.12%'
            OnExit = edt_PCF_CBS_ALIQA_FEExit
          end
          object edt_PCF_CBS_ALIQB_FE: TEdit
            Left = 100
            Top = 59
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 19
            Text = '123.12%'
            OnExit = edt_PCF_CBS_ALIQB_FEExit
          end
          object edt_PCF_CBS_ALIQC_FE: TEdit
            Left = 100
            Top = 77
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 20
            Text = '123.12%'
            OnExit = edt_PCF_CBS_ALIQC_FEExit
          end
          object edt_PCF_CBS_ALIQD_FE: TEdit
            Left = 100
            Top = 95
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 21
            Text = '123.12%'
            OnExit = edt_PCF_CBS_ALIQD_FEExit
          end
          object edt_PCF_CBS_ALIQE_FE: TEdit
            Left = 100
            Top = 113
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 22
            Text = '123.12%'
            OnExit = edt_PCF_CBS_ALIQE_FEExit
          end
          object edt_PCF_CBS_ALIQF_FE: TEdit
            Left = 100
            Top = 131
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 23
            Text = '123.12%'
            OnExit = edt_PCF_CBS_ALIQF_FEExit
          end
          object edt_PCF_CBS_ALIQG_FE: TEdit
            Left = 100
            Top = 149
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 24
            Text = '123.12%'
            OnExit = edt_PCF_CBS_ALIQG_FEExit
          end
          object edt_PCF_CBS_ALIQH_FE: TEdit
            Left = 100
            Top = 167
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 25
            Text = '123.12%'
            OnExit = edt_PCF_CBS_ALIQH_FEExit
          end
          object edt_PCF_CBS_ALIQI_FE: TEdit
            Left = 100
            Top = 185
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 26
            Text = '123.12%'
            OnExit = edt_PCF_CBS_ALIQI_FEExit
          end
          object edt_PCF_IBS_ALIQA_FE: TEdit
            Left = 151
            Top = 41
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 27
            Text = '123.12%'
            OnExit = edt_PCF_IBS_ALIQA_FEExit
          end
          object edt_PCF_IBS_ALIQB_FE: TEdit
            Left = 151
            Top = 59
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 28
            Text = '123.12%'
            OnExit = edt_PCF_IBS_ALIQB_FEExit
          end
          object edt_PCF_IBS_ALIQC_FE: TEdit
            Left = 151
            Top = 77
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 29
            Text = '123.12%'
            OnExit = edt_PCF_IBS_ALIQC_FEExit
          end
          object edt_PCF_IBS_ALIQD_FE: TEdit
            Left = 151
            Top = 95
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 30
            Text = '123.12%'
            OnExit = edt_PCF_IBS_ALIQD_FEExit
          end
          object edt_PCF_IBS_ALIQE_FE: TEdit
            Left = 151
            Top = 113
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 31
            Text = '123.12%'
            OnExit = edt_PCF_IBS_ALIQE_FEExit
          end
          object edt_PCF_IBS_ALIQF_FE: TEdit
            Left = 151
            Top = 131
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 32
            Text = '123.12%'
            OnExit = edt_PCF_IBS_ALIQF_FEExit
          end
          object edt_PCF_IBS_ALIQG_FE: TEdit
            Left = 151
            Top = 149
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 33
            Text = '123.12%'
            OnExit = edt_PCF_IBS_ALIQG_FEExit
          end
          object edt_PCF_IBS_ALIQH_FE: TEdit
            Left = 151
            Top = 167
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 34
            Text = '123.12%'
            OnExit = edt_PCF_IBS_ALIQH_FEExit
          end
          object edt_PCF_IBS_ALIQI_FE: TEdit
            Left = 151
            Top = 185
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 35
            Text = '123.12%'
            OnExit = edt_PCF_IBS_ALIQI_FEExit
          end
        end
        object gb_icms_norEst: TGroupBox
          Left = 69
          Top = 23
          Width = 206
          Height = 208
          Caption = 'Estaduais:'
          Color = 15132390
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          object Label83: TLabel
            Left = 2
            Top = 14
            Width = 47
            Height = 27
            Alignment = taCenter
            AutoSize = False
            Caption = 'Al'#237'quota de Icms'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label84: TLabel
            Left = 245
            Top = 14
            Width = 102
            Height = 26
            Alignment = taCenter
            AutoSize = False
            Caption = 'Redutor da Base de Calculo'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            WordWrap = True
          end
          object Label94: TLabel
            Left = 52
            Top = 12
            Width = 52
            Height = 27
            Alignment = taCenter
            AutoSize = False
            Caption = 'Redutor de Icms'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label13: TLabel
            Left = 101
            Top = 13
            Width = 47
            Height = 27
            Alignment = taCenter
            AutoSize = False
            Caption = 'Al'#237'quota de CBS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object Label14: TLabel
            Left = 150
            Top = 12
            Width = 52
            Height = 27
            Alignment = taCenter
            AutoSize = False
            Caption = 'Al'#237'quota de IBS'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlue
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            WordWrap = True
          end
          object DENTRO_ICMSA: TEdit
            Left = 3
            Top = 41
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 0
            Text = '123.12%'
            OnExit = DENTRO_ICMSAExit
          end
          object DENTRO_REDUTNA: TEdit
            Left = 54
            Top = 41
            Width = 48
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 1
            Text = '123.12%'
            OnExit = DENTRO_REDUTNAExit
          end
          object DENTRO_ICMSB: TEdit
            Left = 3
            Top = 59
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 2
            Text = '123.12%'
            OnExit = DENTRO_ICMSBExit
          end
          object DENTRO_REDUTNB: TEdit
            Left = 54
            Top = 59
            Width = 48
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 3
            Text = '123.12%'
            OnExit = DENTRO_REDUTNBExit
          end
          object DENTRO_ICMSC: TEdit
            Left = 3
            Top = 77
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 4
            Text = '123.12%'
            OnExit = DENTRO_ICMSCExit
          end
          object DENTRO_REDUTNC: TEdit
            Left = 54
            Top = 77
            Width = 48
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 5
            Text = '123.12%'
            OnExit = DENTRO_REDUTNCExit
          end
          object DENTRO_ICMSD: TEdit
            Left = 3
            Top = 95
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 6
            Text = '123.12%'
            OnExit = DENTRO_ICMSDExit
          end
          object DENTRO_REDUTND: TEdit
            Left = 54
            Top = 95
            Width = 48
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 7
            Text = '123.12%'
            OnExit = DENTRO_REDUTNDExit
          end
          object DENTRO_ICMSE: TEdit
            Left = 3
            Top = 113
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 8
            Text = '123.12%'
            OnExit = DENTRO_ICMSEExit
          end
          object DENTRO_REDUTNE: TEdit
            Left = 54
            Top = 113
            Width = 48
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 9
            Text = '123.12%'
            OnExit = DENTRO_REDUTNEExit
          end
          object DENTRO_ICMSF: TEdit
            Left = 3
            Top = 131
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 10
            Text = '123.12%'
            OnExit = DENTRO_ICMSFExit
          end
          object DENTRO_REDUTNF: TEdit
            Left = 54
            Top = 131
            Width = 48
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 11
            Text = '123.12%'
            OnExit = DENTRO_REDUTNFExit
          end
          object DENTRO_ICMSG: TEdit
            Left = 3
            Top = 149
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 12
            Text = '123.12%'
            OnExit = DENTRO_ICMSGExit
          end
          object DENTRO_REDUTNG: TEdit
            Left = 54
            Top = 149
            Width = 48
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 13
            Text = '123.12%'
            OnExit = DENTRO_REDUTNGExit
          end
          object DENTRO_ICMSH: TEdit
            Left = 3
            Top = 167
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 14
            Text = '123.12%'
            OnExit = DENTRO_ICMSHExit
          end
          object DENTRO_REDUTNH: TEdit
            Left = 54
            Top = 167
            Width = 48
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 15
            Text = '123.12%'
            OnExit = DENTRO_REDUTNHExit
          end
          object DENTRO_ICMSI: TEdit
            Left = 3
            Top = 185
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 16
            Text = '123.12%'
            OnExit = DENTRO_ICMSIExit
          end
          object DENTRO_REDUTNI: TEdit
            Left = 54
            Top = 185
            Width = 48
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 17
            Text = '123.12%'
            OnExit = DENTRO_REDUTNIExit
          end
          object edt_PCF_CBS_ALIQA_DE: TEdit
            Left = 100
            Top = 41
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 18
            Text = '123.12%'
            OnExit = edt_PCF_CBS_ALIQA_DEExit
          end
          object edt_PCF_CBS_ALIQB_DE: TEdit
            Left = 100
            Top = 59
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 19
            Text = '123.12%'
            OnExit = edt_PCF_CBS_ALIQB_DEExit
          end
          object edt_PCF_CBS_ALIQC_DE: TEdit
            Left = 100
            Top = 77
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 20
            Text = '123.12%'
            OnExit = edt_PCF_CBS_ALIQC_DEExit
          end
          object edt_PCF_CBS_ALIQD_DE: TEdit
            Left = 100
            Top = 95
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 21
            Text = '123.12%'
            OnExit = edt_PCF_CBS_ALIQD_DEExit
          end
          object edt_PCF_CBS_ALIQE_DE: TEdit
            Left = 100
            Top = 113
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 22
            Text = '123.12%'
            OnExit = edt_PCF_CBS_ALIQE_DEExit
          end
          object edt_PCF_CBS_ALIQF_DE: TEdit
            Left = 100
            Top = 131
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 23
            Text = '123.12%'
            OnExit = edt_PCF_CBS_ALIQF_DEExit
          end
          object edt_PCF_CBS_ALIQG_DE: TEdit
            Left = 100
            Top = 149
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 24
            Text = '123.12%'
            OnExit = edt_PCF_CBS_ALIQG_DEExit
          end
          object edt_PCF_CBS_ALIQH_DE: TEdit
            Left = 100
            Top = 167
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 25
            Text = '123.12%'
            OnExit = edt_PCF_CBS_ALIQH_DEExit
          end
          object edt_PCF_CBS_ALIQI_DE: TEdit
            Left = 100
            Top = 185
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 26
            Text = '123.12%'
            OnExit = edt_PCF_CBS_ALIQI_DEExit
          end
          object edt_PCF_IBS_ALIQA_DE: TEdit
            Left = 151
            Top = 41
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 27
            Text = '123.12%'
            OnExit = edt_PCF_IBS_ALIQA_DEExit
          end
          object edt_PCF_IBS_ALIQB_DE: TEdit
            Left = 151
            Top = 59
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 28
            Text = '123.12%'
            OnExit = edt_PCF_IBS_ALIQB_DEExit
          end
          object edt_PCF_IBS_ALIQC_DE: TEdit
            Left = 151
            Top = 77
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 29
            Text = '123.12%'
            OnExit = edt_PCF_IBS_ALIQC_DEExit
          end
          object edt_PCF_IBS_ALIQD_DE: TEdit
            Left = 151
            Top = 95
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 30
            Text = '123.12%'
            OnExit = edt_PCF_IBS_ALIQD_DEExit
          end
          object edt_PCF_IBS_ALIQE_DE: TEdit
            Left = 151
            Top = 113
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 31
            Text = '123.12%'
            OnExit = edt_PCF_IBS_ALIQE_DEExit
          end
          object edt_PCF_IBS_ALIQF_DE: TEdit
            Left = 151
            Top = 131
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 32
            Text = '123.12%'
            OnExit = edt_PCF_IBS_ALIQF_DEExit
          end
          object edt_PCF_IBS_ALIQG_DE: TEdit
            Left = 151
            Top = 149
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 33
            Text = '123.12%'
            OnExit = edt_PCF_IBS_ALIQG_DEExit
          end
          object edt_PCF_IBS_ALIQH_DE: TEdit
            Left = 151
            Top = 167
            Width = 52
            Height = 19
            Color = 13828095
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 34
            Text = '123.12%'
            OnExit = edt_PCF_IBS_ALIQH_DEExit
          end
          object edt_PCF_IBS_ALIQI_DE: TEdit
            Left = 151
            Top = 185
            Width = 52
            Height = 19
            Color = 16776176
            Ctl3D = False
            ParentCtl3D = False
            TabOrder = 35
            Text = '123.12%'
            OnExit = edt_PCF_IBS_ALIQI_DEExit
          end
        end
      end
      object GB_SERVICO: TGroupBox
        Left = 3
        Top = 276
        Width = 277
        Height = 66
        Caption = 'CFOP Para Servi'#231'os:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        object Label102: TLabel
          Left = 3
          Top = 17
          Width = 89
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Dentro do Estado:'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object Label103: TLabel
          Left = 4
          Top = 37
          Width = 89
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Fora do Estado:'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
        end
        object DENTRO_CFOSER: TEdit
          Left = 96
          Top = 16
          Width = 41
          Height = 19
          Color = 13828095
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          Text = 'DENTRO_CFORVR'
        end
        object FORA_CFOSER: TEdit
          Left = 96
          Top = 34
          Width = 41
          Height = 19
          Color = 13828095
          Ctl3D = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          Text = 'DENTRO_CFORVR'
        end
        object CB_DENTRO_CIMP_SER: TCheckBox
          Left = 143
          Top = 16
          Width = 97
          Height = 17
          Caption = 'N'#227'o Calcular'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 3
        end
        object CB_FORA_CIMP_SER: TCheckBox
          Left = 144
          Top = 34
          Width = 89
          Height = 17
          Caption = 'N'#227'o Calcular'
          Color = 13828095
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          TabOrder = 1
        end
      end
    end
    object tsTab: TTabSheet
      Caption = 'Lis&ta'
      ImageIndex = 1
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 664
        Height = 397
        Align = alClient
        DataSource = DM2.Src_TipPed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        OnKeyDown = DBGrid1KeyDown
        Columns = <
          item
            Expanded = False
            FieldName = 'TPCODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TPNOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TPDENTRO_CFOP_RV_TRIB'
            Title.Caption = 'CFOP Trib.Rev.Dentro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TPDENTRO_CFOP_RV_ST'
            Title.Caption = 'CFOP. Subst.Rev.Dentro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TPDENTRO_CFOP_RV_ISENTO'
            Title.Caption = 'CFOP. Isento Rev.Dentro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TPFORA_CFOP_RV_ST'
            Title.Caption = 'CFOP. Subst.Rev.Fora'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TPFORA_CFOP_RV_TRIB'
            Title.Caption = 'CFOP. Subst.Rev.Fora'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TPFORA_CFOP_RV_ISENTO'
            Title.Caption = 'CFOP. Isento Rev.Fora'
            Visible = True
          end>
      end
    end
  end
  object MANUT: TGroupBox
    Left = 0
    Top = 501
    Width = 680
    Height = 38
    Align = alBottom
    Caption = 'Comandos para manuten'#231#227'o:'
    Color = clBtnFace
    ParentColor = False
    TabOrder = 2
    object INCLUIR: TBitBtn
      Left = 4
      Top = 14
      Width = 100
      Height = 20
      Hint = 'Inclus'#227'o de novos registros'
      Caption = '&Novo'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = INCLUIRClick
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
    object ALTERAR: TBitBtn
      Left = 104
      Top = 14
      Width = 100
      Height = 20
      Hint = 'Permite alterar o registro atual'
      Caption = '&Alterar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = ALTERARClick
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
    object EXCLUIR: TBitBtn
      Left = 204
      Top = 14
      Width = 100
      Height = 20
      Hint = 'Exclus'#227'o do registro atual'
      Caption = '&Excluir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnClick = EXCLUIRClick
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
    object GRAVAR: TBitBtn
      Left = 305
      Top = 14
      Width = 100
      Height = 20
      Hint = 'Grava o registro atual'
      Caption = '&Gravar'
      Enabled = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = GRAVARClick
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
    object CANCELAR: TBitBtn
      Left = 407
      Top = 14
      Width = 100
      Height = 20
      Hint = 'Cancela a opera'#231#227'o atual'
      Caption = 'Cance&lar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = CANCELARClick
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
    object bbAtuCad: TBitBtn
      Left = 512
      Top = 8
      Width = 115
      Height = 25
      Caption = 'Atualizar Estado'
      TabOrder = 5
      OnClick = bbAtuCadClick
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
    object bbExportar: TBitBtn
      Left = 631
      Top = 9
      Width = 43
      Height = 25
      Caption = 'Exportar'
      TabOrder = 6
      OnClick = bbExportarClick
      NumGlyphs = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 539
    Width = 680
    Height = 40
    Align = alBottom
    Caption = 'Movimento dos Registros:'
    TabOrder = 3
    object DBNavigator1: TDBNavigator
      Left = 7
      Top = 16
      Width = 400
      Height = 20
      Hint = 'Navega entre os registros selecionados'
      DataSource = DM2.Src_TipPed
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Proximo Registro'
        #218'ltimo Registro')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object SAIR: TBitBtn
      Left = 409
      Top = 16
      Width = 100
      Height = 20
      Hint = 'Fecha Esta Janela'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = SAIRClick
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
    object bbIncluirFaltas: TBitBtn
      Left = 512
      Top = 11
      Width = 115
      Height = 25
      Caption = 'Incluir Faltantes'
      TabOrder = 2
      OnClick = bbIncluirFaltasClick
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
  object Src_mTip_Ped: TDataSource
    DataSet = DM2.Tb_TipPed
    OnDataChange = Src_mTip_PedDataChange
    Left = 400
    Top = 8
  end
end
