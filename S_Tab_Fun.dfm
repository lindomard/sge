object Frm_Tab_Fun: TFrm_Tab_Fun
  Left = 256
  Top = 230
  Width = 649
  Height = 392
  Caption = 'Impress'#227'o de Relat'#243'rios Personalizados de Funcionarios'
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
  object Panel1: TPanel
    Left = 0
    Top = 284
    Width = 641
    Height = 44
    Align = alClient
    TabOrder = 0
    OnDblClick = BitBtn1Click
    object Label1: TLabel
      Left = 7
      Top = 359
      Width = 98
      Height = 13
      Caption = 'Refer'#234'ncia: M'#234's:'
      Visible = False
    end
    object Label2: TLabel
      Left = 161
      Top = 359
      Width = 27
      Height = 13
      Caption = 'Ano:'
      Visible = False
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 4
      Width = 639
      Height = 39
      Align = alBottom
      Caption = 'Progresso da Montagem do Relatorio:'
      TabOrder = 0
      Visible = False
      object Gauge1: TGauge
        Left = 2
        Top = 15
        Width = 635
        Height = 22
        Align = alClient
        Progress = 0
      end
    end
    object RG_PERIODO: TGroupBox
      Left = 5
      Top = 312
      Width = 626
      Height = 38
      Caption = 'Per'#237'odo:'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
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
        Height = 21
        BevelKind = bkSoft
        Ctl3D = True
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 0
        Text = '  /  /    '
        OnExit = MDT1Exit
      end
      object MDT2: TMaskEdit
        Left = 222
        Top = 12
        Width = 98
        Height = 21
        BevelKind = bkSoft
        Ctl3D = True
        EditMask = '!99/99/9999;1; '
        MaxLength = 10
        ParentCtl3D = False
        TabOrder = 1
        Text = '  /  /    '
        OnExit = MDT2Exit
      end
    end
    object MES: TEdit
      Left = 111
      Top = 356
      Width = 45
      Height = 21
      BevelKind = bkSoft
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 1
      Visible = False
      OnExit = MESExit
      OnKeyPress = INTCOLKeyPress
    end
    object ANO: TEdit
      Left = 191
      Top = 356
      Width = 45
      Height = 21
      BevelKind = bkSoft
      Ctl3D = True
      ParentCtl3D = False
      TabOrder = 3
      Visible = False
      OnKeyPress = INTCOLKeyPress
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 328
    Width = 641
    Height = 30
    Align = alBottom
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 2
      Top = 2
      Width = 157
      Height = 28
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
      Height = 28
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
  object PageControl1: TPageControl
    Left = 0
    Top = 17
    Width = 641
    Height = 267
    ActivePage = TabSheet1
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    MultiLine = True
    ParentFont = False
    TabOrder = 2
    TabPosition = tpLeft
    object TabSheet1: TTabSheet
      Caption = 'Filtros'
      object lbl_cidade: TStaticText
        Left = 63
        Top = 54
        Width = 73
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'Funcion'#225'rio:'
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
      object CODFUN: TEdit
        Left = 143
        Top = 54
        Width = 55
        Height = 19
        Hint = 'Digite o C'#243'digo Desejado'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        OnExit = CODFUNExit
        OnKeyPress = CODFUNKeyPress
      end
      object lbx_codfun: TListBox
        Left = 197
        Top = 54
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
        OnKeyDown = lbx_codfunKeyDown
      end
      object OMITIR_FUN: TCheckBox
        Left = 143
        Top = 74
        Width = 54
        Height = 17
        Hint = 'Se Marcado o C'#243'digo'#13#10'Selecionado n'#227'o sera listado'
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
      end
      object StaticText3: TStaticText
        Left = -6
        Top = 94
        Width = 146
        Height = 17
        Alignment = taRightJustify
        AutoSize = False
        Caption = 'come'#231'ado com:'
        Color = clBtnFace
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        TabOrder = 4
      end
      object PALAVRA: TEdit
        Left = 143
        Top = 92
        Width = 103
        Height = 19
        Hint = 'Digite a Palavra Desejada'
        BevelOuter = bvNone
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        OnExit = PALAVRAExit
      end
    end
    object TsOutrosFiltros: TTabSheet
      Caption = 'Outros Filtros'
      ImageIndex = 2
    end
    object TabSheet2: TTabSheet
      Caption = 'Configura'#231#245'es'
      ImageIndex = 2
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 614
        Height = 127
        Align = alTop
        Caption = 'Formato do Relat'#243'rio:'
        TabOrder = 0
        object Label6: TLabel
          Left = 25
          Top = 15
          Width = 114
          Height = 13
          Caption = 'Quantidade de Colunas:'
        end
        object Label7: TLabel
          Left = 228
          Top = 15
          Width = 24
          Height = 13
          Caption = 'Pular'
        end
        object Label8: TLabel
          Left = 311
          Top = 15
          Width = 140
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
          Height = 21
          BevelKind = bkSoft
          Ctl3D = True
          ParentCtl3D = False
          TabOrder = 0
          OnKeyPress = INTCOLKeyPress
        end
        object INTCOL: TEdit
          Left = 262
          Top = 9
          Width = 45
          Height = 21
          BevelKind = bkSoft
          Ctl3D = True
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
          TabOrder = 7
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
          TabOrder = 8
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
      end
    end
  end
  object St_NomRel: TStaticText
    Left = 0
    Top = 0
    Width = 641
    Height = 17
    Align = alTop
    Alignment = taCenter
    BevelInner = bvNone
    BevelOuter = bvNone
    BorderStyle = sbsSunken
    Caption = '.'
    Color = clMoneyGreen
    ParentColor = False
    TabOrder = 3
  end
end
