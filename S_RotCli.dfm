object Frm_RotCli: TFrm_RotCli
  Left = 130
  Top = 189
  Width = 667
  Height = 348
  Caption = 'Emiss'#227'o do Rotulo de Cliente'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poScreenCenter
  Scaled = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 651
    Height = 310
    ActivePage = tsFiltros
    Align = alClient
    TabOrder = 0
    object tsFiltros: TTabSheet
      Caption = 'Filtros'
      object Label5: TLabel
        Left = 4
        Top = 6
        Width = 117
        Height = 13
        Caption = 'C'#243'digo do Cliente...:'
      end
      object Label1: TLabel
        Left = 0
        Top = 47
        Width = 120
        Height = 13
        Caption = 'C'#243'digo do Vendedor:'
      end
      object Label3: TLabel
        Left = 26
        Top = 85
        Width = 93
        Height = 13
        Caption = 'Qtd. de Copias.:'
      end
      object Label2: TLabel
        Left = 1
        Top = 109
        Width = 119
        Height = 13
        Caption = 'Modelo do Relatorio:'
      end
      object CODCLI: TEdit
        Left = 124
        Top = 2
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnExit = CODCLIExit
        OnKeyPress = CODCLIKeyPress
        OnMouseMove = CODCLIMouseMove
      end
      object OMITIR_CLI: TCheckBox
        Left = 123
        Top = 24
        Width = 63
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnMouseMove = OMITIR_CLIMouseMove
      end
      object ListBox2: TListBox
        Left = 185
        Top = 2
        Width = 460
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 2
        OnKeyDown = ListBox2KeyDown
      end
      object CODVEN: TEdit
        Left = 124
        Top = 43
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 3
        OnExit = CODVENExit
        OnKeyPress = CODVENKeyPress
        OnMouseMove = CODVENMouseMove
      end
      object ListBox1: TListBox
        Left = 185
        Top = 43
        Width = 460
        Height = 42
        Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
        Color = 13828095
        Ctl3D = False
        ItemHeight = 13
        ParentCtl3D = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 4
        OnKeyDown = ListBox1KeyDown
      end
      object OMITIR_VEN: TCheckBox
        Left = 123
        Top = 66
        Width = 59
        Height = 17
        Caption = 'Omitir'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 5
        OnMouseMove = OMITIR_VENMouseMove
      end
      object QTD: TEdit
        Left = 124
        Top = 84
        Width = 62
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 6
        Text = '1'
        OnExit = QTDExit
      end
      object bbImprimir: TBitBtn
        Left = 417
        Top = 260
        Width = 110
        Height = 26
        Cursor = crHandPoint
        Caption = '&Imprimir'
        TabOrder = 8
        OnClick = bbImprimirClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000130B0000130B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
          00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
          8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
          8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
          8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
          03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
          03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
          33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
          33333337FFFF7733333333300000033333333337777773333333}
        NumGlyphs = 2
      end
      object bbSair: TBitBtn
        Left = 537
        Top = 260
        Width = 110
        Height = 26
        Cursor = crHandPoint
        Caption = '&Sair'
        TabOrder = 9
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
      object CB_MODELO: TComboBox
        Left = 124
        Top = 104
        Width = 301
        Height = 21
        BevelKind = bkFlat
        ItemHeight = 13
        ItemIndex = 0
        TabOrder = 7
        Text = 'Modelo 01 Tracidicional 1 Coluna'
        OnClick = CB_MODELOClick
        Items.Strings = (
          'Modelo 01 Tracidicional 1 Coluna'
          'Modelo 02 2 Colunas+Logomarca')
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relat'#243'rios'
      ImageIndex = 1
      TabVisible = False
      object RLReport1: TRLReport
        Left = 8
        Top = 32
        Width = 794
        Height = 1123
        DataSource = Src_Rot
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLDetailGrid1: TRLDetailGrid
          Left = 38
          Top = 38
          Width = 718
          Height = 156
          Borders.Sides = sdCustom
          Borders.DrawLeft = True
          Borders.DrawTop = True
          Borders.DrawRight = True
          Borders.DrawBottom = True
          ColCount = 2
          ColSpacing = 5.000000000000000000
          object RLImage1: TRLImage
            Left = 1
            Top = 1
            Width = 348
            Height = 38
            Align = faTop
            Stretch = True
          end
          object rldb_razsoc: TRLDBText
            Left = 1
            Top = 39
            Width = 348
            Height = 18
            Align = faTop
            DataField = 'RAZAO'
            DataSource = Src_Rot
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText1: TRLDBText
            Left = 1
            Top = 57
            Width = 348
            Height = 18
            Align = faTop
            DataField = 'ENDERECO'
            DataSource = Src_Rot
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText2: TRLDBText
            Left = 1
            Top = 75
            Width = 348
            Height = 18
            Align = faTop
            DataField = 'BAIRRO'
            DataSource = Src_Rot
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText3: TRLDBText
            Left = 1
            Top = 93
            Width = 348
            Height = 18
            Align = faTop
            DataField = 'cepcidadeuf'
            DataSource = Src_Rot
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -15
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText4: TRLDBText
            Left = 103
            Top = 134
            Width = 67
            Height = 16
            Alignment = taRightJustify
            DataField = 'ETIQUETA'
            DataSource = Src_Rot
          end
          object RLLabel1: TRLLabel
            Left = 168
            Top = 134
            Width = 8
            Height = 16
            Caption = '/'
          end
          object RLDBText5: TRLDBText
            Left = 175
            Top = 134
            Width = 64
            Height = 16
            DataField = 'TOT_ETIQ'
            DataSource = Src_Rot
          end
          object RLDBText6: TRLDBText
            Left = 1
            Top = 111
            Width = 348
            Height = 16
            Align = faTop
            AutoSize = False
            DataField = 'CONTATO'
            DataSource = Src_Rot
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
      end
    end
    object TsLogoMarcas: TTabSheet
      Caption = 'Logomarcas Valido Somente para o Modelo 02'
      ImageIndex = 2
      object logolpreco: TImage
        Left = 0
        Top = 0
        Width = 651
        Height = 105
        Align = alTop
        Stretch = True
      end
      object bbAdquirir: TBitBtn
        Left = 3
        Top = 168
        Width = 207
        Height = 50
        Hint = 'Busca a Imagem'
        Caption = '&Adquirir figuras'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        OnClick = bbAdquirirClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
          333333333337FF3333333333330003333333333333777F333333333333080333
          3333333F33777FF33F3333B33B000B33B3333373F777773F7333333BBB0B0BBB
          33333337737F7F77F333333BBB0F0BBB33333337337373F73F3333BBB0F7F0BB
          B333337F3737F73F7F3333BB0FB7BF0BB3333F737F37F37F73FFBBBB0BF7FB0B
          BBB3773F7F37337F377333BB0FBFBF0BB333337F73F333737F3333BBB0FBF0BB
          B3333373F73FF7337333333BBB000BBB33333337FF777337F333333BBBBBBBBB
          3333333773FF3F773F3333B33BBBBB33B33333733773773373333333333B3333
          333333333337F33333333333333B333333333333333733333333}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
      object bbExcImagem: TBitBtn
        Left = 266
        Top = 168
        Width = 207
        Height = 50
        Hint = 'Limpa a Imagem'
        Caption = '&Excluir a figura'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 1
        OnClick = bbExcImagemClick
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00500005000555
          555557777F777555F55500000000555055557777777755F75555005500055055
          555577F5777F57555555005550055555555577FF577F5FF55555500550050055
          5555577FF77577FF555555005050110555555577F757777FF555555505099910
          555555FF75777777FF555005550999910555577F5F77777775F5500505509990
          3055577F75F77777575F55005055090B030555775755777575755555555550B0
          B03055555F555757575755550555550B0B335555755555757555555555555550
          BBB35555F55555575F555550555555550BBB55575555555575F5555555555555
          50BB555555555555575F555555555555550B5555555555555575}
        Layout = blGlyphTop
        NumGlyphs = 2
      end
    end
  end
  object opd1: TOpenPictureDialog
    DefaultExt = '*.JPG'
    FileName = 
      'C:\Arquivos de programas\Arquivos comuns\Microsoft Shared\Papel ' +
      'de carta\Plano de fundo Milho.jpg'
    Filter = 'All (*.jpeg; *.jpg)|*.JPEG;*.JPG'
    Left = 360
    Top = 16
  end
  object Src_Rot: TDataSource
    DataSet = Tb_Rot
    Left = 250
    Top = 40
  end
  object Tb_Rot: TQuery
    OnCalcFields = Tb_RotCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'Select * from TMP00001')
    Left = 248
    Top = 80
    object Tb_RotCODIGO: TFloatField
      FieldName = 'CODIGO'
      Origin = 'SG_ASSOC.TMP00001.CODIGO'
    end
    object Tb_RotRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'SG_ASSOC.TMP00001.RAZAO'
      Size = 40
    end
    object Tb_RotFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'SG_ASSOC.TMP00001.FANTASIA'
      Size = 40
    end
    object Tb_RotENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'SG_ASSOC.TMP00001.ENDERECO'
      Size = 40
    end
    object Tb_RotCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'SG_ASSOC.TMP00001.CIDADE'
      Size = 30
    end
    object Tb_RotUF: TStringField
      FieldName = 'UF'
      Origin = 'SG_ASSOC.TMP00001.UF'
      Size = 2
    end
    object Tb_RotCEP: TStringField
      FieldName = 'CEP'
      Origin = 'SG_ASSOC.TMP00001.CEP'
      Size = 8
    end
    object Tb_RotFONE: TStringField
      FieldName = 'FONE'
      Origin = 'SG_ASSOC.TMP00001.FONE'
      Size = 16
    end
    object Tb_RotETIQUETA: TFloatField
      FieldName = 'ETIQUETA'
      Origin = 'SG_ASSOC.TMP00001.ETIQUETA'
    end
    object Tb_RotTOT_ETIQ: TFloatField
      FieldName = 'TOT_ETIQ'
      Origin = 'SG_ASSOC.TMP00001.TOT_ETIQ'
    end
    object Tb_RotBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object Tb_Rotcepcidadeuf: TStringField
      FieldKind = fkCalculated
      FieldName = 'cepcidadeuf'
      Size = 60
      Calculated = True
    end
    object Tb_Rotenderbairro: TStringField
      FieldKind = fkCalculated
      FieldName = 'enderbairro'
      Size = 80
      Calculated = True
    end
    object Tb_RotCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 40
    end
  end
end
