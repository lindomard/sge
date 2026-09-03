object Frm_Evento: TFrm_Evento
  Left = 159
  Top = 154
  Width = 798
  Height = 581
  Caption = 'Eventos do Sistema'
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
    Width = 782
    Height = 171
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 46
      Top = 29
      Width = 68
      Height = 13
      Caption = 'Per'#237'odo de:'
    end
    object Label3: TLabel
      Left = 206
      Top = 29
      Width = 8
      Height = 13
      Caption = #224
    end
    object Label4: TLabel
      Left = 11
      Top = 52
      Width = 127
      Height = 13
      Caption = 'Pesquisar qual tabela:'
    end
    object lbl_codigo: TLabel
      Left = 1
      Top = 74
      Width = 139
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'C'#243'digo:'
      Visible = False
    end
    object lbl_numnf: TLabel
      Left = 308
      Top = 74
      Width = 86
      Height = 13
      Caption = 'N'#250'mero da NF:'
      Visible = False
    end
    object lbl_nome: TLabel
      Left = 0
      Top = 96
      Width = 141
      Height = 13
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'Nome do Produto:'
      Visible = False
    end
    object MCODUSR: TEdit
      Left = 121
      Top = 4
      Width = 56
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 0
      OnExit = MCODUSRExit
      OnKeyPress = MCODUSRKeyPress
    end
    object NOMUSR: TEdit
      Left = 180
      Top = 3
      Width = 306
      Height = 21
      Enabled = False
      ParentColor = True
      TabOrder = 1
      Text = 'Todos...'
    end
    object MDT1: TMaskEdit
      Left = 121
      Top = 26
      Width = 74
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 2
      Text = '  /  /    '
      OnExit = MDT1Exit
    end
    object MDT2: TMaskEdit
      Left = 229
      Top = 27
      Width = 74
      Height = 19
      Ctl3D = False
      EditMask = '!99/99/9999;1; '
      MaxLength = 10
      ParentCtl3D = False
      TabOrder = 3
      Text = '  /  /    '
      OnExit = MDT2Exit
    end
    object NOMTAB: TComboBox
      Left = 145
      Top = 48
      Width = 338
      Height = 21
      ItemHeight = 13
      TabOrder = 4
      Text = 'Todas'
      OnClick = NOMTABClick
      OnExit = NOMTABExit
      Items.Strings = (
        'Todas'
        'Tabela de Cheques'
        'Tabela de Clientes'
        'Tabela de Duplicatas a Pagar'
        'Tabela de Duplicatas a Receber'
        'Tabela de Estados'
        'Tabela de Fluxo de Caixa'
        'Tabela de Fornecedores'
        'Tabela de Notas de Entradas'
        'Tabela de Notas de Saidas'
        'Tabela de Ordem de Servi'#231'o'
        'Tabela de Parametros'
        'Tabela de Pedidos de Clientes'
        'Tabela de Pedidos de Fornecedores'
        'Tabela de Plano de Vendas'
        'Tabela de Produtos'
        'Tabela de Romaneios'
        'Tabela de Vendedores'
        'Baixa de Duplicatas a Pagar'
        'Baixa de Duplicatas a Receber'
        'Tabela de Usuarios'
        'Tabela de Licitacoes')
    end
    object RG_TIPO: TRadioGroup
      Left = 610
      Top = 7
      Width = 168
      Height = 67
      Caption = 'Tipos de Eventos:'
      ItemIndex = 0
      Items.Strings = (
        '&Todos'
        '&Altera'#231#245'es'
        '&Exclus'#245'es')
      TabOrder = 6
    end
    object BitBtn1: TBitBtn
      Left = 273
      Top = 140
      Width = 225
      Height = 25
      Caption = 'Atualizar as Informa'#231#245'es'
      TabOrder = 7
      OnClick = BitBtn1Click
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
    object CODIGO: TEdit
      Left = 145
      Top = 72
      Width = 159
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 5
      Visible = False
      OnExit = CODIGOExit
    end
    object edt_numnf: TEdit
      Left = 411
      Top = 72
      Width = 70
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 8
      Visible = False
      OnExit = edt_numnfExit
    end
    object edt_nome: TEdit
      Left = 145
      Top = 93
      Width = 159
      Height = 19
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 9
      Visible = False
      OnExit = CODIGOExit
    end
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 171
    Width = 782
    Height = 331
    Align = alClient
    Caption = 'Eventos Selecionados'
    TabOrder = 1
    object DBGrid1: TDBGrid
      Left = 2
      Top = 15
      Width = 778
      Height = 230
      Align = alClient
      DataSource = Srv_Evento
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'DATA'
          Width = 66
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'HORA'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'evento'
          Width = 155
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODIGO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomtab'
          Width = 179
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nomusr'
          Width = 154
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODUSR'
          Width = 97
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CODNOV'
          Visible = True
        end>
    end
    object pnl_Pedido: TPanel
      Left = 2
      Top = 245
      Width = 778
      Height = 84
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Courier New'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Visible = False
      object m_informacao: TDBMemo
        Left = 1
        Top = 1
        Width = 776
        Height = 82
        Align = alClient
        DataField = 'Motivo'
        DataSource = Srv_Evento
        TabOrder = 0
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 502
    Width = 782
    Height = 41
    Align = alBottom
    TabOrder = 2
    object BitBtn2: TBitBtn
      Left = 3
      Top = 4
      Width = 217
      Height = 36
      Caption = '&Ver Detalhes'
      TabOrder = 0
      OnClick = BitBtn2Click
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
    end
    object bbImprimir: TBitBtn
      Left = 295
      Top = 4
      Width = 217
      Height = 36
      Caption = '&Imprimir'
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
    object BitBtn4: TBitBtn
      Left = 570
      Top = 4
      Width = 217
      Height = 36
      Caption = '&Sair'
      TabOrder = 2
      OnClick = BitBtn4Click
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
  object RLReport1: TRLReport
    Left = 231
    Top = 661
    Width = 794
    Height = 1123
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    Visible = False
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 88
      BandType = btHeader
      object RLLabel1: TRLLabel
        Left = 263
        Top = 35
        Width = 229
        Height = 16
        Caption = 'Relatorio de Eventos do Sistema SGE.'
      end
      object RLSystemInfo1: TRLSystemInfo
        Left = 604
        Top = 18
        Width = 112
        Height = 16
        Info = itLastPageNumber
      end
      object RLLabel3: TRLLabel
        Left = 544
        Top = 18
        Width = 60
        Height = 16
        Caption = 'Pagina..: '
      end
      object RLSystemInfo2: TRLSystemInfo
        Left = 59
        Top = 18
        Width = 39
        Height = 16
      end
      object RLLabel4: TRLLabel
        Left = 4
        Top = 19
        Width = 47
        Height = 16
        Caption = 'Data...:'
      end
      object RLLabel6: TRLLabel
        Left = 3
        Top = 54
        Width = 712
        Height = 16
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '-------------------------------------------------'
      end
      object RLLabel7: TRLLabel
        Left = 2
        Top = 77
        Width = 712
        Height = 16
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '-------------------------------------------------'
      end
      object RLLabel8: TRLLabel
        Left = 4
        Top = 68
        Width = 55
        Height = 16
        Caption = 'D  a  t  a'
      end
      object RLLabel9: TRLLabel
        Left = 88
        Top = 68
        Width = 55
        Height = 16
        Caption = 'H  o  r  a'
      end
      object RLLabel10: TRLLabel
        Left = 264
        Top = 68
        Width = 89
        Height = 16
        Caption = 'Tipo de Evento'
      end
      object RLLabel11: TRLLabel
        Left = 478
        Top = 67
        Width = 98
        Height = 16
        Caption = 'Nome da Tabela'
      end
      object RLLabel12: TRLLabel
        Left = 6
        Top = 1
        Width = 712
        Height = 16
        Caption = 
          '----------------------------------------------------------------' +
          '----------------------------------------------------------------' +
          '-------------------------------------------------'
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 126
      Width = 718
      Height = 136
      DataFields = 'nomusr'
      object RLBand2: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 33
        BandType = btColumnHeader
        object RLDBText1: TRLDBText
          Left = 102
          Top = 11
          Width = 59
          Height = 16
          DataField = 'CODUSR'
        end
        object RLLabel2: TRLLabel
          Left = 4
          Top = 11
          Width = 95
          Height = 16
          Caption = 'Cod. Usuario...:'
        end
        object RLDBText2: TRLDBText
          Left = 204
          Top = 11
          Width = 47
          Height = 16
          DataField = 'nomusr'
          BeforePrint = RLDBText2BeforePrint
        end
      end
      object RLBand3: TRLBand
        Left = 0
        Top = 33
        Width = 718
        Height = 19
        object RLDBText3: TRLDBText
          Left = 4
          Top = 2
          Width = 38
          Height = 16
          DataField = 'DATA'
          Holder = RLLabel8
        end
        object RLDBText4: TRLDBText
          Left = 88
          Top = 2
          Width = 41
          Height = 16
          DataField = 'HORA'
          Holder = RLLabel9
        end
        object RLDBText5: TRLDBText
          Left = 264
          Top = 2
          Width = 41
          Height = 16
          DataField = 'evento'
          Holder = RLLabel10
        end
        object RLDBText6: TRLDBText
          Left = 478
          Top = 2
          Width = 47
          Height = 16
          DataField = 'nomtab'
          Holder = RLLabel11
        end
      end
    end
    object RLBand4: TRLBand
      Left = 38
      Top = 262
      Width = 718
      Height = 16
      BandType = btFooter
      object RLLabel5: TRLLabel
        Left = 2
        Top = 0
        Width = 456
        Height = 16
        Caption = 
          '----------------------------------------------------------------' +
          '-------------------------------------------------'
      end
      object RLSystemInfo3: TRLSystemInfo
        Left = 484
        Top = 0
        Width = 60
        Height = 16
        Info = itFullDate
      end
    end
  end
  object RLDraftFilter1: TRLDraftFilter
    Left = 600
    Top = 88
  end
  object Qry_T: TQuery
    DatabaseName = 'SG_ASSOC'
    Left = 648
    Top = 96
  end
  object Qr_Evento: TQuery
    OnCalcFields = Qr_EventoCalcFields
    DatabaseName = 'SG_ASSOC'
    SQL.Strings = (
      'select (PDSTATUS-PDSTATUS)+001 AS CODTAB,'
      '       PDSTATUS AS STATUS,'
      '       PDDTALT  AS DATA,'
      '       PDHRALT  AS HORA,'
      '       PDCODNOV AS CODNOV,'
      '       '#39'                                '#39'  AS CODIGO,'
      '       PDCODUSR AS CODUSR FROM OLD_CADPRO')
    Left = 33
    Top = 119
    object Qr_EventoDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object Qr_EventoHORA: TStringField
      DisplayLabel = 'Hora'
      FieldName = 'HORA'
      Size = 10
    end
    object Qr_EventoCODNOV: TFloatField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODNOV'
    end
    object Qr_EventoCODUSR: TFloatField
      DisplayLabel = 'C'#243'digo Usu'#225'rio'
      FieldName = 'CODUSR'
    end
    object Qr_Eventonomtab: TStringField
      DisplayLabel = 'Nome da Tabela'
      FieldKind = fkCalculated
      FieldName = 'nomtab'
      Size = 30
      Calculated = True
    end
    object Qr_Eventonomusr: TStringField
      DisplayLabel = 'Nome do Usu'#225'rio'
      FieldKind = fkCalculated
      FieldName = 'nomusr'
      Size = 30
      Calculated = True
    end
    object Qr_Eventoevento: TStringField
      DisplayLabel = 'Tipo de Evento'
      FieldKind = fkCalculated
      FieldName = 'evento'
      Size = 40
      Calculated = True
    end
    object Qr_EventoSTATUS: TFloatField
      FieldName = 'STATUS'
      Origin = 'SG_ASSOC.OLD_CADPRO.PDSTATUS'
    end
    object Qr_EventoCODTAB: TFloatField
      FieldName = 'CODTAB'
      Origin = 'SG_ASSOC.OLD_CADPRO.PDSTATUS'
    end
    object Qr_EventoCODIGO: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'CODIGO'
      FixedChar = True
      Size = 32
    end
    object Qr_EventoMotivo: TStringField
      FieldKind = fkCalculated
      FieldName = 'Motivo'
      Size = 5000
      Calculated = True
    end
    object Qr_EventoChave: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Chave'
      Calculated = True
    end
  end
  object Srv_Evento: TDataSource
    DataSet = Qr_Evento
    Left = 73
    Top = 130
  end
end
