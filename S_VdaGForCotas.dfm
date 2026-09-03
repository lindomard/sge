object Frm_VdaGForCotas: TFrm_VdaGForCotas
  Left = 33
  Top = 96
  Width = 788
  Height = 375
  Caption = 'Relat'#243'rio de Compras/Cotas por Grupo de  Fornecedores'
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
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 780
    Height = 24
    Align = alTop
    TabOrder = 0
    OnExit = Panel1Exit
    object Label1: TLabel
      Left = 88
      Top = 3
      Width = 97
      Height = 13
      Caption = 'Compras do m'#234's:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 256
      Top = 3
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
    object edt_mescpr: TEdit
      Left = 188
      Top = 1
      Width = 51
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = edt_mescprExit
    end
    object edt_anocpr: TEdit
      Left = 283
      Top = 1
      Width = 51
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
      OnExit = edt_anocprExit
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 24
    Width = 780
    Height = 24
    Align = alTop
    TabOrder = 1
    object Label3: TLabel
      Left = 13
      Top = 3
      Width = 175
      Height = 13
      Caption = 'Comparado as Vendas do m'#234's:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 255
      Top = 2
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
    object lbl_vdaper: TLabel
      Left = 343
      Top = 4
      Width = 60
      Height = 13
      Caption = 'lbl_vdaper'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object edt_mesvda: TEdit
      Left = 189
      Top = 1
      Width = 51
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
    end
    object edt_anovda: TEdit
      Left = 284
      Top = 1
      Width = 51
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 1
    end
  end
  object TPanel
    Left = 0
    Top = 303
    Width = 780
    Height = 41
    Align = alBottom
    TabOrder = 2
    object bbAplicar: TBitBtn
      Left = 3
      Top = 1
      Width = 120
      Height = 40
      Caption = 'Aplicar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = bbAplicarClick
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
    object bbImprimir: TBitBtn
      Left = 277
      Top = 1
      Width = 120
      Height = 40
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
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
      Left = 579
      Top = 1
      Width = 120
      Height = 40
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 48
    Width = 780
    Height = 66
    Align = alTop
    Caption = 'Filtros'
    TabOrder = 3
    object Label6: TLabel
      Left = 7
      Top = 16
      Width = 138
      Height = 13
      Caption = 'Grupo de Fornecedores:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CODGFOR: TEdit
      Left = 149
      Top = 12
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = CODGFORExit
      OnKeyPress = CODGFORKeyPress
    end
    object lbx_codgfor: TListBox
      Left = 210
      Top = 12
      Width = 445
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
    end
    object OMITIR_GFOR: TCheckBox
      Left = 149
      Top = 35
      Width = 57
      Height = 17
      Caption = 'Omitir'
      TabOrder = 2
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 114
    Width = 780
    Height = 189
    ActivePage = TsRelatorio
    Align = alClient
    TabOrder = 4
    object TsFiltros: TTabSheet
      Caption = 'TsFiltros'
      object gb_Resumo: TGroupBox
        Left = 0
        Top = 0
        Width = 772
        Height = 158
        Align = alClient
        Caption = 'Resumo:'
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 768
          Height = 141
          Align = alClient
          DataSource = src_cadgfor
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'CODGFOR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOMGFOR'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERC_LIB'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_LIB'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_AQUI'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERC_AQUI'
              Width = 41
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR_DISP'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PERC_DISP'
              Width = 46
              Visible = True
            end>
        end
      end
    end
    object TsRelatorio: TTabSheet
      Caption = 'TsRelatorio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = -48
        Top = -48
        Width = 794
        Height = 1123
        DataSource = src_cadgfor
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLBand_cabger: TRLBand
          Left = 38
          Top = 133
          Width = 718
          Height = 48
          BandType = btColumnHeader
          object RLSystemInfo1: TRLSystemInfo
            Left = 0
            Top = 0
            Width = 39
            Height = 16
            Align = faLeftTop
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 679
            Top = 0
            Width = 39
            Height = 16
            Align = faRightTop
            Info = itHour
          end
          object RLDBText1: TRLDBText
            Left = 64
            Top = 1
            Width = 578
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
          end
          object RLSystemInfo3: TRLSystemInfo
            Left = 612
            Top = 18
            Width = 73
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'P'#225'gina:'
          end
          object RLSystemInfo4: TRLSystemInfo
            Left = 686
            Top = 18
            Width = 29
            Height = 20
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
          object RLLabel1: TRLLabel
            Left = 1
            Top = 22
            Width = 333
            Height = 16
            Caption = 'Relat'#243'rio de Compras/Cotas por Grupo de Fornecedores.'
          end
        end
        object RLBand_cabinfo: TRLBand
          Left = 38
          Top = 181
          Width = 718
          Height = 19
          AutoSize = True
          BandType = btColumnHeader
          object rlmemo_titulo: TRLMemo
            Left = 4
            Top = 3
            Width = 710
            Height = 16
            Alignment = taCenter
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
        end
        object RLBand_cabdet: TRLBand
          Left = 38
          Top = 200
          Width = 718
          Height = 16
          BandType = btColumnHeader
          object lbl_codgfor: TRLLabel
            Left = 3
            Top = 0
            Width = 66
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'C'#243'digo'
          end
          object lbl_nomgfor: TRLLabel
            Left = 74
            Top = 0
            Width = 224
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'Descri'#231#227'o do Grupo'
          end
          object lbl_perccpr: TRLLabel
            Left = 303
            Top = 0
            Width = 68
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = '% Compra'
            Color = 65408
            ParentColor = False
            Transparent = False
          end
          object lbl_vlrlib: TRLLabel
            Left = 371
            Top = 0
            Width = 90
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'Valor Liberado'
            Color = 65408
            ParentColor = False
            Transparent = False
          end
          object lbl_VlrGasto: TRLLabel
            Left = 461
            Top = 1
            Width = 92
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'Valor ja Gasto'
            Color = 10198015
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object lbl_vlrdisp: TRLLabel
            Left = 592
            Top = 0
            Width = 96
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = 'Valor Dispon'#237'vel'
            Color = 65408
            ParentColor = False
            Transparent = False
          end
          object lbl_PercGasto: TRLLabel
            Left = 554
            Top = 2
            Width = 38
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = '%'
            Color = 10198015
            ParentColor = False
            Transparent = False
          end
          object lbl_Percdisp: TRLLabel
            Left = 682
            Top = 2
            Width = 38
            Height = 14
            Alignment = taCenter
            AutoSize = False
            Caption = '%'
            Color = 65408
            ParentColor = False
            Transparent = False
          end
        end
        object RLBand_det: TRLBand
          Left = 38
          Top = 216
          Width = 718
          Height = 16
          object txt_codgfor: TRLDBText
            Left = 3
            Top = 0
            Width = 66
            Height = 16
            AutoSize = False
            DataField = 'CODGFOR'
            DataSource = src_cadgfor
            Holder = lbl_codgfor
          end
          object txt_nomgfor: TRLDBText
            Left = 74
            Top = 0
            Width = 224
            Height = 16
            AutoSize = False
            DataField = 'NOMGFOR'
            DataSource = src_cadgfor
            Holder = lbl_nomgfor
          end
          object txt_perccpr: TRLDBText
            Left = 303
            Top = 0
            Width = 68
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Color = 65408
            DataField = 'PERC_LIB'
            DataSource = src_cadgfor
            Holder = lbl_perccpr
            ParentColor = False
            Transparent = False
          end
          object txt_vlrlib: TRLDBText
            Left = 371
            Top = 0
            Width = 90
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Color = 65408
            DataField = 'VALOR_LIB'
            DataSource = src_cadgfor
            Holder = lbl_vlrlib
            ParentColor = False
            Transparent = False
          end
          object txt_vlrdisp: TRLDBText
            Left = 592
            Top = 0
            Width = 96
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Color = 65408
            DataField = 'VALOR_DISP'
            DataSource = src_cadgfor
            Holder = lbl_vlrdisp
            ParentColor = False
            Transparent = False
          end
          object txt_VlrGasto: TRLDBText
            Left = 461
            Top = 0
            Width = 92
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Color = 10198015
            DataField = 'VALOR_AQUI'
            DataSource = src_cadgfor
            Holder = lbl_VlrGasto
            ParentColor = False
            Transparent = False
          end
          object txt_PercGasto: TRLDBText
            Left = 554
            Top = 0
            Width = 38
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Color = 10198015
            DataField = 'PERC_AQUI'
            DataSource = src_cadgfor
            Holder = lbl_PercGasto
            ParentColor = False
            Transparent = False
          end
          object txt_Percdisp: TRLDBText
            Left = 682
            Top = 0
            Width = 38
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            Color = 65408
            DataField = 'PERC_AQUI'
            DataSource = src_cadgfor
            Holder = lbl_Percdisp
            ParentColor = False
            Transparent = False
          end
        end
        object RLBand_cablogo: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 95
          BandType = btColumnHeader
          object RLSystemInfo5: TRLSystemInfo
            Left = 608
            Top = 2
            Width = 107
            Height = 16
            AutoSize = False
            Text = 'Data:'
          end
          object RLSystemInfo6: TRLSystemInfo
            Left = 608
            Top = 24
            Width = 106
            Height = 16
            AutoSize = False
            Info = itHour
            Text = 'Horas:'
          end
          object RLDBText3: TRLDBText
            Left = 232
            Top = 21
            Width = 374
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'RAZAO'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLSystemInfo7: TRLSystemInfo
            Left = 608
            Top = 56
            Width = 67
            Height = 20
            Alignment = taRightJustify
            AutoSize = False
            Info = itPageNumber
            Text = 'P'#225'gina:'
          end
          object RLSystemInfo8: TRLSystemInfo
            Left = 676
            Top = 56
            Width = 37
            Height = 20
            AutoSize = False
            Info = itLastPageNumber
            Text = '/'
          end
          object RLImage1: TRLImage
            Left = 5
            Top = 5
            Width = 224
            Height = 84
            Stretch = True
          end
          object RLDBText4: TRLDBText
            Left = 232
            Top = 3
            Width = 374
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'FANTASIA_CAB'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLDBText5: TRLDBText
            Left = 232
            Top = 38
            Width = 374
            Height = 16
            Alignment = taCenter
            AutoSize = False
            DataField = 'E_MAIL'
            DataSource = DM1.Src_Emp
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object RLMemo1: TRLMemo
            Left = 232
            Top = 57
            Width = 374
            Height = 33
            Alignment = taCenter
            AutoSize = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -13
            Font.Name = 'Arial'
            Font.Style = [fsBold]
            Lines.Strings = (
              'Relat'#243'rio de Compras/Cotas por Grupo de Fornecedores')
            ParentFont = False
          end
        end
        object RLBand_final: TRLBand
          Left = 38
          Top = 232
          Width = 718
          Height = 16
          BandType = btSummary
        end
      end
    end
  end
  object mem_cadgfor: TRxMemoryData
    FieldDefs = <
      item
        Name = 'CODGFOR'
        DataType = ftFloat
      end
      item
        Name = 'NOMGFOR'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'VALOR_VDA'
        DataType = ftFloat
      end
      item
        Name = 'PERC_LIB'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_LIB'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_AQUI'
        DataType = ftFloat
      end
      item
        Name = 'PERC_AQUI'
        DataType = ftFloat
      end
      item
        Name = 'VALOR_DISP'
        DataType = ftFloat
      end
      item
        Name = 'PERC_DISP'
        DataType = ftFloat
      end>
    Left = 368
    Top = 65528
    object mem_cadgforCODGFOR: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODGFOR'
    end
    object mem_cadgforNOMGFOR: TStringField
      DisplayLabel = 'Nome do Grupo'
      FieldName = 'NOMGFOR'
      Size = 40
    end
    object mem_cadgforVALOR_VDA: TFloatField
      DisplayLabel = 'Valor Venda'
      FieldName = 'VALOR_VDA'
    end
    object mem_cadgforPERC_LIB: TFloatField
      DisplayLabel = '%Perc.Compra'
      FieldName = 'PERC_LIB'
    end
    object mem_cadgforVALOR_LIB: TFloatField
      DisplayLabel = 'Valor Liberado'
      FieldName = 'VALOR_LIB'
    end
    object mem_cadgforVALOR_AQUI: TFloatField
      DisplayLabel = 'Valor Comprado'
      FieldName = 'VALOR_AQUI'
    end
    object mem_cadgforPERC_AQUI: TFloatField
      DisplayLabel = '%'
      FieldName = 'PERC_AQUI'
    end
    object mem_cadgforVALOR_DISP: TFloatField
      DisplayLabel = 'Valor Disponivel'
      FieldName = 'VALOR_DISP'
    end
    object mem_cadgforPERC_DISP: TFloatField
      DisplayLabel = '%'
      FieldName = 'PERC_DISP'
    end
  end
  object src_cadgfor: TDataSource
    DataSet = mem_cadgfor
    Left = 400
  end
end
