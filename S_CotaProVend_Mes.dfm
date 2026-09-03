object Frm_CotaProVend_Mes: TFrm_CotaProVend_Mes
  Left = 16
  Top = 109
  Width = 763
  Height = 375
  Caption = 'Cota de Vendas Por Produtos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label12: TLabel
    Left = 23
    Top = 50
    Width = 49
    Height = 13
    Caption = 'Produto:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 193
    Width = 755
    Height = 151
    Align = alClient
    Caption = 'Quotas Anteriores:'
    Ctl3D = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 2
      Top = 112
      Width = 751
      Height = 37
      Hint = 'Navega entre os registros selecionados'
      DataSource = DM4.Src_Ven_CotaMes
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbDelete]
      Align = alBottom
      Hints.Strings = (
        'Primeiro Registro'
        'Registro Anterior'
        'Proximo Registro'
        #218'ltimo Registro')
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 751
      Height = 97
      Align = alClient
      DataSource = DM4.Src_CotaProVend_Mes
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'CPV_CODVEN'
          Title.Alignment = taCenter
          Title.Color = 15654365
          Width = 54
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VNOME'
          Title.Alignment = taCenter
          Title.Color = 15654365
          Width = 187
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPV_MES'
          Title.Alignment = taCenter
          Title.Color = 15654365
          Width = 44
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPV_ANO'
          Title.Alignment = taCenter
          Title.Color = 15654365
          Width = 45
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPV_COTAVLR'
          Title.Alignment = taCenter
          Title.Color = 15654365
          Width = 112
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CPV_COTAQTD'
          Title.Alignment = taCenter
          Title.Color = 15654365
          Width = 99
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PDNOME'
          Visible = True
        end>
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 755
    Height = 193
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 1
    OnChange = PageControl1Change
    object TabSheet1: TTabSheet
      Caption = 'Manutencao individual'
      object Label1: TLabel
        Left = 9
        Top = 8
        Width = 59
        Height = 13
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 39
        Top = 45
        Width = 28
        Height = 13
        Caption = 'M'#234's:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 211
        Top = 45
        Width = 27
        Height = 13
        Caption = 'Ano:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 5
        Top = 63
        Width = 72
        Height = 13
        Caption = 'Valor Quota:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 173
        Top = 62
        Width = 70
        Height = 13
        Caption = 'Quantidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 19
        Top = 26
        Width = 49
        Height = 13
        Caption = 'Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CODVEN: TEdit
        Left = 77
        Top = 6
        Width = 65
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
      end
      object NOMVEN: TEdit
        Left = 141
        Top = 6
        Width = 409
        Height = 19
        TabStop = False
        Color = 16754899
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
      end
      object MES: TEdit
        Left = 77
        Top = 42
        Width = 40
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnExit = MESExit
      end
      object ANO: TEdit
        Left = 245
        Top = 42
        Width = 69
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        OnExit = ANOExit
      end
      object VLRCOTA: TEdit
        Left = 77
        Top = 60
        Width = 88
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        OnExit = VLRCOTAExit
        OnKeyPress = VLRCOTAKeyPress
      end
      object QTDCOTA: TEdit
        Left = 245
        Top = 60
        Width = 69
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 7
        OnExit = QTDCOTAExit
        OnKeyPress = VLRCOTAKeyPress
      end
      object BBGRAVAR: TBitBtn
        Left = 6
        Top = 90
        Width = 125
        Height = 35
        Cursor = crHandPoint
        Hint = 'Gravar pedido que esta sendo editado'
        Caption = '&Gravar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 8
        OnClick = BBGRAVARClick
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
      object BBSAIR: TBitBtn
        Left = 421
        Top = 90
        Width = 125
        Height = 35
        Cursor = crHandPoint
        Hint = 'Sair desta op'#231#227'o'
        Caption = '&Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 9
        OnClick = BBSAIRClick
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
      object CODPRO: TEdit
        Left = 77
        Top = 24
        Width = 65
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        OnExit = CODPROExit
        OnKeyPress = CODPROKeyPress
      end
      object NOMPRO: TEdit
        Left = 141
        Top = 24
        Width = 409
        Height = 19
        TabStop = False
        Color = 16754899
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
    end
    object tsAutomatico: TTabSheet
      Caption = 'Gerar Automaticamente'
      ImageIndex = 1
      object Label6: TLabel
        Left = 9
        Top = 8
        Width = 59
        Height = 13
        Caption = 'Vendedor:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 77
        Top = 61
        Width = 28
        Height = 13
        Caption = 'M'#234's:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 244
        Top = 61
        Width = 27
        Height = 13
        Caption = 'Ano:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 77
        Top = 94
        Width = 28
        Height = 13
        Caption = 'M'#234's:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 244
        Top = 95
        Width = 27
        Height = 13
        Caption = 'Ano:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 18
        Top = 28
        Width = 49
        Height = 13
        Caption = 'Produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object CODVEN_AUT: TEdit
        Left = 77
        Top = 6
        Width = 65
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        OnExit = CODVEN_AUTExit
        OnKeyPress = CODVEN_AUTKeyPress
      end
      object NOMVEN_AUT: TEdit
        Left = 141
        Top = 6
        Width = 409
        Height = 19
        TabStop = False
        Color = 16754899
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 1
        Text = 'Todos...'
      end
      object MES_ORI: TEdit
        Left = 110
        Top = 58
        Width = 40
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 4
        OnExit = MESExit
      end
      object ANO_ORI: TEdit
        Left = 278
        Top = 58
        Width = 69
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 5
        OnExit = ANOExit
      end
      object StaticText1: TStaticText
        Left = 77
        Top = 42
        Width = 270
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Periodo de Origem'
        TabOrder = 6
      end
      object StaticText2: TStaticText
        Left = 77
        Top = 76
        Width = 270
        Height = 17
        Alignment = taCenter
        AutoSize = False
        BorderStyle = sbsSingle
        Caption = 'Destino'
        TabOrder = 7
      end
      object MES_DES: TEdit
        Left = 110
        Top = 92
        Width = 40
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 8
        OnExit = MESExit
      end
      object ANO_DES: TEdit
        Left = 278
        Top = 92
        Width = 69
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 9
        OnExit = ANOExit
      end
      object bbGerar: TBitBtn
        Left = 6
        Top = 122
        Width = 125
        Height = 35
        Cursor = crHandPoint
        Hint = 'Gravar pedido que esta sendo editado'
        Caption = '&Gravar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 10
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
      object bbSair2: TBitBtn
        Left = 421
        Top = 122
        Width = 125
        Height = 35
        Cursor = crHandPoint
        Hint = 'Sair desta op'#231#227'o'
        Caption = '&Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 11
        OnClick = BBSAIRClick
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
      object CODPRO_AUT: TEdit
        Left = 77
        Top = 24
        Width = 65
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 2
        OnExit = CODPRO_AUTExit
        OnKeyPress = CODPRO_AUTKeyPress
      end
      object NOMPRO_AUT: TEdit
        Left = 141
        Top = 24
        Width = 409
        Height = 19
        TabStop = False
        Color = 16754899
        Ctl3D = False
        ParentCtl3D = False
        ReadOnly = True
        TabOrder = 3
      end
    end
  end
end
