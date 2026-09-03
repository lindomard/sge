object Frm_Cont_Serv: TFrm_Cont_Serv
  Left = 179
  Top = 89
  Width = 1096
  Height = 623
  Caption = 'Contratos de Presta'#231#245'es de Servi'#231'os'
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
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 1088
    Height = 140
    Align = alTop
    Caption = 'Dados Para Sele'#231#227'o'
    TabOrder = 0
    object Label5: TLabel
      Left = 8
      Top = 21
      Width = 95
      Height = 13
      Caption = 'C'#243'digo do Cliente...:'
    end
    object Label1: TLabel
      Left = 10
      Top = 118
      Width = 164
      Height = 13
      Caption = 'Para Contratos que Vencem Entre:'
    end
    object Label2: TLabel
      Left = 222
      Top = 117
      Width = 16
      Height = 13
      Caption = 'At'#233
    end
    object Label22: TLabel
      Left = 30
      Top = 53
      Width = 73
      Height = 13
      Caption = 'Cobran'#231'a/Bco:'
    end
    object CODCLI: TEdit
      Left = 107
      Top = 15
      Width = 62
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnExit = CODCLIExit
      OnKeyPress = CODCLIKeyPress
    end
    object lbx_codcli: TListBox
      Left = 168
      Top = 15
      Width = 460
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Remover Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnKeyDown = lbx_codcliKeyDown
    end
    object OMITIR_CLI: TCheckBox
      Left = 107
      Top = 37
      Width = 59
      Height = 17
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
    end
    object DIAVI: TEdit
      Left = 178
      Top = 114
      Width = 39
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnExit = DIAVIExit
    end
    object DIAVF: TEdit
      Left = 244
      Top = 115
      Width = 39
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnExit = DIAVFExit
    end
    object bbSelecionar: TBitBtn
      Left = 285
      Top = 111
      Width = 140
      Height = 24
      Hint = 'Selecionar os Contratos'#13#10'de Acordo com as'#13#10'Op'#231#245'es Digitadas'
      Caption = '&Selecionar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = bbSelecionarClick
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
    object bbSair: TBitBtn
      Left = 578
      Top = 110
      Width = 140
      Height = 24
      Hint = 'Sair deste Programa'
      Caption = '&Sair'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
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
    object CODCOB: TEdit
      Left = 107
      Top = 53
      Width = 62
      Height = 19
      Hint = 'Digite o C'#243'digo a Ser Filtrado'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnExit = CODCOBExit
      OnKeyPress = CODCOBKeyPress
    end
    object lbx_codcob: TListBox
      Left = 168
      Top = 56
      Width = 460
      Height = 42
      Hint = 'Use a Tecla - Delete P/ Removier Codigo Selecionado....'
      Color = 13828095
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnKeyDown = lbx_codcobKeyDown
    end
    object OMITIR_COB: TCheckBox
      Left = 111
      Top = 74
      Width = 57
      Height = 17
      Hint = 'Se Marcado os C'#243'digos'#13#10'Selecionados n'#227'o Ser'#227'o'#13#10'Impressos'
      Caption = 'Omitir'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
    end
    object gb_mees: TGroupBox
      Left = 736
      Top = 15
      Width = 350
      Height = 123
      Align = alRight
      Caption = 'Faturar para o(s) Mes(es):'
      TabOrder = 10
      object DBGrid2: TDBGrid
        Left = 2
        Top = 15
        Width = 346
        Height = 81
        Align = alClient
        DataSource = src_meses
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnExit = DBGrid2Exit
        Columns = <
          item
            Expanded = False
            FieldName = 'fat_mes_vcto'
            Width = 58
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fat_ano_vcto'
            Width = 66
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fat_mes_comp'
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fat_ano_comp'
            Visible = True
          end>
      end
      object DBNavigator1: TDBNavigator
        Left = 2
        Top = 96
        Width = 346
        Height = 25
        DataSource = src_meses
        VisibleButtons = [nbDelete, nbPost, nbCancel]
        Align = alBottom
        TabOrder = 1
      end
    end
    object bbExportarExcel: TBitBtn
      Left = 435
      Top = 111
      Width = 140
      Height = 24
      Hint = 'Selecionar os Contratos'#13#10'de Acordo com as'#13#10'Op'#231#245'es Digitadas'
      Caption = 'Exportar Excel'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = bbExportarExcelClick
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
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 513
    Width = 1088
    Height = 79
    Align = alBottom
    Caption = 'Dados p/Faturar'
    TabOrder = 1
    object Label3: TLabel
      Left = 42
      Top = 13
      Width = 195
      Height = 13
      Caption = 'Pasta Para Temporaria dos  documentos:'
    end
    object lbl_tempo: TLabel
      Left = 240
      Top = 36
      Width = 650
      Height = 41
      Alignment = taCenter
      AutoSize = False
      Color = 14155775
      ParentColor = False
      Layout = tlCenter
      WordWrap = True
    end
    object bbFaturar: TBitBtn
      Left = 914
      Top = 23
      Width = 150
      Height = 49
      Hint = 'Gera Pedido de Todos'#13#10'os Contratos Selecionados'
      Caption = '&Faturar'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      OnClick = bbFaturarClick
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
        55555555FFFFFFFF5555555000000005555555577777777FF555550999999900
        55555575555555775F55509999999901055557F55555557F75F5001111111101
        105577FFFFFFFF7FF75F00000000000011057777777777775F755070FFFFFF0F
        01105777F555557F7FF75500FFFFFF0F00105577F555FF7F77575550FF70000F
        0F0055575FF777757F775555000FFFFF0F005555777555FF7F77555550FF7000
        0F055555575FF777757F555555000FFFFF05555555777555FF7F55555550FF70
        0005555555575FF7777555555555000555555555555577755555555555555555
        5555555555555555555555555555555555555555555555555555}
      NumGlyphs = 2
    end
    object cb_emitir_documento: TCheckBox
      Left = 40
      Top = 30
      Width = 153
      Height = 17
      Caption = 'Emitir Documento'
      Checked = True
      State = cbChecked
      TabOrder = 1
    end
    object cb_enviar_email_boleto: TCheckBox
      Left = 40
      Top = 49
      Width = 153
      Height = 17
      Caption = 'Emitir email do boleto'
      Checked = True
      State = cbChecked
      TabOrder = 2
    end
    object edt_pastatemporaria: TEdit
      Left = 240
      Top = 13
      Width = 650
      Height = 19
      Hint = 'Digite o C'#243'digo a Ser Filtrado'
      Ctl3D = False
      ParentCtl3D = False
      ParentShowHint = False
      ShowHint = True
      TabOrder = 3
      OnExit = edt_pastatemporariaExit
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 140
    Width = 1088
    Height = 373
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Contratos'
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 1080
        Height = 345
        Align = alClient
        Caption = 'Contratos Selecionados'
        TabOrder = 0
        object DBGrid1: TDBGrid
          Left = 2
          Top = 15
          Width = 1076
          Height = 274
          Align = alClient
          DataSource = Src_CServ01
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          OnDblClick = DBGrid1DblClick
          OnKeyDown = DBGrid1KeyDown
          Columns = <
            item
              Expanded = False
              FieldName = 'OK'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Wingdings 2'
              Font.Style = []
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 26
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CS_CODBCO_PREF'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 87
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CS_CODEMP_PREF'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 104
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CS_CODCLI'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CRAZAO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 213
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATVEN'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 57
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL_VALOR_CONT'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 57
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL_VALOR_CONT_DESC'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 59
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TOTAL_VALOR_LIQUIDO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 89
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'PDNOME'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Width = 106
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CS_DATCON'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CS_DATVAL'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CS_CODSER'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CS_TIPO'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CS_STATUS'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CS_DIAV'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CS_MESV'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'CNOMBCO01'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_FATURA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_INICIO_COMPETENCIA'
              Title.Alignment = taCenter
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWindowText
              Title.Font.Height = -11
              Title.Font.Name = 'MS Sans Serif'
              Title.Font.Style = [fsBold]
              Visible = True
            end>
        end
        object lbl_totger: TStaticText
          Left = 2
          Top = 326
          Width = 1076
          Height = 17
          Align = alBottom
          Alignment = taCenter
          BorderStyle = sbsSingle
          Caption = '.'
          TabOrder = 1
        end
        object lbl_totsel: TStaticText
          Left = 2
          Top = 309
          Width = 1076
          Height = 17
          Align = alBottom
          Alignment = taCenter
          BorderStyle = sbsSingle
          Caption = '.'
          TabOrder = 2
        end
        object Panel1: TPanel
          Left = 2
          Top = 289
          Width = 1076
          Height = 20
          Align = alBottom
          TabOrder = 3
          object bbMarcar: TBitBtn
            Left = -16
            Top = 0
            Width = 150
            Height = 21
            Hint = 'Selecionar os Contratos'#13#10'de Acordo com as'#13#10'Op'#231#245'es Digitadas'
            Caption = 'Marcar Todos'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 0
            OnClick = bbMarcarClick
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
          object BitBtn2: TBitBtn
            Left = 469
            Top = 0
            Width = 150
            Height = 21
            Hint = 'Selecionar os Contratos'#13#10'de Acordo com as'#13#10'Op'#231#245'es Digitadas'
            Caption = 'Desmarcar Todos'
            ParentShowHint = False
            ShowHint = True
            TabOrder = 1
            OnClick = BitBtn2Click
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
    object tsAliquotas: TTabSheet
      Caption = 'Aliquotas'
      ImageIndex = 1
      object DBGrid_CONFIG: TDBGrid
        Left = 0
        Top = 0
        Width = 1080
        Height = 345
        Align = alClient
        DataSource = src_aliquotas
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'tipo_reg'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'al_tabicm'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'al_aliqredut'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'al_IcmsTrib'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'al_icmsRet'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'al_stIcmsCred'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'al_stIcmsDeb'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'al_stIVA_Ina'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'al_stIVA_Pos'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'al_stIVA_Neg'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cfo_Indus_Ret'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cfo_Indus_Trib'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cfo_Indus_Isento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cfo_rev_Ret'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cfo_rev_Trib'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cfo_rev_Isento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cfo_SubEcf_Ret'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cfo_SubEcf_Trib'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Cfo_SubEcf_Isento'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'al_cofins'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'modBcST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'al_stAliqRed'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'al_inss'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'al_inss_pred'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'al_irrf'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'al_irrf_pred'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'al_repasse'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'al_issqn'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'cfo_servico'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'al_pis'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'al_credsn'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'al_combate_pobreza'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'al_icmscred_destino'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'al_icms_destino'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'deduzir_icms_bc_pis_cofins'
            Visible = True
          end>
      end
    end
  end
  object Tb_CServ01: TQuery
    CachedUpdates = True
    AfterEdit = Tb_CServ01AfterEdit
    AfterPost = Tb_CServ01AfterPost
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      
        'Select '#39'X'#39' AS OK,'#39'12/2015'#39' AS ORIGEM, CS_DATCON AS DATVEN, CADCS' +
        'ER01.*,PDNOME,CRAZAO,CNOMBCO01 ,NVL( ( select  sum(round(((VALOR' +
        '_INDEX*CSS_PERCINDEX)/100),2))'
      
        ' as Total_valor_cont  from ( Select CSS_PERCINDEX ,case when  (S' +
        'ELECT max(IVLRCOMCPR) '
      
        ' from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE' +
        ') )   is null '
      
        ' then (SELECT min(IVLRCOMCPR) from CADIND where ICODMOE=CSS_CODI' +
        'ND and IDATA>TO_DATE(SYSDATE) ) else  (SELECT max(IVLRCOMCPR) '
      
        ' from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE' +
        ') ) end  as valor_index  '
      
        ' from CADCSER01_SERV  where CSS_CODCLI=CS_CODCLI  AND CSS_CHAVE=' +
        'CS_CHAVE and CSS_CODEMP=CS_CODEMP  )  ),0) '
      
        ' AS TOTAL_VALOR_CONT ,NVL( ( select sum(round( (round(((VALOR_IN' +
        'DEX*CSS_PERCINDEX)/100),2)*CSS_PDESCFIN/100),2))     '
      
        ' as Total_valor_cont_desc  from ( Select CSS_PERCINDEX,CSS_PDESC' +
        'FIN ,case when  (SELECT max(IVLRCOMCPR) from '
      
        ' CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE) )  ' +
        ' is null then (SELECT min(IVLRCOMCPR) '
      
        ' from CADIND where ICODMOE=CSS_CODIND and IDATA>TO_DATE(SYSDATE)' +
        ' ) else  (SELECT max(IVLRCOMCPR) from CADIND '
      
        ' where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE) ) end  as ' +
        'valor_index  from CADCSER01_SERV  '
      
        ' where CSS_CODCLI=CS_CODCLI  AND CSS_CHAVE=CS_CHAVE and CSS_CODE' +
        'MP=CS_CODEMP  )  ),0) AS TOTAL_VALOR_CONT_desc '
      
        ' ,NVL( ( select sum(round(((VALOR_INDEX*CSS_PERCINDEX)/100),2)-r' +
        'ound( (round(((VALOR_INDEX*CSS_PERCINDEX)/100),2)*CSS_PDESCFIN/1' +
        '00),'
      
        ' 2))     as Total_valor_liq  from ( Select CSS_PERCINDEX,CSS_PDE' +
        'SCFIN ,case when  (SELECT max(IVLRCOMCPR) '
      
        ' from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE' +
        ') )   is null then (SELECT min(IVLRCOMCPR) '
      
        ' from CADIND where ICODMOE=CSS_CODIND and IDATA>TO_DATE(SYSDATE)' +
        ' ) else  (SELECT max(IVLRCOMCPR) '
      
        ' from CADIND where ICODMOE=CSS_CODIND and IDATA<=TO_DATE(SYSDATE' +
        ') ) end  as valor_index  '
      
        ' from CADCSER01_SERV  where CSS_CODCLI=CS_CODCLI  AND CSS_CHAVE=' +
        'CS_CHAVE and CSS_CODEMP=CS_CODEMP  )  ),0) '
      
        ' AS TOTAL_VALOR_liquido ,nvl( (select sum(nvl(CSS_VALORLIC,0)) f' +
        'rom CADCSER01_SERV where CSS_CODCLI=CS_CODCLI  '
      
        ' AND CSS_CHAVE=CS_CHAVE and CSS_CODEMP=CS_CODEMP),0) AS TOTAL_LI' +
        'C  from CADCSER01,CADPRO,CADCLI where PDCODPRO(+)=CS_CODSER '
      ' AND CCODCLI=CS_CODCLI')
    UpdateObject = U_CServ01
    Left = 72
    Top = 192
    object Tb_CServ01OK: TStringField
      DisplayLabel = 'Sel'
      FieldName = 'OK'
      FixedChar = True
      Size = 1
    end
    object Tb_CServ01CS_DATCON: TDateTimeField
      DisplayLabel = 'Dt.Contrato'
      FieldName = 'CS_DATCON'
    end
    object Tb_CServ01CS_DATVAL: TDateTimeField
      DisplayLabel = 'Dt.Validade'
      FieldName = 'CS_DATVAL'
    end
    object Tb_CServ01CS_CODSER: TFloatField
      DisplayLabel = 'C'#243'd.Serv.'
      FieldName = 'CS_CODSER'
    end
    object Tb_CServ01CS_TIPO: TFloatField
      DisplayLabel = 'Tipo'
      FieldName = 'CS_TIPO'
    end
    object Tb_CServ01CS_STATUS: TFloatField
      DisplayLabel = 'Status'
      FieldName = 'CS_STATUS'
    end
    object Tb_CServ01CS_DIAV: TFloatField
      DisplayLabel = 'Dia Vcto.'
      FieldName = 'CS_DIAV'
    end
    object Tb_CServ01CS_MESV: TFloatField
      DisplayLabel = 'M'#234's Vcto.'
      FieldName = 'CS_MESV'
    end
    object Tb_CServ01CRAZAO: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'CRAZAO'
      Size = 40
    end
    object Tb_CServ01PDNOME: TStringField
      DisplayLabel = 'Nome do Servi'#231'o'
      FieldName = 'PDNOME'
      Size = 53
    end
    object Tb_CServ01CNOMBCO01: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'CNOMBCO01'
      Size = 40
    end
    object Tb_CServ01CS_CODEMP: TFloatField
      FieldName = 'CS_CODEMP'
    end
    object Tb_CServ01CS_CHAVE: TFloatField
      FieldName = 'CS_CHAVE'
    end
    object Tb_CServ01CS_CODUSR_INC: TFloatField
      FieldName = 'CS_CODUSR_INC'
    end
    object Tb_CServ01CS_NOMUSR_INC: TStringField
      FieldName = 'CS_NOMUSR_INC'
      Size = 40
    end
    object Tb_CServ01CS_DATHOR_INC: TDateTimeField
      FieldName = 'CS_DATHOR_INC'
    end
    object Tb_CServ01CS_CODUSR_ALT: TFloatField
      FieldName = 'CS_CODUSR_ALT'
    end
    object Tb_CServ01CS_NOMUSR_ALT: TStringField
      FieldName = 'CS_NOMUSR_ALT'
      Size = 40
    end
    object Tb_CServ01CS_DATHOR_ALT: TDateTimeField
      FieldName = 'CS_DATHOR_ALT'
    end
    object Tb_CServ01CS_FORMAPAG: TMemoField
      FieldName = 'CS_FORMAPAG'
      BlobType = ftMemo
      Size = 4000
    end
    object Tb_CServ01CS_NUMPROPOSTA: TStringField
      FieldName = 'CS_NUMPROPOSTA'
    end
    object Tb_CServ01CS_REPLEGAL: TStringField
      FieldName = 'CS_REPLEGAL'
      Size = 60
    end
    object Tb_CServ01CS_REPLEGAL_SEXO: TStringField
      FieldName = 'CS_REPLEGAL_SEXO'
      Size = 1
    end
    object Tb_CServ01CS_REPLEGAL_CPF: TStringField
      FieldName = 'CS_REPLEGAL_CPF'
      Size = 14
    end
    object Tb_CServ01CS_REPLEGAL_RG: TStringField
      FieldName = 'CS_REPLEGAL_RG'
      Size = 60
    end
    object Tb_CServ01TOTAL_VALOR_CONT: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'TOTAL_VALOR_CONT'
    end
    object Tb_CServ01TOTAL_VALOR_CONT_DESC: TFloatField
      DisplayLabel = 'Desc.Fin'
      FieldName = 'TOTAL_VALOR_CONT_DESC'
    end
    object Tb_CServ01TOTAL_VALOR_LIQUIDO: TFloatField
      DisplayLabel = 'Valor Liquido'
      FieldName = 'TOTAL_VALOR_LIQUIDO'
    end
    object Tb_CServ01TOTAL_LIC: TFloatField
      FieldName = 'TOTAL_LIC'
    end
    object Tb_CServ01ORIGEM: TStringField
      FieldName = 'ORIGEM'
      FixedChar = True
      Size = 7
    end
    object Tb_CServ01DATVEN: TDateTimeField
      DisplayLabel = 'Dt.Vcto'
      FieldName = 'DATVEN'
    end
    object Tb_CServ01CS_CODCLI: TFloatField
      DisplayLabel = 'C'#243'd.Cliente'
      FieldName = 'CS_CODCLI'
    end
    object Tb_CServ01CCODVEN: TFloatField
      FieldName = 'CCODVEN'
    end
    object Tb_CServ01CS_CODBCO_PREF: TFloatField
      DisplayLabel = 'Banco Faturar'
      FieldName = 'CS_CODBCO_PREF'
    end
    object Tb_CServ01CS_TIPO_DOCUMENTO: TStringField
      FieldName = 'CS_TIPO_DOCUMENTO'
    end
    object Tb_CServ01CEMAIL: TStringField
      FieldName = 'CEMAIL'
      Size = 254
    end
    object Tb_CServ01CS_CODEMP_PREF: TFloatField
      DisplayLabel = 'Empresa Faturar'
      FieldName = 'CS_CODEMP_PREF'
    end
    object Tb_CServ01DATA_FATURA: TDateTimeField
      FieldName = 'DATA_FATURA'
    end
    object Tb_CServ01DATA_INICIO_COMPETENCIA: TDateTimeField
      FieldName = 'DATA_INICIO_COMPETENCIA'
    end
    object Tb_CServ01CWHATSAPP: TStringField
      FieldName = 'CWHATSAPP'
    end
  end
  object Src_CServ01: TDataSource
    DataSet = Tb_CServ01
    Left = 120
    Top = 208
  end
  object U_CServ01: TUpdateSQL
    ModifySQL.Strings = (
      'update CADCSER01'
      'set'
      '  OK = :OK'
      'where'
      '  OK = :OLD_OK and'
      '  CS_CODCLI = :OLD_CS_CODCLI and'
      '  CS_CODSER = :OLD_CS_CODSER')
    InsertSQL.Strings = (
      'insert into CADCSER01'
      '  (OK)'
      'values'
      '  (:OK)')
    DeleteSQL.Strings = (
      'delete from CADCSER01'
      'where'
      '  OK = :OLD_OK and'
      '  CS_CODCLI = :OLD_CS_CODCLI and'
      '  CS_CODSER = :OLD_CS_CODSER')
    Left = 200
    Top = 248
  end
  object tb_ped02s_pre: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 200
    Top = 176
    object tb_ped02s_preP2SCODEMP: TIntegerField
      FieldName = 'P2SCODEMP'
    end
    object tb_ped02s_preP2SCHAVE: TIntegerField
      FieldName = 'P2SCHAVE'
    end
    object tb_ped02s_preP2SCHAVE_ANO: TIntegerField
      FieldName = 'P2SCHAVE_ANO'
    end
    object tb_ped02s_preP2SITEM: TIntegerField
      FieldName = 'P2SITEM'
    end
    object tb_ped02s_preP2SCODSER: TFloatField
      FieldName = 'P2SCODSER'
    end
    object tb_ped02s_preP2SQTD: TFloatField
      FieldName = 'P2SQTD'
    end
    object tb_ped02s_preP2SPDESC01: TFloatField
      FieldName = 'P2SPDESC01'
    end
    object tb_ped02s_preP2SPDESC02: TFloatField
      FieldName = 'P2SPDESC02'
    end
    object tb_ped02s_preP2SPDESC03: TFloatField
      FieldName = 'P2SPDESC03'
    end
    object tb_ped02s_preP2SPRECO: TStringField
      FieldName = 'P2SPRECO'
    end
    object tb_ped02s_preP2SDESC_COMP: TStringField
      FieldName = 'P2SDESC_COMP'
      Size = 500
    end
    object tb_ped02s_preP2SCST: TStringField
      FieldName = 'P2SCST'
      Size = 3
    end
    object tb_ped02s_preP2SCSOSN: TFloatField
      FieldName = 'P2SCSOSN'
    end
    object tb_ped02s_preP2SBCISSQN: TFloatField
      FieldName = 'P2SBCISSQN'
    end
    object tb_ped02s_preP2SVISSQN: TFloatField
      FieldName = 'P2SVISSQN'
    end
    object tb_ped02s_preP2SALIQISSQN: TFloatField
      FieldName = 'P2SALIQISSQN'
    end
    object tb_ped02s_preP2SSITUACAO: TFloatField
      FieldName = 'P2SSITUACAO'
    end
    object tb_ped02s_preP2SPCOTAB: TFloatField
      FieldName = 'P2SPCOTAB'
    end
    object tb_ped02s_preP2SPCOCUS: TFloatField
      FieldName = 'P2SPCOCUS'
    end
    object tb_ped02s_preP2STOTDES: TFloatField
      FieldName = 'P2STOTDES'
    end
    object tb_ped02s_preP2SDESCRAT: TFloatField
      FieldName = 'P2SDESCRAT'
    end
    object tb_ped02s_preP2SDESCFIN_PERC: TFloatField
      FieldName = 'P2SDESCFIN_PERC'
    end
    object tb_ped02s_preP2SDESCFIN_VALOR: TFloatField
      FieldName = 'P2SDESCFIN_VALOR'
    end
    object tb_ped02s_preP2SBCINSS: TFloatField
      FieldName = 'P2SBCINSS'
    end
    object tb_ped02s_preP2SPREDINSS: TFloatField
      FieldName = 'P2SPREDINSS'
    end
    object tb_ped02s_preP2SVREDINSS: TFloatField
      FieldName = 'P2SVREDINSS'
    end
    object tb_ped02s_preP2SPREDIRRF: TFloatField
      FieldName = 'P2SPREDIRRF'
    end
    object tb_ped02s_preP2SVREDIRRF: TFloatField
      FieldName = 'P2SVREDIRRF'
    end
    object tb_ped02s_preP2SALIQIRRF: TFloatField
      FieldName = 'P2SALIQIRRF'
    end
    object tb_ped02s_preP2SCFOP_NF: TFloatField
      FieldName = 'P2SCFOP_NF'
    end
    object tb_ped02s_preP2SCFOP_ECF: TFloatField
      FieldName = 'P2SCFOP_ECF'
    end
    object tb_ped02s_preP2SCODVEN: TFloatField
      FieldName = 'P2SCODVEN'
    end
    object tb_ped02s_prePDNOME: TStringField
      FieldName = 'PDNOME'
      Size = 120
    end
    object tb_ped02s_prePDUND: TStringField
      FieldName = 'PDUND'
      Size = 3
    end
    object tb_ped02s_preP2SCSOSN_ORI2: TFloatField
      FieldName = 'P2SCSOSN_ORI'
    end
    object tb_ped02s_preVALOR_TOTAL2: TFloatField
      FieldName = 'VALOR_TOTAL'
    end
    object tb_ped02s_preP2SALIQINSS: TFloatField
      FieldName = 'P2SALIQINSS'
    end
    object tb_ped02s_preP2SPCOMIS: TFloatField
      FieldName = 'P2SPCOMIS'
    end
    object tb_ped02s_preP2SID_NEW: TFloatField
      FieldName = 'P2SID_NEW'
    end
    object tb_ped02s_preP2SID_PED01_NEW: TFloatField
      FieldName = 'P2SID_PED01_NEW'
    end
    object tb_ped02s_preP2IRRF_PERC: TFloatField
      FieldName = 'P2IRRF_PERC'
    end
    object tb_ped02s_preP2IRRF_VALOR: TFloatField
      FieldName = 'P2IRRF_VALOR'
    end
    object tb_ped02s_preP2CSLL_PERC: TFloatField
      FieldName = 'P2CSLL_PERC'
    end
    object tb_ped02s_preP2CSLL_VALOR: TFloatField
      FieldName = 'P2CSLL_VALOR'
    end
    object tb_ped02s_preP2SID_NEW_101: TFloatField
      FieldName = 'P2SID_NEW_101'
    end
  end
  object mem_meses: TRxMemoryData
    FieldDefs = <>
    BeforePost = mem_mesesBeforePost
    Left = 648
    Top = 32
    object mem_mesesfat_mes: TIntegerField
      DisplayLabel = 'M'#234's/Vcto'
      FieldName = 'fat_mes_vcto'
    end
    object mem_mesesfat_ano: TIntegerField
      DisplayLabel = 'Ano/Vcto'
      FieldName = 'fat_ano_vcto'
    end
    object mem_mesesfat_mes_comp: TIntegerField
      DisplayLabel = 'm'#234's Competencia'
      FieldName = 'fat_mes_comp'
    end
    object mem_mesesfat_ano_comp: TIntegerField
      DisplayLabel = 'Ano Competencia'
      FieldName = 'fat_ano_comp'
    end
  end
  object src_meses: TDataSource
    DataSet = mem_meses
    Left = 608
    Top = 32
  end
  object cds_aliquotas: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 229
    Top = 193
    object cds_aliquotastipo_reg: TIntegerField
      FieldName = 'tipo_reg'
    end
    object cds_aliquotasal_tabicm: TStringField
      FieldName = 'al_tabicm'
      Size = 1
    end
    object cds_aliquotasal_aliqredut: TFloatField
      FieldName = 'al_aliqredut'
    end
    object cds_aliquotasal_IcmsTrib: TFloatField
      FieldName = 'al_IcmsTrib'
    end
    object cds_aliquotasal_icmsRet: TIntegerField
      FieldName = 'al_icmsRet'
    end
    object cds_aliquotasal_stIcmsCred: TFloatField
      FieldName = 'al_stIcmsCred'
    end
    object cds_aliquotasal_stIcmsDeb: TFloatField
      FieldName = 'al_stIcmsDeb'
    end
    object cds_aliquotasal_stIVA_Ina: TFloatField
      FieldName = 'al_stIVA_Ina'
    end
    object cds_aliquotasal_stIVA_Neg: TFloatField
      FieldName = 'al_stIVA_Neg'
    end
    object cds_aliquotasCfo_Indus_Ret: TIntegerField
      FieldName = 'Cfo_Indus_Ret'
    end
    object cds_aliquotasCfo_Indus_Trib: TIntegerField
      FieldName = 'Cfo_Indus_Trib'
    end
    object cds_aliquotasCfo_Indus_Isento: TIntegerField
      FieldName = 'Cfo_Indus_Isento'
    end
    object cds_aliquotasCfo_rev_Ret: TIntegerField
      FieldName = 'Cfo_rev_Ret'
    end
    object cds_aliquotasCfo_rev_Trib: TIntegerField
      FieldName = 'Cfo_rev_Trib'
    end
    object cds_aliquotasCfo_rev_Isento: TIntegerField
      FieldName = 'Cfo_rev_Isento'
    end
    object cds_aliquotasCfo_SubEcf_Ret: TIntegerField
      FieldName = 'Cfo_SubEcf_Ret'
    end
    object cds_aliquotasCfo_SubEcf_Trib: TIntegerField
      FieldName = 'Cfo_SubEcf_Trib'
    end
    object cds_aliquotasCfo_SubEcf_Isento: TIntegerField
      FieldName = 'Cfo_SubEcf_Isento'
    end
    object cds_aliquotasal_cofins: TFloatField
      FieldName = 'al_cofins'
    end
    object cds_aliquotasmodBcST: TIntegerField
      FieldName = 'modBcST'
    end
    object cds_aliquotasal_stAliqRed: TFloatField
      FieldName = 'al_stAliqRed'
    end
    object cds_aliquotasal_inss: TFloatField
      FieldName = 'al_inss'
    end
    object cds_aliquotasal_inss_pred: TFloatField
      FieldName = 'al_inss_pred'
    end
    object cds_aliquotasal_irrf: TFloatField
      FieldName = 'al_irrf'
    end
    object cds_aliquotasal_irrf_pred: TFloatField
      FieldName = 'al_irrf_pred'
    end
    object cds_aliquotasal_repasse: TFloatField
      FieldName = 'al_repasse'
    end
    object cds_aliquotasal_issqn: TFloatField
      FieldName = 'al_issqn'
    end
    object cds_aliquotascfo_servico: TIntegerField
      FieldName = 'cfo_servico'
    end
    object cds_aliquotasal_pis: TFloatField
      FieldName = 'al_pis'
    end
    object cds_aliquotasal_credsn: TFloatField
      FieldName = 'al_credsn'
    end
    object cds_aliquotasal_stIVA_Pos: TFloatField
      FieldName = 'al_stIVA_Pos'
    end
    object cds_aliquotasal_combate_pobreza: TFloatField
      FieldName = 'al_combate_pobreza'
    end
    object cds_aliquotasal_icmscred_destino: TFloatField
      FieldName = 'al_icmscred_destino'
    end
    object cds_aliquotasal_icms_destino: TFloatField
      FieldName = 'al_icms_destino'
    end
    object cds_aliquotasdeduzir_icms_bc_pis_cofins: TFloatField
      FieldName = 'deduzir_icms_bc_pis_cofins'
    end
    object cds_aliquotasrequer_pedori: TIntegerField
      FieldName = 'requer_pedori'
    end
    object cds_aliquotasal_IcmsTribDesonera: TFloatField
      FieldName = 'al_IcmsTribDesonera'
    end
    object cds_aliquotasal_ibs_uf: TFloatField
      FieldName = 'al_ibs_uf'
    end
    object cds_aliquotasal_ibs_mun: TFloatField
      FieldName = 'al_ibs_mun'
    end
    object cds_aliquotasal_cbs: TFloatField
      FieldName = 'al_cbs'
    end
  end
  object cds_chave_fat: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 520
    Top = 252
  end
  object src_aliquotas: TDataSource
    DataSet = cds_aliquotas
    Left = 262
    Top = 193
  end
end
