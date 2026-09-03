object Frm_CodBarSeq: TFrm_CodBarSeq
  Left = 75
  Top = 212
  Width = 704
  Height = 424
  Caption = 'Gera'#231#227'o de C'#243'digo de Barras Automaticas'
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
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 688
    Height = 386
    ActivePage = tsCadastros
    Align = alClient
    TabOrder = 0
    object tsCadastros: TTabSheet
      Caption = 'Geral'
      object Label1: TLabel
        Left = 0
        Top = 0
        Width = 680
        Height = 35
        Align = alTop
        Alignment = taCenter
        Caption = 'Gera'#231#227'o de C'#243'digos de Barras Automaticas'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -30
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
      end
      object Label2: TLabel
        Left = 39
        Top = 51
        Width = 66
        Height = 13
        Caption = 'C'#243'digo Inicial:'
      end
      object Label3: TLabel
        Left = 488
        Top = 51
        Width = 61
        Height = 13
        Caption = 'C'#243'digo Final:'
      end
      object lbl_tamanho: TLabel
        Left = 7
        Top = 70
        Width = 99
        Height = 13
        Caption = 'Tamanho do C'#243'digo:'
      end
      object Label4: TLabel
        Left = 388
        Top = 73
        Width = 137
        Height = 13
        Caption = 'Modelo do C'#243'digo de Barras:'
      end
      object edt_codini: TEdit
        Left = 110
        Top = 48
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 0
        Text = '1'
        OnExit = edt_codiniExit
      end
      object edt_codfin: TEdit
        Left = 560
        Top = 48
        Width = 121
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 1
        Text = '20'
        OnExit = edt_codfinExit
      end
      object bbImprimir: TBitBtn
        Left = 2
        Top = 112
        Width = 169
        Height = 42
        Caption = '&Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
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
        Left = 512
        Top = 117
        Width = 169
        Height = 42
        Caption = '&Sair'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
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
      object CB_VALORES: TCheckBox
        Left = 6
        Top = 92
        Width = 97
        Height = 17
        Caption = 'Emitir Valores'
        Checked = True
        State = cbChecked
        TabOrder = 2
      end
      object edt_tamcod: TEdit
        Left = 110
        Top = 68
        Width = 66
        Height = 19
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        Text = '10'
        OnExit = edt_tamcodExit
      end
      object CB_ZEROESQ: TCheckBox
        Left = 187
        Top = 69
        Width = 150
        Height = 17
        Caption = 'Zero a Esquerda'
        Checked = True
        State = cbChecked
        TabOrder = 4
      end
      object CB_TIPOCODBAR: TComboBox
        Left = 536
        Top = 72
        Width = 145
        Height = 21
        BevelKind = bkSoft
        Ctl3D = True
        ItemHeight = 13
        ItemIndex = 0
        ParentCtl3D = False
        Sorted = True
        TabOrder = 5
        Text = '2 Intercalado de 5'
        Items.Strings = (
          '2 Intercalado de 5'
          'Code39'
          'Ean13'
          'Ean8')
      end
      object btn_imprimir: TButton
        Left = 232
        Top = 208
        Width = 89
        Height = 25
        Caption = '&Imprimir'
        TabOrder = 8
        OnClick = btn_imprimirClick
      end
      object Valores: TDBGrid
        Left = 0
        Top = 240
        Width = 320
        Height = 120
        DataSource = Src_Etiqueta
        TabOrder = 9
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnDblClick = ValoresDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CODBAR'
            Width = 301
            Visible = True
          end>
      end
      object Nav_Valores: TDBNavigator
        Left = 8
        Top = 208
        Width = 222
        Height = 25
        DataSource = Src_Etiqueta
        VisibleButtons = [nbPrior, nbNext, nbInsert, nbDelete, nbPost, nbRefresh]
        TabOrder = 10
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relatorio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = 8
        Top = 24
        Width = 794
        Height = 1123
        DataSource = Src_Etiqueta
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLDetailGrid1: TRLDetailGrid
          Left = 38
          Top = 38
          Width = 718
          Height = 75
          ColCount = 3
          object RLDBBarcode1: TRLDBBarcode
            Left = 8
            Top = 16
            Width = 218
            Height = 49
            Alignment = taCenter
            AutoSize = False
            CheckSumMethod = cmNone
            DataField = 'CODBAR'
            DataSource = Src_Etiqueta
            Margins.LeftMargin = 1.000000000000000000
            Margins.RightMargin = 1.000000000000000000
            ShowText = boCode
          end
        end
      end
    end
  end
  object mem_etiqueta: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CODBAR'
        DataType = ftString
        Size = 20
      end>
    BeforePost = mem_etiquetaBeforePost
    Left = 452
    Top = 232
    object mem_etiquetaCODBAR: TStringField
      FieldName = 'CODBAR'
    end
  end
  object Src_Etiqueta: TDataSource
    DataSet = mem_etiqueta
    Left = 372
    Top = 320
  end
  object RLPDFFilter1: TRLPDFFilter
    DocumentInfo.Creator = 'FortesReport v3.23 \251 Copyright '#169' 1999-2004 Fortes Inform'#225'tica'
    ViewerOptions = []
    FontEncoding = feNoEncoding
    DisplayName = 'Documento PDF'
    Left = 524
    Top = 192
  end
end
