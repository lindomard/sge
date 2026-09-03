object Frm_Tab_AJ: TFrm_Tab_AJ
  Left = 74
  Top = 31
  Width = 641
  Height = 377
  Caption = 'Visualiza'#231#227'o/impress'#227'o de relatorios de Ajustes de Estoque'
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 298
    Width = 625
    Height = 41
    Align = alBottom
    TabOrder = 0
    object bbImprimir: TBitBtn
      Left = 2
      Top = 2
      Width = 157
      Height = 38
      Caption = '&Imprimir'
      TabOrder = 0
      OnClick = bbImprimirClick
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
    object bbSair: TBitBtn
      Left = 475
      Top = 2
      Width = 157
      Height = 38
      Caption = '&Sair'
      TabOrder = 1
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
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 17
    Width = 625
    Height = 236
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Filtros'
      object Label4: TLabel
        Left = 6
        Top = 6
        Width = 49
        Height = 13
        Caption = 'Produto:'
      end
      object Label3: TLabel
        Left = 33
        Top = 49
        Width = 82
        Height = 13
        Caption = 'C'#243'digo Inicial:'
      end
      object Label5: TLabel
        Left = 185
        Top = 49
        Width = 75
        Height = 13
        Caption = 'C'#243'digo Final:'
      end
      object Label1: TLabel
        Left = 7
        Top = 148
        Width = 98
        Height = 13
        Caption = 'Refer'#234'ncia: M'#234's:'
        Visible = False
      end
      object Label2: TLabel
        Left = 161
        Top = 148
        Width = 27
        Height = 13
        Caption = 'Ano:'
        Visible = False
      end
      object CODPRO: TEdit
        Left = 56
        Top = 6
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = CODPROExit
        OnKeyPress = CODPROKeyPress
      end
      object lbx_codpro: TListBox
        Left = 117
        Top = 6
        Width = 487
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnKeyDown = lbx_codproKeyDown
      end
      object OMITIR_PRO: TCheckBox
        Left = 57
        Top = 27
        Width = 55
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
      end
      object RG_PERIODO: TGroupBox
        Left = 3
        Top = 96
        Width = 613
        Height = 38
        Caption = 'Per'#237'odo:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
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
      object CODINI: TEdit
        Left = 117
        Top = 47
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnExit = CODINIExit
        OnKeyPress = CODPROKeyPress
      end
      object CODFIN: TEdit
        Left = 270
        Top = 47
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnExit = CODFINExit
        OnKeyPress = CODPROKeyPress
      end
      object MES: TEdit
        Left = 111
        Top = 142
        Width = 45
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        Visible = False
        OnExit = MESExit
        OnKeyPress = INTCOLKeyPress
      end
      object ANO: TEdit
        Left = 191
        Top = 142
        Width = 45
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        Visible = False
        OnKeyPress = INTCOLKeyPress
      end
      object GroupBox3: TGroupBox
        Left = 0
        Top = 169
        Width = 617
        Height = 39
        Align = alBottom
        Caption = 'Filtrar Motivos que Contenha a Palavra:'
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
        object txt_motivo: TEdit
          Left = 2
          Top = 16
          Width = 621
          Height = 19
          TabOrder = 0
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Definicoes'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 617
        Height = 127
        Align = alTop
        Caption = 'Formato do Relat'#243'rio:'
        TabOrder = 0
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
          Left = 0
          Top = 64
          Width = 629
          Height = 2
        end
        object Bevel2: TBevel
          Left = 0
          Top = 84
          Width = 631
          Height = 2
        end
        object Bevel3: TBevel
          Left = 0
          Top = 104
          Width = 631
          Height = 2
        end
        object Bevel4: TBevel
          Left = 319
          Top = 66
          Width = 2
          Height = 58
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
        object CB_AVPTPI: TCheckBox
          Left = 21
          Top = 87
          Width = 270
          Height = 17
          Caption = 'Avan'#231'ar Pagina apos imprimir pagina inicial'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
        end
        object CB_MPAGGR: TCheckBox
          Left = 20
          Top = 108
          Width = 245
          Height = 17
          Caption = 'Avan'#231'ar Pagina ao Trocar de Grupo'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 4
        end
        object CB_GRUPO: TCheckBox
          Left = 21
          Top = 66
          Width = 205
          Height = 17
          Caption = 'Imprimir &Grupos'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 5
        end
        object CB_AVPIPF: TCheckBox
          Left = 340
          Top = 86
          Width = 281
          Height = 17
          Caption = 'Avan'#231'ar pagina antes de imprimir pagina final'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 6
        end
        object CB_MPAGSG: TCheckBox
          Left = 340
          Top = 108
          Width = 266
          Height = 17
          Caption = 'Avan'#231'ar P'#225'gina ao trocar Sub_Grupos'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 7
        end
        object CB_SGRUPO: TCheckBox
          Left = 340
          Top = 66
          Width = 161
          Height = 17
          Caption = 'Imprimir &Sub-Grupos'
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 8
        end
      end
    end
  end
  object St_NomRel: TStaticText
    Left = 0
    Top = 0
    Width = 625
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
  object GroupBox2: TGroupBox
    Left = 0
    Top = 253
    Width = 631
    Height = 45
    Align = alLeft
    Caption = 'Progresso da Montagem do Relatorio:'
    TabOrder = 3
    Visible = False
    object Gauge1: TGauge
      Left = 2
      Top = 15
      Width = 627
      Height = 28
      Align = alClient
      Progress = 0
    end
  end
end
