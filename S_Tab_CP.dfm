object Frm_Tab_CP: TFrm_Tab_CP
  Left = 74
  Top = 31
  Width = 641
  Height = 381
  ActiveControl = CODFOR
  Caption = 'Visualiza'#231#227'o/impress'#227'o de relatorios de Contas a pagar'
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
    Top = 0
    Width = 633
    Height = 306
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 7
      Top = 232
      Width = 98
      Height = 13
      Caption = 'Refer'#234'ncia: M'#234's:'
      Visible = False
    end
    object Label2: TLabel
      Left = 161
      Top = 232
      Width = 27
      Height = 13
      Caption = 'Ano:'
      Visible = False
    end
    object Label3: TLabel
      Left = 3
      Top = 164
      Width = 134
      Height = 13
      Caption = 'C'#243'digo do Fornecedor.:'
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 251
      Width = 631
      Height = 54
      Align = alBottom
      Caption = 'Progresso da Montagem do Relatorio:'
      TabOrder = 0
      Visible = False
      object Gauge1: TGauge
        Left = 2
        Top = 15
        Width = 627
        Height = 37
        Align = alClient
        Progress = 0
      end
    end
    object RG_PERIODO: TGroupBox
      Left = 5
      Top = 186
      Width = 626
      Height = 38
      Caption = 'Per'#237'odo:'
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
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
      Top = 229
      Width = 45
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 2
      Visible = False
      OnExit = MESExit
      OnKeyPress = INTCOLKeyPress
    end
    object ANO: TEdit
      Left = 191
      Top = 229
      Width = 45
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 3
      Visible = False
      OnKeyPress = INTCOLKeyPress
    end
    object CODFOR: TEdit
      Left = 139
      Top = 162
      Width = 60
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      OnExit = CODFORExit
      OnKeyPress = CODFORKeyPress
    end
    object NOMFOR: TEdit
      Left = 204
      Top = 161
      Width = 295
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 5
      Text = 'Todos...'
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 18
      Width = 631
      Height = 127
      Align = alTop
      Caption = 'Formato do Relat'#243'rio:'
      TabOrder = 6
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
    object St_NomRel: TStaticText
      Left = 1
      Top = 1
      Width = 631
      Height = 17
      Align = alTop
      Alignment = taCenter
      BevelInner = bvNone
      BevelOuter = bvNone
      BorderStyle = sbsSunken
      Caption = '.'
      Color = clMoneyGreen
      ParentColor = False
      TabOrder = 7
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 306
    Width = 633
    Height = 41
    Align = alBottom
    TabOrder = 1
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
end
