object Frm_PontoCorte: TFrm_PontoCorte
  Left = 39
  Top = 228
  Width = 752
  Height = 499
  Caption = 'Relatorio de Produtos em Ponto de Corte'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 744
    Height = 465
    ActivePage = tsGerais
    Align = alClient
    TabOrder = 0
    object tsGerais: TTabSheet
      Caption = 'Gerais'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 204
        Width = 736
        Height = 233
        Align = alBottom
        DataSource = Src_PontoCorte
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
            FieldName = 'P2CODPRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDNOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PDUND'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDRESERVA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTDORCAM'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ESTOQUE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pontocorte'
            Visible = True
          end>
      end
      object GroupBox1: TGroupBox
        Left = 0
        Top = 0
        Width = 736
        Height = 152
        Align = alTop
        Caption = 'Filtros:'
        TabOrder = 1
        object Label9: TLabel
          Left = 27
          Top = 12
          Width = 78
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Data Inicial'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Label8: TLabel
          Left = 195
          Top = 11
          Width = 78
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Data Final'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Label11: TLabel
          Left = 27
          Top = 30
          Width = 78
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Pedido Inicial'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Label12: TLabel
          Left = 196
          Top = 28
          Width = 78
          Height = 16
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Pedido Final'
          Color = clBtnFace
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Layout = tlCenter
        end
        object Label10: TLabel
          Left = 20
          Top = 49
          Width = 86
          Height = 13
          Caption = 'C'#243'digo do Cliente:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object MDT1: TMaskEdit
          Left = 108
          Top = 10
          Width = 78
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 0
          Text = '  /  /    '
          OnExit = MDT1Exit
        end
        object MDT2: TMaskEdit
          Left = 279
          Top = 10
          Width = 78
          Height = 19
          Ctl3D = False
          EditMask = '!99/99/9999;1; '
          MaxLength = 10
          ParentCtl3D = False
          TabOrder = 1
          Text = '  /  /    '
          OnExit = MDT2Exit
        end
        object NUMINI: TEdit
          Left = 108
          Top = 28
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 2
          OnExit = NUMINIExit
        end
        object NUMFIN: TEdit
          Left = 279
          Top = 28
          Width = 78
          Height = 19
          Ctl3D = False
          ParentCtl3D = False
          TabOrder = 3
          OnExit = NUMFINExit
        end
        object CODCLI: TEdit
          Left = 108
          Top = 46
          Width = 59
          Height = 19
          Hint = 'Informe Codigo do Cliente ou'#13#10'digite o nome p/consultar'
          Ctl3D = False
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
          OnExit = CODCLIExit
          OnKeyPress = CODCLIKeyPress
        end
        object lbx_codcli: TListBox
          Left = 166
          Top = 46
          Width = 460
          Height = 42
          Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
          Color = 13828095
          Ctl3D = False
          ItemHeight = 13
          ParentCtl3D = False
          ParentShowHint = False
          ShowHint = True
          TabOrder = 5
          OnKeyDown = lbx_codcliKeyDown
        end
        object OMITIR_CLI: TCheckBox
          Left = 108
          Top = 68
          Width = 51
          Height = 17
          Caption = 'Omitir'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 6
        end
        object bbAplicar: TBitBtn
          Left = 1
          Top = 107
          Width = 157
          Height = 40
          Caption = '&Aplicar Sele'#231#227'o'
          TabOrder = 8
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
          Left = 281
          Top = 107
          Width = 157
          Height = 46
          Caption = '&Imprimir'
          TabOrder = 9
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
          Left = 532
          Top = 107
          Width = 157
          Height = 40
          Caption = '&Sair'
          TabOrder = 10
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
        object CB_CORTE: TCheckBox
          Left = 108
          Top = 88
          Width = 205
          Height = 17
          Caption = 'Listar Somente com Corte'
          Checked = True
          ParentShowHint = False
          ShowHint = True
          State = cbChecked
          TabOrder = 7
        end
      end
    end
    object tsRelatorio: TTabSheet
      Caption = 'Relat'#243'rio'
      ImageIndex = 1
      object RLReport1: TRLReport
        Left = 4
        Top = 18
        Width = 794
        Height = 1123
        DataSource = Src_PontoCorte
        Degrade.Direction = ddHorizontal
        Degrade.OppositeColor = 6592255
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        object RLBand_cab: TRLBand
          Left = 38
          Top = 38
          Width = 718
          Height = 33
          BandType = btColumnHeader
          object RLDBText1: TRLDBText
            Left = 0
            Top = 0
            Width = 164
            Height = 16
            Align = faLeftTop
            DataField = 'RAZAO_CAB'
            DataSource = DM1.Src_Emp
          end
          object RLSystemInfo1: TRLSystemInfo
            Left = 583
            Top = 0
            Width = 135
            Height = 16
            Align = faRightTop
            Info = itPageNumber
            Text = 'Pagina: '
          end
          object rl_obscab: TRLLabel
            Left = 0
            Top = 16
            Width = 242
            Height = 16
            Caption = 'Rela'#231#227'o de Produtos em Ponto de Corte.'
          end
          object RLSystemInfo2: TRLSystemInfo
            Left = 627
            Top = 17
            Width = 91
            Height = 16
            Align = faRightBottom
            Info = itFullDate
            Text = 'Data:'
          end
        end
        object RLBand_cabgru: TRLBand
          Left = 38
          Top = 71
          Width = 718
          Height = 16
          BandType = btColumnHeader
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object lbl_codpro: TRLLabel
            Left = 4
            Top = -1
            Width = 74
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'C'#243'digo'
            Layout = tlCenter
          end
          object lbl_descricao: TRLLabel
            Left = 78
            Top = 0
            Width = 314
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Descri'#231#227'o'
            Layout = tlCenter
          end
          object lbl_und: TRLLabel
            Left = 391
            Top = -1
            Width = 24
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Und'
            Layout = tlCenter
          end
          object lbl_entradas: TRLLabel
            Left = 492
            Top = 0
            Width = 76
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Qtd.Or'#231'amento'
            Layout = tlCenter
          end
          object lbl_saidas: TRLLabel
            Left = 567
            Top = 0
            Width = 76
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Estoque'
            Layout = tlCenter
          end
          object lbl_saldo: TRLLabel
            Left = 642
            Top = 0
            Width = 76
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Ponto de Corte'
            Layout = tlCenter
          end
          object lbl_reserva: TRLLabel
            Left = 415
            Top = 0
            Width = 76
            Height = 16
            Alignment = taCenter
            AutoSize = False
            Caption = 'Reserva'
            Layout = tlCenter
          end
        end
        object RLBand_detail: TRLBand
          Left = 38
          Top = 87
          Width = 718
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -10
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
          object edt_codpro: TRLDBText
            Left = 4
            Top = 0
            Width = 74
            Height = 16
            AutoSize = False
            DataField = 'P2CODPRO'
            DataSource = Src_PontoCorte
            Holder = lbl_codpro
            Layout = tlCenter
          end
          object edt_descricao: TRLDBText
            Left = 78
            Top = 0
            Width = 314
            Height = 16
            AutoSize = False
            DataField = 'PDNOME'
            DataSource = Src_PontoCorte
            Holder = lbl_descricao
            Layout = tlCenter
          end
          object edt_und: TRLDBText
            Left = 391
            Top = 0
            Width = 24
            Height = 16
            AutoSize = False
            DataField = 'PDUND'
            DataSource = Src_PontoCorte
            Holder = lbl_und
            Layout = tlCenter
          end
          object edt_entradas: TRLDBText
            Left = 492
            Top = 0
            Width = 76
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QTDRESERVA'
            DataSource = Src_PontoCorte
            Holder = lbl_entradas
            Layout = tlCenter
          end
          object edt_saidas: TRLDBText
            Left = 567
            Top = 0
            Width = 76
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'ESTOQUE'
            DataSource = Src_PontoCorte
            Holder = lbl_saidas
            Layout = tlCenter
          end
          object edt_saldo: TRLDBText
            Left = 642
            Top = 0
            Width = 76
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'pontocorte'
            DataSource = Src_PontoCorte
            Holder = lbl_saldo
            Layout = tlCenter
          end
          object edt_reserva: TRLDBText
            Left = 415
            Top = 0
            Width = 76
            Height = 16
            Alignment = taRightJustify
            AutoSize = False
            DataField = 'QTDRESERVA'
            DataSource = Src_PontoCorte
            Holder = lbl_reserva
            Layout = tlCenter
          end
        end
        object RL_Rodape: TRLBand
          Left = 38
          Top = 119
          Width = 718
          Height = 16
          BandType = btSummary
          object lbl_emitido: TRLLabel
            Left = 580
            Top = 0
            Width = 138
            Height = 7
            Align = faRightTop
            Alignment = taRightJustify
            Caption = 'Relatorio Emitido em 17/07/2007 as 13:30'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -7
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
        end
        object RLRodPag: TRLBand
          Left = 38
          Top = 103
          Width = 718
          Height = 16
          BandType = btColumnFooter
        end
      end
    end
  end
  object Qr_PontoCorte: TQuery
    OnCalcFields = Qr_PontoCorteCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select sum(p2qtd) as qtdreserva'
      ',sum(p2qtd) as qtdorcam'
      ',p2codpro'
      ',pdsaldo as estoque'
      ',pdnome,pdund'
      'from cadp02,cadpro'
      'where p2codemp=0'
      'and pdcodpro=p2codpro'
      'group by pdnome,pdund,pdsaldo,p2codpro')
    Left = 472
    Top = 24
    object Qr_PontoCorteQTDRESERVA: TFloatField
      DisplayLabel = 'Reserva'
      FieldName = 'QTDRESERVA'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Qr_PontoCorteQTDORCAM: TFloatField
      DisplayLabel = 'Qtd.Or'#231'amento'
      FieldName = 'QTDORCAM'
      Origin = 'SG_ASSOC.CADP02.P2QTD'
    end
    object Qr_PontoCorteESTOQUE: TFloatField
      DisplayLabel = 'Estoque Atual'
      FieldName = 'ESTOQUE'
      Origin = 'SG_ASSOC.CADPRO.PDSALDO'
    end
    object Qr_PontoCortePDNOME: TStringField
      DisplayLabel = 'Descri'#231#227'o do Produto'
      FieldName = 'PDNOME'
      Origin = 'SG_ASSOC.CADPRO.PDNOME'
      Size = 53
    end
    object Qr_PontoCortePDUND: TStringField
      DisplayLabel = 'Und'
      FieldName = 'PDUND'
      Origin = 'SG_ASSOC.CADPRO.PDUND'
      Size = 3
    end
    object Qr_PontoCorteP2CODPRO: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'P2CODPRO'
      Origin = 'SG_ASSOC.CADP02.P2CODPRO'
    end
    object Qr_PontoCortepontocorte: TFloatField
      DisplayLabel = 'Ponto de Corte'
      FieldKind = fkCalculated
      FieldName = 'pontocorte'
      Calculated = True
    end
  end
  object Src_PontoCorte: TDataSource
    DataSet = Qr_PontoCorte
    Left = 536
    Top = 65528
  end
end
