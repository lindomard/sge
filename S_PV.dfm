inherited Frm_PV: TFrm_PV
  Left = 288
  Top = 145
  Width = 777
  Height = 520
  Caption = 'Manuten'#231#227'o no cadastro de Plano de Vendas'
  Font.Style = []
  FormStyle = fsNormal
  OldCreateOrder = True
  Visible = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 26
    Width = 769
    Height = 33
    inherited lbl_emp: TLabel
      Left = 732
      Width = 36
      Height = 31
    end
    inherited Pesquisapor: TLabel
      Top = 11
      Width = 67
    end
    inherited BBnAtu: TBitBtn
      Top = 6
      OnClick = BBnAtuClick
    end
    inherited CAMPO: TComboBox
      Top = 8
    end
    inherited Edit1: TMaskEdit
      Top = 8
      OnChange = Edit1Change
    end
  end
  inherited PC1: TPageControl
    Top = 59
    Width = 769
    Height = 430
    ActivePage = tab_adicionais
    inherited tsCad: TTabSheet
      object Label1: TLabel
        Left = 2
        Top = 2
        Width = 102
        Height = 13
        Caption = '&C'#243'digo do Plano.:'
        FocusControl = DBEdit1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 245
        Top = 2
        Width = 91
        Height = 13
        Caption = '&Nome do Plano:'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label29: TLabel
        Left = 3
        Top = 20
        Width = 101
        Height = 13
        Caption = 'Tipo de Comiss'#227'o'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label30: TLabel
        Left = 1
        Top = 135
        Width = 197
        Height = 13
        Caption = 'Tipo de Desconto Comercial/Geral'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label31: TLabel
        Left = -1
        Top = 175
        Width = 145
        Height = 13
        Caption = ' Tipo de Desconto 1 '#205'tem'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label32: TLabel
        Left = 0
        Top = 213
        Width = 145
        Height = 13
        Caption = ' Tipo de Desconto 2 '#205'tem'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label33: TLabel
        Left = 243
        Top = 19
        Width = 141
        Height = 13
        Caption = 'Tipo de Desconto 3 '#205'tem'
        FocusControl = DBEdit2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_hint: TLabel
        Left = 505
        Top = 46
        Width = 89
        Height = 56
        Alignment = taCenter
        AutoSize = False
        Caption = '[alt-tab] - para voltar campo'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Visible = False
        WordWrap = True
      end
      object Label40: TLabel
        Left = 503
        Top = 263
        Width = 89
        Height = 49
        Alignment = taCenter
        AutoSize = False
        Caption = 'Plano V'#225'lido para Comprar a Partir de'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object Label41: TLabel
        Left = 507
        Top = 144
        Width = 89
        Height = 49
        Alignment = taCenter
        AutoSize = False
        Caption = 'Prazo M'#233'dio deste Plano de Vendas'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
      object Label42: TLabel
        Left = 552
        Top = 200
        Width = 32
        Height = 13
        Caption = 'dia(s)'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbl_PERCPPARC: TLabel
        Left = 504
        Top = 332
        Width = 89
        Height = 42
        Alignment = taCenter
        AutoSize = False
        Caption = 'Percentual da Primeira Parcela'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Visible = False
        WordWrap = True
      end
      object DBEdit1: TDBEdit
        Left = 144
        Top = 1
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'PVCODPV'
        DataSource = DM1.Src_PV
        ParentCtl3D = False
        TabOrder = 1
        OnExit = DBEdit1Exit
      end
      object DBEdit2: TDBEdit
        Left = 340
        Top = 0
        Width = 163
        Height = 19
        Ctl3D = False
        DataField = 'PVNOME'
        DataSource = DM1.Src_PV
        ParentCtl3D = False
        TabOrder = 2
      end
      object db_codtip: TDBComboBox
        Left = 103
        Top = 0
        Width = 41
        Height = 21
        BevelKind = bkSoft
        DataField = 'PVCODTIP'
        DataSource = DM1.Src_PV
        ItemHeight = 13
        Items.Strings = (
          'AV'
          'AP'
          'PP'
          'CV')
        TabOrder = 0
        OnExit = db_codtipExit
      end
      object GB_COMIS: TGroupBox
        Left = 3
        Top = 58
        Width = 226
        Height = 72
        Caption = '% Comis do Plano de Vendas'
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        object Label5: TLabel
          Left = 6
          Top = 15
          Width = 154
          Height = 13
          Caption = 'Vendedor 01...............................'
        end
        object Label12: TLabel
          Left = 5
          Top = 34
          Width = 157
          Height = 13
          Caption = 'Vendedor 02................................'
        end
        object Label19: TLabel
          Left = 5
          Top = 52
          Width = 154
          Height = 13
          Caption = 'Vendedor 03...............................'
        end
        object DBEdit5: TDBEdit
          Left = 159
          Top = 14
          Width = 57
          Height = 19
          Ctl3D = False
          DataField = 'PVCOM'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnExit = DBEdit5Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object DBEdit3: TDBEdit
          Left = 159
          Top = 32
          Width = 57
          Height = 19
          Ctl3D = False
          DataField = 'PVCOM02'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          OnExit = DBEdit3Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object DBEdit34: TDBEdit
          Left = 159
          Top = 50
          Width = 57
          Height = 19
          Ctl3D = False
          DataField = 'PVCOM03'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnExit = DBEdit34Exit
          OnKeyPress = DBEdit5KeyPress
        end
      end
      object gb_status: TGroupBox
        Left = 4
        Top = 257
        Width = 497
        Height = 143
        Caption = ' Tabela de Status de Produtos '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        object Label17: TLabel
          Left = 8
          Top = 14
          Width = 113
          Height = 13
          Caption = 'Status...................'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label22: TLabel
          Left = 8
          Top = 52
          Width = 110
          Height = 13
          Caption = 'Desconto 2...........'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label24: TLabel
          Left = 8
          Top = 105
          Width = 145
          Height = 13
          Caption = 'Comiss'#227'o Vend.01..........'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label20: TLabel
          Left = 8
          Top = 34
          Width = 106
          Height = 13
          Caption = 'Desconto 1..........'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label21: TLabel
          Left = 8
          Top = 70
          Width = 118
          Height = 13
          Caption = 'Desconto 3.............'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label23: TLabel
          Left = 8
          Top = 88
          Width = 117
          Height = 13
          Caption = 'Desc.Financeiro......'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label18: TLabel
          Left = 8
          Top = 124
          Width = 145
          Height = 13
          Caption = 'Comiss'#227'o Vend.02..........'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object db_desi2S0: TDBEdit
          Left = 117
          Top = 48
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVD2S0'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 8
          OnExit = db_desi2S0Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_desi2S1: TDBEdit
          Left = 164
          Top = 48
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVD2S1'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 9
          OnExit = db_desi2S1Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_desi2S2: TDBEdit
          Left = 211
          Top = 48
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVD2S2'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 10
          OnExit = db_desi2S2Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_desi2S3: TDBEdit
          Left = 258
          Top = 48
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVD2S3'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 11
          OnExit = db_desi2S3Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_desi2S4: TDBEdit
          Left = 305
          Top = 48
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVD2S4'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 12
          OnExit = db_desi2S4Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_desi2S5: TDBEdit
          Left = 352
          Top = 48
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVD2S5'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 13
          OnExit = db_desi2S5Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_desi2S6: TDBEdit
          Left = 399
          Top = 48
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVD2S6'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 14
          OnExit = db_desi2S6Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_desi2S7: TDBEdit
          Left = 446
          Top = 48
          Width = 45
          Height = 19
          Ctl3D = False
          DataField = 'PVD2S7'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 15
          OnExit = db_desi2S7Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_CMS0: TDBEdit
          Left = 117
          Top = 102
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVCMS0'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 40
          OnExit = db_CMS0Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_CMS1: TDBEdit
          Left = 164
          Top = 102
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVCMS1'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 41
          OnExit = db_CMS1Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_CMS2: TDBEdit
          Left = 211
          Top = 102
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVCMS2'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 42
          OnExit = db_CMS2Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_CMS3: TDBEdit
          Left = 258
          Top = 102
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVCMS3'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 43
          OnExit = db_CMS3Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_CMS4: TDBEdit
          Left = 305
          Top = 102
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVCMS4'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 44
          OnExit = db_CMS4Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_CMS5: TDBEdit
          Left = 352
          Top = 102
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVCMS5'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 45
          OnExit = db_CMS5Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_CMS6: TDBEdit
          Left = 399
          Top = 102
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVCMS6'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 46
          OnExit = db_CMS6Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_CMS7: TDBEdit
          Left = 446
          Top = 102
          Width = 45
          Height = 19
          Ctl3D = False
          DataField = 'PVCMS7'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 47
          OnExit = db_CMS7Exit
        end
        object StaticText1: TStaticText
          Left = 117
          Top = 12
          Width = 48
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 24
        end
        object StaticText2: TStaticText
          Left = 164
          Top = 12
          Width = 48
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 25
        end
        object StaticText3: TStaticText
          Left = 258
          Top = 12
          Width = 48
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '3'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 26
        end
        object StaticText4: TStaticText
          Left = 211
          Top = 12
          Width = 48
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 27
        end
        object StaticText5: TStaticText
          Left = 352
          Top = 12
          Width = 48
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '5'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 28
        end
        object StaticText6: TStaticText
          Left = 305
          Top = 12
          Width = 48
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '4'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 29
        end
        object StaticText7: TStaticText
          Left = 446
          Top = 12
          Width = 45
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '7'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 30
        end
        object StaticText8: TStaticText
          Left = 399
          Top = 12
          Width = 48
          Height = 17
          Alignment = taCenter
          AutoSize = False
          BorderStyle = sbsSunken
          Caption = '6'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 31
        end
        object db_desiS0: TDBEdit
          Left = 117
          Top = 31
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVD1S0'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 0
          OnExit = db_desi2S0Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_desiS1: TDBEdit
          Left = 164
          Top = 31
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVD1S1'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          OnExit = db_desi2S1Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_desiS2: TDBEdit
          Left = 211
          Top = 31
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVD1S2'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 2
          OnExit = db_desi2S2Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_desiS3: TDBEdit
          Left = 258
          Top = 31
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVD1S3'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 3
          OnExit = db_desi2S3Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_desiS4: TDBEdit
          Left = 305
          Top = 31
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVD1S4'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
          OnExit = db_desi2S4Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_desiS5: TDBEdit
          Left = 352
          Top = 31
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVD1S5'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 5
          OnExit = db_desi2S5Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_desiS6: TDBEdit
          Left = 399
          Top = 31
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVD1S6'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 6
          OnExit = db_desi2S6Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_desiS7: TDBEdit
          Left = 446
          Top = 31
          Width = 45
          Height = 19
          Ctl3D = False
          DataField = 'PVD1S7'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 7
          OnExit = db_desi2S7Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_desi3S0: TDBEdit
          Left = 117
          Top = 66
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVD3S0'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 16
          OnExit = db_desi2S0Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_desi3S1: TDBEdit
          Left = 164
          Top = 66
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVD3S1'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 17
          OnExit = db_desi2S1Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_desi3S2: TDBEdit
          Left = 211
          Top = 66
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVD3S2'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 18
          OnExit = db_desi2S2Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_desi3S3: TDBEdit
          Left = 258
          Top = 66
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVD3S3'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 19
          OnExit = db_desi2S3Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_desi3S4: TDBEdit
          Left = 305
          Top = 66
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVD3S4'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 20
          OnExit = db_desi2S4Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_desi3S5: TDBEdit
          Left = 352
          Top = 66
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVD3S5'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 21
          OnExit = db_desi2S5Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_desi3S6: TDBEdit
          Left = 399
          Top = 66
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVD3S6'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 22
          OnExit = db_desi2S6Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_desi3S7: TDBEdit
          Left = 446
          Top = 66
          Width = 45
          Height = 19
          Ctl3D = False
          DataField = 'PVD3S7'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 23
          OnExit = db_desi2S7Exit
        end
        object db_DFS0: TDBEdit
          Left = 117
          Top = 84
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVDFS0'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 32
          OnExit = db_CMS0Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_DFS1: TDBEdit
          Left = 164
          Top = 84
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVDFS1'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 33
          OnExit = db_CMS1Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_DFS2: TDBEdit
          Left = 211
          Top = 84
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVDFS2'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 34
          OnExit = db_CMS2Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_DFS3: TDBEdit
          Left = 258
          Top = 84
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVDFS3'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 35
          OnExit = db_CMS3Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_DFS4: TDBEdit
          Left = 305
          Top = 84
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVDFS4'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 36
          OnExit = db_CMS4Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_DFS5: TDBEdit
          Left = 352
          Top = 84
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVDFS5'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 37
          OnExit = db_CMS5Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_DFS6: TDBEdit
          Left = 399
          Top = 84
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVDFS6'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 38
          OnExit = db_CMS6Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_DFS7: TDBEdit
          Left = 446
          Top = 84
          Width = 45
          Height = 19
          Ctl3D = False
          DataField = 'PVDFS7'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 39
          OnExit = db_CMS7Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_CMVD02S0: TDBEdit
          Left = 117
          Top = 120
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVCMVD02S0'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 48
          OnExit = db_CMS0Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_CMVD02S1: TDBEdit
          Left = 164
          Top = 120
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVCMVD02S1'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 49
          OnExit = db_CMS1Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_CMVD02S2: TDBEdit
          Left = 211
          Top = 120
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVCMVD02S3'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 50
          OnExit = db_CMS2Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_CMVD02S3: TDBEdit
          Left = 258
          Top = 120
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVCMVD02S4'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 51
          OnExit = db_CMS3Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_CMVD02S4: TDBEdit
          Left = 305
          Top = 120
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVCMVD02S4'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 52
          OnExit = db_CMS4Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_CMVD02S5: TDBEdit
          Left = 352
          Top = 120
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVCMVD02S5'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 53
          OnExit = db_CMS5Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_CMVD02S6: TDBEdit
          Left = 399
          Top = 120
          Width = 48
          Height = 19
          Ctl3D = False
          DataField = 'PVCMVD02S6'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 54
          OnExit = db_CMS6Exit
          OnKeyPress = DBEdit5KeyPress
        end
        object db_CMVD02S7: TDBEdit
          Left = 446
          Top = 120
          Width = 45
          Height = 19
          Ctl3D = False
          DataField = 'PVCMVD02S7'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 55
          OnExit = db_CMS7Exit
        end
      end
      object gb_financeiro: TGroupBox
        Left = 245
        Top = 54
        Width = 258
        Height = 207
        Caption = 'Descontos Financeiros:'
        Color = 16777088
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 13
        object Label34: TLabel
          Left = 4
          Top = 12
          Width = 177
          Height = 13
          Caption = 'Origem do desconto Financeiro'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label35: TLabel
          Left = 9
          Top = 152
          Width = 161
          Height = 13
          Caption = 'Desconto Financeiro V'#225'lido:'
          FocusControl = DBEdit2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object CB_PVTPDESF: TComboBox
          Left = 3
          Top = 26
          Width = 179
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ParentFont = False
          TabOrder = 0
          Text = 'Cadastro de Produtos'
          OnClick = CB_PVTPDESFClick
          OnEnter = CB_PVTPCEnter
          OnExit = CB_PVTPDESFExit
          Items.Strings = (
            'Cadastro de Produtos'
            'Cadastro de Fornecedores'
            'Grupos de Fornecedores'
            'Plano de Vendas %'
            'Intervalo de Desconto'
            'Ref.Tabela de Status do Produto')
        end
        object DB_PVDESCF: TDBEdit
          Left = 183
          Top = 26
          Width = 46
          Height = 19
          Ctl3D = False
          DataField = 'PVDESCF'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 1
          OnExit = DB_PVDESCFExit
          OnKeyPress = DBEdit5KeyPress
        end
        object gb_intervalo: TGroupBox
          Left = 7
          Top = 47
          Width = 217
          Height = 104
          Caption = 'Intervalo de desconto'
          TabOrder = 2
          object Label3: TLabel
            Left = 61
            Top = 32
            Width = 6
            Height = 13
            Caption = #224
            FocusControl = DBEdit2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 143
            Top = 31
            Width = 6
            Height = 13
            Caption = '='
            FocusControl = DBEdit2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 144
            Top = 49
            Width = 6
            Height = 13
            Caption = '='
            FocusControl = DBEdit2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 61
            Top = 50
            Width = 6
            Height = 13
            Caption = #224
            FocusControl = DBEdit2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 144
            Top = 67
            Width = 6
            Height = 13
            Caption = '='
            FocusControl = DBEdit2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 61
            Top = 68
            Width = 6
            Height = 13
            Caption = #224
            FocusControl = DBEdit2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 144
            Top = 85
            Width = 6
            Height = 13
            Caption = '='
            FocusControl = DBEdit2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 61
            Top = 86
            Width = 6
            Height = 13
            Caption = #224
            FocusControl = DBEdit2
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit9: TDBEdit
            Left = 1
            Top = 30
            Width = 50
            Height = 19
            Ctl3D = False
            DataField = 'PVDF01A'
            DataSource = DM1.Src_PV
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 5
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 0
            OnKeyPress = DBEdit5KeyPress
          end
          object DBEdit10: TDBEdit
            Left = 87
            Top = 30
            Width = 50
            Height = 19
            Ctl3D = False
            DataField = 'PVDF01B'
            DataSource = DM1.Src_PV
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 5
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 1
            OnKeyPress = DBEdit5KeyPress
          end
          object DBEdit11: TDBEdit
            Left = 164
            Top = 29
            Width = 50
            Height = 19
            Ctl3D = False
            DataField = 'PVDF01'
            DataSource = DM1.Src_PV
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 5
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 2
            OnKeyPress = DBEdit5KeyPress
          end
          object Edit2: TEdit
            Left = 1
            Top = 12
            Width = 216
            Height = 21
            Enabled = False
            ParentColor = True
            TabOrder = 3
            Text = '% desc    '#224'      % desc   =   Desc.Fin'
          end
          object DBEdit12: TDBEdit
            Left = 164
            Top = 47
            Width = 50
            Height = 19
            Ctl3D = False
            DataField = 'PVDF02'
            DataSource = DM1.Src_PV
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 5
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 6
            OnKeyPress = DBEdit5KeyPress
          end
          object DBEdit13: TDBEdit
            Left = 87
            Top = 48
            Width = 50
            Height = 19
            Ctl3D = False
            DataField = 'PVDF02B'
            DataSource = DM1.Src_PV
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 5
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 5
            OnKeyPress = DBEdit5KeyPress
          end
          object DBEdit14: TDBEdit
            Left = 1
            Top = 48
            Width = 50
            Height = 19
            Ctl3D = False
            DataField = 'PVDF02A'
            DataSource = DM1.Src_PV
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 5
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 4
            OnKeyPress = DBEdit5KeyPress
          end
          object DBEdit15: TDBEdit
            Left = 164
            Top = 65
            Width = 50
            Height = 19
            Ctl3D = False
            DataField = 'PVDF03'
            DataSource = DM1.Src_PV
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 5
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 9
            OnKeyPress = DBEdit5KeyPress
          end
          object DBEdit16: TDBEdit
            Left = 87
            Top = 66
            Width = 50
            Height = 19
            Ctl3D = False
            DataField = 'PVDF03B'
            DataSource = DM1.Src_PV
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 5
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 8
            OnKeyPress = DBEdit5KeyPress
          end
          object DBEdit17: TDBEdit
            Left = 1
            Top = 66
            Width = 50
            Height = 19
            Ctl3D = False
            DataField = 'PVDF03A'
            DataSource = DM1.Src_PV
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 5
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 7
            OnKeyPress = DBEdit5KeyPress
          end
          object DBEdit18: TDBEdit
            Left = 164
            Top = 83
            Width = 50
            Height = 19
            Ctl3D = False
            DataField = 'PVDF04'
            DataSource = DM1.Src_PV
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 5
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 12
            OnKeyPress = DBEdit5KeyPress
          end
          object DBEdit19: TDBEdit
            Left = 87
            Top = 84
            Width = 50
            Height = 19
            Ctl3D = False
            DataField = 'PVDF04B'
            DataSource = DM1.Src_PV
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 5
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 11
            OnKeyPress = DBEdit5KeyPress
          end
          object DBEdit20: TDBEdit
            Left = 1
            Top = 84
            Width = 50
            Height = 19
            Ctl3D = False
            DataField = 'PVDF04A'
            DataSource = DM1.Src_PV
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            MaxLength = 5
            ParentCtl3D = False
            ParentFont = False
            TabOrder = 10
            OnKeyPress = DBEdit5KeyPress
          end
        end
        object CB_PVDDESCF: TComboBox
          Left = 7
          Top = 167
          Width = 172
          Height = 21
          AutoDropDown = True
          BevelKind = bkSoft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ItemHeight = 13
          ItemIndex = 0
          ParentFont = False
          TabOrder = 3
          Text = 'At'#233' a data do Vencimento'
          OnClick = CB_PVDDESCFClick
          OnEnter = CB_PVTPCEnter
          OnExit = CB_PVDDESCFExit
          Items.Strings = (
            'At'#233' a data do Vencimento'
            'dia(s) ap'#243's a emiss'#227'o:'
            'por dia de antecipa'#231#227'o')
        end
        object DB_PVDIASDESCF: TDBEdit
          Left = 183
          Top = 168
          Width = 46
          Height = 19
          Ctl3D = False
          DataField = 'PVDIASDESCF'
          DataSource = DM1.Src_PV
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          MaxLength = 5
          ParentCtl3D = False
          ParentFont = False
          TabOrder = 4
        end
        object DBCheckBox2: TDBCheckBox
          Left = 8
          Top = 190
          Width = 193
          Height = 17
          Caption = 'Aplicar tamb'#233'm em promo'#231#245'es'
          DataField = 'PVFINPRM'
          DataSource = DM1.Src_PV
          TabOrder = 5
          ValueChecked = '0'
          ValueUnchecked = '1'
        end
      end
      object DB_PVTPD1: TDBEdit
        Left = 184
        Top = 193
        Width = 46
        Height = 19
        Ctl3D = False
        DataField = 'PVDES1'
        DataSource = DM1.Src_PV
        MaxLength = 5
        ParentCtl3D = False
        TabOrder = 8
        OnExit = DB_PVTPD1Exit
        OnKeyPress = DBEdit5KeyPress
      end
      object db_PVDES3: TDBEdit
        Left = 426
        Top = 35
        Width = 46
        Height = 19
        Ctl3D = False
        DataField = 'PVDES3'
        DataSource = DM1.Src_PV
        MaxLength = 5
        ParentCtl3D = False
        TabOrder = 12
        OnExit = db_PVDES3Exit
        OnKeyPress = DBEdit5KeyPress
      end
      object db_PVDES2: TDBEdit
        Left = 187
        Top = 230
        Width = 46
        Height = 19
        Ctl3D = False
        DataField = 'PVDES2'
        DataSource = DM1.Src_PV
        MaxLength = 5
        ParentCtl3D = False
        TabOrder = 10
        OnKeyPress = DBEdit5KeyPress
      end
      object CB_PVTPC: TComboBox
        Left = 3
        Top = 35
        Width = 226
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        Style = csDropDownList
        ItemHeight = 13
        TabOrder = 3
        OnClick = CB_PVTPCClick
        OnEnter = CB_PVTPCEnter
        OnExit = CB_PVTPCExit
        Items.Strings = (
          'Cadastro do Produto'
          'Plano de Vendas'
          'Cadastro do Vendedor'
          'Cadastro de Clientes'
          'Cadastro de Estados'
          'Extra por Produto'
          '% da Comiss'#227'o do Produto'
          'Comissao do Desconto'
          'Ref.Tabela de Status do Produtos'
          'Cadastro de Fornecedor'
          'Cadastro de Grupo')
      end
      object CB_PVTPDC: TComboBox
        Left = 5
        Top = 151
        Width = 179
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        TabOrder = 5
        Text = 'Plano de Vendas..(%)..:'
        OnClick = CB_PVTPDCClick
        OnEnter = CB_PVTPCEnter
        OnExit = CB_PVTPDCExit
        Items.Strings = (
          'Plano de Vendas..(%)..:'
          'Cadastro do Cliente'
          'Extra(digitado)')
      end
      object db_PVDES1: TDBEdit
        Left = 184
        Top = 151
        Width = 46
        Height = 19
        Ctl3D = False
        DataField = 'PVDES'
        DataSource = DM1.Src_PV
        MaxLength = 5
        ParentCtl3D = False
        TabOrder = 6
        OnExit = db_PVDES1Exit
        OnKeyPress = DBEdit5KeyPress
      end
      object CB_PVTPD1: TComboBox
        Left = 5
        Top = 192
        Width = 179
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        TabOrder = 7
        Text = 'Ref.Tabela de Status do Produto'
        OnClick = CB_PVTPD1Click
        OnEnter = CB_PVTPCEnter
        OnExit = CB_PVTPD1Exit
        Items.Strings = (
          'Plano de Vendas..(%)..:'
          'Cadastro Produto'
          'Cadastro Cliente'
          'Grupo de Produtos'
          'Extra(digitado)'
          'Ref.Tabela de Status do Produto')
      end
      object CB_PVTPD2: TComboBox
        Left = 6
        Top = 230
        Width = 179
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        TabOrder = 9
        Text = 'Plano de Vendas..(%)..:'
        OnClick = CB_PVTPD2Click
        OnEnter = CB_PVTPCEnter
        OnExit = CB_PVTPD2Exit
        Items.Strings = (
          'Plano de Vendas..(%)..:'
          'Cadastro Produto'
          'Extra(digitado)'
          'Ref.Tabela de Status do Produto')
      end
      object CB_PVTPD3: TComboBox
        Left = 245
        Top = 35
        Width = 179
        Height = 21
        AutoDropDown = True
        BevelKind = bkSoft
        ItemHeight = 13
        TabOrder = 11
        Text = 'Plano de Vendas..(%)..:'
        OnClick = CB_PVTPD3Click
        OnEnter = CB_PVTPCEnter
        OnExit = CB_PVTPD3Exit
        Items.Strings = (
          'Plano de Vendas..(%)..:'
          'Cadastro Produto'
          'Extra(digitado)'
          'Ref.Tabela de Status do Produto')
      end
      object DBE_VALMIN: TDBEdit
        Left = 506
        Top = 310
        Width = 82
        Height = 19
        Ctl3D = False
        DataField = 'PVVALORMIN'
        DataSource = DM1.Src_PV
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 5
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 15
        OnKeyPress = DBEdit5KeyPress
      end
      object DBEdit4: TDBEdit
        Left = 504
        Top = 195
        Width = 42
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'PVPRAZOMED'
        DataSource = DM1.Src_PV
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 5
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 16
        OnExit = DBE_VALMINExit
        OnKeyPress = DBEdit5KeyPress
      end
      object DBE_PERCPPARC: TDBEdit
        Left = 506
        Top = 374
        Width = 81
        Height = 19
        Ctl3D = False
        DataField = 'PVPERCPPARC'
        DataSource = DM1.Src_PV
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 10
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 17
        Visible = False
        OnExit = DBE_PERCPPARCExit
        OnKeyPress = DBEdit5KeyPress
      end
      object gb_prazos: TGroupBox
        Left = 607
        Top = 0
        Width = 154
        Height = 402
        Align = alRight
        Caption = 'Prazos:'
        TabOrder = 18
        object DBGrid3: TDBGrid
          Left = 2
          Top = 15
          Width = 150
          Height = 360
          Align = alClient
          DataSource = srv_pv02
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = [fsBold]
          Columns = <
            item
              Expanded = False
              FieldName = 'PV2PRAZO'
              Title.Alignment = taCenter
              Width = 57
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PV2PORC'
              Title.Alignment = taCenter
              Width = 54
              Visible = True
            end>
        end
        object Panel3: TPanel
          Left = 2
          Top = 375
          Width = 150
          Height = 25
          Align = alBottom
          TabOrder = 1
          object bbexcprazo: TBitBtn
            Left = 72
            Top = -1
            Width = 78
            Height = 26
            Caption = 'E&xcluir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = bbexcprazoClick
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
      end
    end
    object tab_adicionais: TTabSheet [1]
      Caption = 'Adicionais'
      Enabled = False
      ImageIndex = 1
      object Label25: TLabel
        Left = 414
        Top = 255
        Width = 245
        Height = 13
        Caption = 'Vinculado a Seguinte Forma de Pagamento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label26: TLabel
        Left = 13
        Top = 341
        Width = 194
        Height = 13
        Caption = 'Prazo M'#233'dio do Plano..............................'
      end
      object Label27: TLabel
        Left = 10
        Top = 4
        Width = 84
        Height = 13
        Caption = '&C'#243'digo do Plano.:'
        Color = clBtnFace
        FocusControl = DBEdit27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label28: TLabel
        Left = 234
        Top = 4
        Width = 85
        Height = 13
        Caption = '&Nome do Plano...:'
        Color = clBtnFace
        FocusControl = DBEdit28
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentColor = False
        ParentFont = False
      end
      object Label36: TLabel
        Left = 6
        Top = 360
        Width = 58
        Height = 13
        Caption = 'Incluido por:'
      end
      object Label37: TLabel
        Left = 374
        Top = 360
        Width = 18
        Height = 13
        Caption = 'Em:'
      end
      object Label38: TLabel
        Left = 6
        Top = 378
        Width = 60
        Height = 13
        Caption = 'Alterado por:'
      end
      object Label39: TLabel
        Left = 374
        Top = 378
        Width = 18
        Height = 13
        Caption = 'Em:'
      end
      object Label43: TLabel
        Left = 5
        Top = 209
        Width = 125
        Height = 13
        Caption = 'Tipo de Pre'#231'o Padr'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBCheckBox1: TDBCheckBox
        Left = 2
        Top = 22
        Width = 237
        Height = 17
        Caption = 'Bloquear Promo'#231#245'es'
        DataField = 'PVBLQPRM'
        DataSource = DM1.Src_PV
        TabOrder = 0
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object GroupBox8: TGroupBox
        Left = 489
        Top = 24
        Width = 263
        Height = 93
        Caption = 'Acr'#233'scimos no Pre'#231'o Unit'#225'rio:'
        TabOrder = 4
        Visible = False
        object Label13: TLabel
          Left = 8
          Top = 20
          Width = 130
          Height = 13
          Caption = 'Em todos os Produtos........:'
        end
        object Label14: TLabel
          Left = 7
          Top = 38
          Width = 135
          Height = 13
          Caption = 'Em Produtos Tipo Codigo 0.:'
        end
        object Label15: TLabel
          Left = 7
          Top = 56
          Width = 135
          Height = 13
          Caption = 'Em Produtos Tipo Codigo 1.:'
        end
        object Label16: TLabel
          Left = 7
          Top = 74
          Width = 132
          Height = 13
          Caption = 'Prod.Tipo Cod. dif 0 e dif 1.:'
        end
        object DBEdit22: TDBEdit
          Left = 173
          Top = 16
          Width = 54
          Height = 19
          Ctl3D = False
          DataField = 'PVACTD'
          DataSource = DM1.Src_PV
          ParentCtl3D = False
          TabOrder = 0
          OnExit = DBEdit22Exit
        end
        object DBEdit23: TDBEdit
          Left = 173
          Top = 34
          Width = 54
          Height = 19
          Ctl3D = False
          DataField = 'PVACT00'
          DataSource = DM1.Src_PV
          ParentCtl3D = False
          TabOrder = 1
        end
        object DBEdit24: TDBEdit
          Left = 173
          Top = 52
          Width = 54
          Height = 19
          Ctl3D = False
          DataField = 'PVACT01'
          DataSource = DM1.Src_PV
          ParentCtl3D = False
          TabOrder = 2
        end
        object DBEdit25: TDBEdit
          Left = 173
          Top = 70
          Width = 54
          Height = 19
          Ctl3D = False
          DataField = 'PVACT99'
          DataSource = DM1.Src_PV
          ParentCtl3D = False
          TabOrder = 3
        end
      end
      object DBRadioGroup5: TDBRadioGroup
        Left = 1
        Top = 255
        Width = 263
        Height = 54
        Caption = 'Prazo Ponderado(PP) buscar prazos em qual tabela'
        DataField = 'PVPPORI'
        DataSource = DM1.Src_PV
        Items.Strings = (
          '&Cadastro Produto'
          'Ca&dastro Fornecedores')
        TabOrder = 7
        Values.Strings = (
          '0'
          '1')
      end
      object CB_VINCULO: TComboBox
        Left = 417
        Top = 273
        Width = 251
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        TabOrder = 8
        OnExit = CB_VINCULOExit
      end
      object DBEdit26: TDBEdit
        Left = 204
        Top = 336
        Width = 54
        Height = 19
        Color = 16755413
        Ctl3D = False
        DataField = 'PVPRAZOMED'
        DataSource = DM1.Src_PV
        Enabled = False
        MaxLength = 5
        ParentCtl3D = False
        TabOrder = 9
        OnExit = DBEdit22Exit
      end
      object DBComboBox1: TDBComboBox
        Left = 115
        Top = 0
        Width = 41
        Height = 21
        BevelKind = bkSoft
        DataField = 'PVCODTIP'
        DataSource = DM1.Src_PV
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ItemHeight = 13
        Items.Strings = (
          'AV'
          'AP'
          'PP'
          'CV')
        ParentFont = False
        TabOrder = 10
        OnExit = db_codtipExit
      end
      object DBEdit27: TDBEdit
        Left = 159
        Top = 1
        Width = 64
        Height = 19
        Ctl3D = False
        DataField = 'PVCODPV'
        DataSource = DM1.Src_PV
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 11
        OnExit = DBEdit1Exit
      end
      object DBEdit28: TDBEdit
        Left = 349
        Top = 1
        Width = 124
        Height = 19
        Ctl3D = False
        DataField = 'PVNOME'
        DataSource = DM1.Src_PV
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 12
      end
      object DBCB_ACREDESREG: TDBCheckBox
        Left = 3
        Top = 40
        Width = 326
        Height = 17
        Caption = 'Aceitar Acrescimos/descontos do Cadastro de Regiao'
        DataField = 'PVACREDESREG'
        DataSource = DM1.Src_PV
        TabOrder = 1
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBCB_AJCOMIS: TDBCheckBox
        Left = 4
        Top = 72
        Width = 389
        Height = 17
        Caption = 'Ajustar Comiss'#245'es de Acordo com a Tabela de Acrescimos/Desconto'
        DataField = 'PVAJCOMIS'
        DataSource = DM1.Src_PV
        TabOrder = 3
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object DBE_USRINC: TDBEdit
        Left = 82
        Top = 357
        Width = 70
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'PVUSRINC'
        DataSource = DM1.Src_PV
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 13
      end
      object NOMUSR_INC: TEdit
        Left = 151
        Top = 357
        Width = 218
        Height = 19
        TabStop = False
        Color = 7995257
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 14
      end
      object DBE_DATHOR_INC: TDBEdit
        Left = 398
        Top = 357
        Width = 182
        Height = 19
        TabStop = False
        Color = 7995257
        Ctl3D = False
        DataField = 'PVDTINC'
        DataSource = DM1.Src_PV
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 15
      end
      object DBE_USRALT: TDBEdit
        Left = 82
        Top = 375
        Width = 70
        Height = 19
        TabStop = False
        Ctl3D = False
        DataField = 'PVUSRALT'
        DataSource = DM1.Src_PV
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 16
      end
      object NOMUSR_ALT: TEdit
        Left = 151
        Top = 375
        Width = 218
        Height = 19
        TabStop = False
        Color = 7995257
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 17
      end
      object DBE_DATHOR_ALT: TDBEdit
        Left = 398
        Top = 375
        Width = 182
        Height = 19
        TabStop = False
        Color = 7995257
        Ctl3D = False
        DataField = 'PVDTALT'
        DataSource = DM1.Src_PV
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = True
        TabOrder = 18
      end
      object DBCB_ACREDESREG_PROMO: TDBCheckBox
        Left = 3
        Top = 56
        Width = 358
        Height = 17
        Caption = 'Aceitar Acrescimos/descontos do Cadastro de Regiao em Promo'#231#227'o'
        DataField = 'PVACREDESREG_PROMO'
        DataSource = DM1.Src_PV
        TabOrder = 2
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
      object CB_TPP: TComboBox
        Left = 5
        Top = 227
        Width = 251
        Height = 21
        BevelKind = bkSoft
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 6
        Text = 'Cad. Estado'
        OnExit = CB_TPPExit
        Items.Strings = (
          'Cad. Estado'
          'Pre'#231'o 1'
          'Pre'#231'o 2'
          'Pre'#231'o 3'
          'Dig.Pedido'
          'Preco de Custo')
      end
      object DBCB_PVACEITARPCOEXCLUSIVO: TDBCheckBox
        Left = 5
        Top = 90
        Width = 389
        Height = 17
        Caption = 'Aceitar tabela de precos exclusivo do cliente'
        DataField = 'PVACEITARPCOEXCLUSIVO'
        DataSource = DM1.Src_PV
        TabOrder = 19
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object gb_condicoes_vendas: TGroupBox
        Left = 6
        Top = 112
        Width = 259
        Height = 94
        Caption = 'Condicoes de Vendas:'
        TabOrder = 5
        object Label44: TLabel
          Left = 5
          Top = 20
          Width = 180
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '% acr'#233'scimo no Pre'#231'o Unit'#225'rio:'
        end
        object Label45: TLabel
          Left = 5
          Top = 40
          Width = 180
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '% Operadora:'
        end
        object Label46: TLabel
          Left = 5
          Top = 58
          Width = 180
          Height = 13
          Alignment = taRightJustify
          AutoSize = False
          Caption = '% Antecipa'#231#227'o:'
        end
        object DBE_PVACTD: TDBEdit
          Left = 188
          Top = 18
          Width = 54
          Height = 19
          Ctl3D = False
          DataField = 'PVACTD'
          DataSource = DM1.Src_PV
          ParentCtl3D = False
          TabOrder = 0
          OnExit = DBEdit22Exit
        end
        object DBE_PVPERCOPERADORA: TDBEdit
          Left = 188
          Top = 36
          Width = 54
          Height = 19
          Ctl3D = False
          DataField = 'PVPERCOPERADORA'
          DataSource = DM1.Src_PV
          ParentCtl3D = False
          TabOrder = 1
          OnExit = DBEdit22Exit
        end
        object DBE_PVPERCANTECIPACAO: TDBEdit
          Left = 188
          Top = 54
          Width = 54
          Height = 19
          Ctl3D = False
          DataField = 'PVPERCANTECIPACAO'
          DataSource = DM1.Src_PV
          ParentCtl3D = False
          TabOrder = 2
          OnExit = DBEdit22Exit
        end
      end
      object DBCB_PVTITSEP_PROD_SERV: TDBCheckBox
        Left = 424
        Top = 176
        Width = 297
        Height = 17
        Caption = 'Titulos Separados Para Produtos e Servi'#231'os'
        DataField = 'PVTITSEP_PROD_SERV'
        DataSource = DM1.Src_PV
        TabOrder = 20
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    inherited tsTab: TTabSheet
      inherited DBGrid1: TDBGrid
        Width = 753
        Height = 394
        DataSource = DM1.Src_PV
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'PVCODTIP'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PVCODPV'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PVNOME'
            Width = 305
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'prazos'
            Visible = True
          end>
      end
    end
  end
  inherited MANUT: TGroupBox
    Top = 0
    Width = 769
    Height = 26
    Align = alTop
    Caption = ''
    inherited INCLUIR: TBitBtn
      Left = 1
      Top = 1
      Width = 85
      Height = 23
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited ALTERAR: TBitBtn
      Left = 86
      Top = 1
      Width = 85
      Height = 23
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited EXCLUIR: TBitBtn
      Left = 171
      Top = 1
      Width = 85
      Height = 23
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    inherited GRAVAR: TBitBtn
      Left = 256
      Top = 1
      Width = 85
      Height = 23
      Cursor = crHandPoint
      OnClick = GRAVARClick
      Layout = blGlyphLeft
    end
    inherited CANCELAR: TBitBtn
      Left = 340
      Top = 1
      Width = 85
      Height = 23
      Cursor = crHandPoint
      Layout = blGlyphLeft
    end
    object DBNavigator2: TDBNavigator
      Left = 425
      Top = 2
      Width = 240
      Height = 22
      Cursor = crHandPoint
      Hint = 'Navega entre os registros selecionados'
      DataSource = DM1.Src_PV
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Proximo Registro'
        #218'ltimo Registro')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
    end
    object BitBtn1: TBitBtn
      Left = 665
      Top = 1
      Width = 102
      Height = 23
      Cursor = crHandPoint
      Hint = 'Fecha Esta Janela'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
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
  end
  inherited GroupBox2: TGroupBox
    Top = 505
    Width = 769
    Height = 38
    Align = alNone
    Visible = False
    inherited DBNavigator1: TDBNavigator
      Top = 13
      Width = 400
      Height = 23
    end
    inherited SAIR: TBitBtn
      Left = 408
      Top = 13
      Width = 100
      Height = 23
      Layout = blGlyphLeft
    end
  end
  object Src_PV: TDataSource
    DataSet = DM1.Tb_PV
    OnDataChange = Src_PVDataChange
    Left = 520
    Top = 40
  end
  object srv_pv02: TDataSource
    DataSet = Tb_Pv02
    Left = 656
    Top = 24
  end
  object Tb_Pv02: TQuery
    CachedUpdates = True
    AfterInsert = Tb_Pv02AfterInsert
    AfterEdit = Tb_Pv02AfterEdit
    BeforePost = Tb_Pv02BeforePost
    AfterPost = Tb_Pv02AfterPost
    BeforeCancel = Tb_Pv02BeforeCancel
    BeforeDelete = Tb_Pv02BeforeDelete
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from CADPV2')
    UpdateObject = U_PV02
    Left = 632
    Top = 24
    object Tb_Pv02PV2CODEMP: TFloatField
      FieldName = 'PV2CODEMP'
      Origin = 'SG_ASSOC.CADPV2.PV2CODEMP'
    end
    object Tb_Pv02PV2CODTIP: TStringField
      FieldName = 'PV2CODTIP'
      Origin = 'SG_ASSOC.CADPV2.PV2CODTIP'
      Size = 2
    end
    object Tb_Pv02PV2CODPV: TFloatField
      FieldName = 'PV2CODPV'
      Origin = 'SG_ASSOC.CADPV2.PV2CODPV'
    end
    object Tb_Pv02PV2PRAZO: TFloatField
      DisplayLabel = 'Prazo'
      FieldName = 'PV2PRAZO'
      Origin = 'SG_ASSOC.CADPV2.PV2PRAZO'
    end
    object Tb_Pv02PV2PORC: TFloatField
      DisplayLabel = '%'
      FieldName = 'PV2PORC'
      Origin = 'SG_ASSOC.CADPV2.PV2PORC'
    end
  end
  object U_PV02: TUpdateSQL
    ModifySQL.Strings = (
      'update CADPV2'
      'set'
      '  PV2CODEMP = :PV2CODEMP,'
      '  PV2CODTIP = :PV2CODTIP,'
      '  PV2CODPV = :PV2CODPV,'
      '  PV2PRAZO = :PV2PRAZO,'
      '  PV2PORC = :PV2PORC'
      'where'
      '  PV2CODEMP = :OLD_PV2CODEMP and'
      '  PV2CODTIP = :OLD_PV2CODTIP and'
      '  PV2CODPV = :OLD_PV2CODPV')
    InsertSQL.Strings = (
      'insert into CADPV2'
      '  (PV2CODEMP, PV2CODTIP, PV2CODPV, PV2PRAZO, PV2PORC)'
      'values'
      '  (:PV2CODEMP, :PV2CODTIP, :PV2CODPV, :PV2PRAZO, :PV2PORC)')
    DeleteSQL.Strings = (
      'delete from CADPV2'
      'where'
      '  PV2CODEMP = :OLD_PV2CODEMP and'
      '  PV2CODTIP = :OLD_PV2CODTIP and'
      '  PV2CODPV = :OLD_PV2CODPV')
    Left = 688
    Top = 24
  end
end
