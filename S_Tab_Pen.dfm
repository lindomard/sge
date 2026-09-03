object Frm_Tab_Pen: TFrm_Tab_Pen
  Left = 51
  Top = 93
  Width = 653
  Height = 395
  Caption = 'Visualiza'#231#227'o/impress'#227'o de relatorios de Pendencias de Pedidos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 323
    Width = 645
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BitBtn1: TBitBtn
      Left = 2
      Top = 2
      Width = 157
      Height = 38
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = BitBtn1Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
        0003377777777777777308888888888888807F33333333333337088888888888
        88807FFFFFFFFFFFFFF7000000000000000077777777777777770F8F8F8F8F8F
        8F807F333333333333F708F8F8F8F8F8F9F07F333333333337370F8F8F8F8F8F
        8F807FFFFFFFFFFFFFF7000000000000000077777777777777773330FFFFFFFF
        03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
        03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
        33333337F3F37F3733333330F08F0F0333333337F7337F7333333330FFFF0033
        33333337FFFF7733333333300000033333333337777773333333}
      NumGlyphs = 2
    end
    object BitBtn2: TBitBtn
      Left = 475
      Top = 2
      Width = 157
      Height = 38
      Caption = '&Sair'
      TabOrder = 1
      OnClick = BitBtn2Click
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
  object GroupBox2: TGroupBox
    Left = 0
    Top = 269
    Width = 645
    Height = 54
    Align = alBottom
    Caption = 'Progresso da Montagem do Relatorio:'
    TabOrder = 1
    Visible = False
    object Gauge1: TGauge
      Left = 2
      Top = 15
      Width = 641
      Height = 37
      Align = alClient
      Progress = 0
    end
  end
  object St_NomRel: TStaticText
    Left = 0
    Top = 0
    Width = 645
    Height = 17
    Align = alTop
    Alignment = taCenter
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = sbsSunken
    Caption = '.'
    Color = clMoneyGreen
    ParentColor = False
    TabOrder = 2
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 17
    Width = 645
    Height = 252
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 3
    object TabSheet1: TTabSheet
      Caption = 'Filtros'
      object Label1: TLabel
        Left = 7
        Top = 165
        Width = 98
        Height = 13
        Caption = 'Refer'#234'ncia: M'#234's:'
        Visible = False
      end
      object Label2: TLabel
        Left = 161
        Top = 167
        Width = 27
        Height = 13
        Caption = 'Ano:'
        Visible = False
      end
      object lbl_nompro: TLabel
        Left = 84
        Top = 122
        Width = 49
        Height = 13
        Caption = 'Produto:'
      end
      object StaticText4: TStaticText
        Left = 46
        Top = 9
        Width = 92
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Cliente:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 0
      end
      object CODCLI: TEdit
        Left = 142
        Top = 8
        Width = 56
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnExit = CODCLIExit
        OnKeyPress = CODCLIKeyPress
      end
      object lbx_codcli: TListBox
        Left = 197
        Top = 8
        Width = 345
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnKeyDown = lbx_codcliKeyDown
      end
      object OMITIR_CLI: TCheckBox
        Left = 143
        Top = 29
        Width = 52
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        Ctl3D = True
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object StaticText5: TStaticText
        Left = 31
        Top = 46
        Width = 109
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Vendedor:'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 4
      end
      object CODVEN: TEdit
        Left = 142
        Top = 46
        Width = 56
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
      end
      object lbx_codven: TListBox
        Left = 197
        Top = 46
        Width = 345
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        OnKeyDown = lbx_codvenKeyDown
      end
      object OMITIR_VEN: TCheckBox
        Left = 143
        Top = 68
        Width = 53
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 7
      end
      object RG_PERIODO: TGroupBox
        Left = 0
        Top = 186
        Width = 637
        Height = 38
        Align = alBottom
        Caption = 'Per'#237'odo:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 10
        Visible = False
        object Label11: TLabel
          Left = 11
          Top = 16
          Width = 66
          Height = 13
          Caption = 'Periodo de:'
        end
        object Label10: TLabel
          Left = 196
          Top = 16
          Width = 8
          Height = 13
          Caption = 'a'
        end
        object MDT1: TMaskEdit
          Left = 84
          Top = 12
          Width = 95
          Height = 19
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          TabOrder = 0
          Text = '  /  /    '
          OnExit = MDT1Exit
        end
        object MDT2: TMaskEdit
          Left = 222
          Top = 12
          Width = 98
          Height = 19
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          TabOrder = 1
          Text = '  /  /    '
          OnExit = MDT2Exit
        end
      end
      object MES: TEdit
        Left = 111
        Top = 167
        Width = 45
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
        Visible = False
        OnExit = MESExit
        OnKeyPress = INTCOLKeyPress
      end
      object ANO: TEdit
        Left = 191
        Top = 167
        Width = 45
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 9
        Visible = False
        OnKeyPress = INTCOLKeyPress
      end
      object StaticText3: TStaticText
        Left = 31
        Top = 84
        Width = 109
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Fornecedor :'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 11
      end
      object CODFOR: TEdit
        Left = 142
        Top = 84
        Width = 56
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 12
        OnExit = CODFORExit
        OnKeyPress = CODFORKeyPress
        OnMouseMove = CODFORMouseMove
      end
      object lbx_codfor: TListBox
        Left = 197
        Top = 84
        Width = 345
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 13
        OnKeyDown = lbx_codforKeyDown
      end
      object OMITIR_FOR: TCheckBox
        Left = 143
        Top = 105
        Width = 53
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 14
      end
      object CODPRO: TEdit
        Left = 142
        Top = 122
        Width = 56
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 15
        OnExit = CODPROExit
        OnKeyPress = CODPROKeyPress
      end
      object lbx_codpro: TListBox
        Left = 197
        Top = 122
        Width = 345
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 16
        OnKeyDown = lbx_codproKeyDown
      end
      object OMITIR_PRO: TCheckBox
        Left = 142
        Top = 143
        Width = 54
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 17
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Filtros Extras'
      ImageIndex = 1
      object GB_FILTROS_GRUPOS: TGroupBox
        Left = 0
        Top = 0
        Width = 637
        Height = 68
        Align = alTop
        Caption = 'Grupos de Produtos'
        TabOrder = 0
        object StaticText2: TStaticText
          Left = 28
          Top = 18
          Width = 111
          Height = 17
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Grupo de Produto:'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          TabOrder = 0
        end
        object CODGPRO: TEdit
          Left = 142
          Top = 17
          Width = 56
          Height = 19
          Hint = 'Digite o C'#243'digo Desejado'
          BevelOuter = bvNone
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 1
          OnExit = CODGPROExit
          OnKeyPress = CODGPROKeyPress
        end
        object lbx_codgpro: TListBox
          Left = 197
          Top = 17
          Width = 345
          Height = 39
          Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnKeyDown = lbx_codgproKeyDown
        end
        object OMITIR_GPRO: TCheckBox
          Left = 143
          Top = 38
          Width = 52
          Height = 17
          Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
          Caption = 'Omitir'
          Ctl3D = True
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
        end
      end
      object StaticText1: TStaticText
        Left = 31
        Top = 122
        Width = 109
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Banco:'
        Color = clBtnFace
        ParentColor = False
        TabOrder = 1
        Visible = False
      end
      object CODBCO: TEdit
        Left = 142
        Top = 122
        Width = 56
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        Visible = False
        OnExit = CODBCOExit
        OnKeyPress = CODBCOKeyPress
      end
      object lbx_codbco: TListBox
        Left = 197
        Top = 122
        Width = 345
        Height = 39
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        Visible = False
        OnKeyDown = lbx_codbcoKeyDown
      end
      object OMITIR_BCO: TCheckBox
        Left = 143
        Top = 144
        Width = 53
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        Visible = False
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Defini'#231'oes'
      ImageIndex = 1
      object Label6: TLabel
        Left = 25
        Top = 15
        Width = 137
        Height = 13
        Caption = 'Quantidade de Colunas:'
      end
      object Label7: TLabel
        Left = 228
        Top = 15
        Width = 30
        Height = 13
        Caption = 'Pular'
      end
      object Label8: TLabel
        Left = 311
        Top = 15
        Width = 169
        Height = 13
        Caption = 'Caracteres de uma para outra'
      end
      object Bevel1: TBevel
        Left = -68
        Top = 64
        Width = 629
        Height = 2
      end
      object Bevel4: TBevel
        Left = 319
        Top = 66
        Width = 2
        Height = 58
      end
      object Bevel2: TBevel
        Left = -70
        Top = 84
        Width = 631
        Height = 2
      end
      object Bevel3: TBevel
        Left = -70
        Top = 104
        Width = 631
        Height = 2
      end
      object NUMCOL: TEdit
        Left = 164
        Top = 9
        Width = 60
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnKeyPress = INTCOLKeyPress
      end
      object INTCOL: TEdit
        Left = 262
        Top = 9
        Width = 45
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnKeyPress = INTCOLKeyPress
      end
      object RG_TPCOL: TRadioGroup
        Left = 26
        Top = 30
        Width = 465
        Height = 31
        Caption = 'Tipo de Coluna'
        Columns = 2
        Ctl3D = False
        ItemIndex = 0
        Items.Strings = (
          '&Sequencial '
          '&Lado a Lado Mesmo Valor')
        ParentCtl3D = False
        TabOrder = 2
      end
      object CB_GRUPO: TCheckBox
        Left = 21
        Top = 66
        Width = 205
        Height = 17
        Caption = 'Imprimir &Grupos'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
      end
      object CB_SGRUPO: TCheckBox
        Left = 340
        Top = 66
        Width = 161
        Height = 17
        Caption = 'Imprimir &Sub-Grupos'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
      end
      object CB_AVPTPI: TCheckBox
        Left = 21
        Top = 87
        Width = 270
        Height = 17
        Caption = 'Avan'#231'ar Pagina apos imprimir pagina inicial'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
      end
      object CB_MPAGGR: TCheckBox
        Left = 20
        Top = 108
        Width = 245
        Height = 17
        Caption = 'Avan'#231'ar Pagina ao Trocar de Grupo'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
      end
      object CB_AVPIPF: TCheckBox
        Left = 280
        Top = 86
        Width = 281
        Height = 17
        Caption = 'Avan'#231'ar pagina antes de imprimir pagina final'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
      end
      object CB_MPAGSG: TCheckBox
        Left = 295
        Top = 108
        Width = 266
        Height = 17
        Caption = 'Avan'#231'ar P'#225'gina ao trocar Sub_Grupos'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
      end
    end
  end
end
